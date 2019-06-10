
module PdfHelper
    # require "docx"

    def create_ac_letter_spa_pdf(user, logos = true)
        # binding.pry
        Prawn::Document.new(:page_size => 'A4', :info=> { :Title => "Carta de aceptación",
                                                   :Author => "ETSIT-UPM",
                                                   :Subject => "Carta de aceptación",
                                                   :CreationDate => Time.now }) do
             font "Helvetica"
             def header(logos)
                fill_color "FFFFFF"
                rectangle [-40, 810], 632, 60
                fill
                if logos
                  image Rails.root.join("app/assets/images/logoescuela.jpg"), :width => 130, :at => [400, 790]
                  image Rails.root.join("app/assets/images/logoUPM.jpg"), :width => 50, :at => [-10, 790]
                end
                fill_color "4664A2"
                move_down 56
                text "UNIVERSIDAD POLITÉCNICA DE MADRID" , :align => :center, :size => 12
                text "ESCUELA TÉCNICA SUPERIOR DE INGENIEROS DE TELECOMUNICACIÓN" , :align => :center, :size => 12

                fill_color "000000"
            end
            header(logos)
             # text "<i>International Office</i>" , :align => :right, :size => 11, :inline_format => true
             # text "<i>ETSIT-UPM</i>" , :align => :right, :size => 11, :inline_format => true
             sap = user.student_application_form
             move_down 20
             table([
                ["<u>ALUMNO:</u>","<b>#{user.family_name.upcase} #{user.first_name}</b>"],
                ["<u>UNIVERSIDAD DE DESTINO:</u>", "<b>#{sap.inst_sending_name}</b>"],
                ["<u>PROGRAMA:</u>", "<b>#{sap.programme}</b>"],
                ["<u>PERIODO DE ESTANCIA:</u>", "<b>#{sap.academic_year}</b>"]],
                 :width => 525, :cell_style => { :inline_format => true, :size => 14,  :border_width => 0  })
             move_down 40
             text "<b><u>SUBJECT:</u>  Acceptance Letter</b>" , :inline_format => true, :align => :left, :size => 16
             move_down 40
             text PdfHelper::get_time_and_place , :align => :right, :size => 14
             move_down 40
             text "Dear #{user.first_name}," , :align => :left, :size => 14
             move_down 20

             year = sap.academic_year
             result = PdfHelper::calculate_year(year)


             text "We are pleased to let you know that you have been admitted to the <i>Escuela Técnica Superior de Ingenieros de Telecomunicación</i> of the <i>Universidad Politécnica de Madrid</i> in the framework of #{sap.programme} Programme to follow courses during #{result}." , :inline_format => true, :align => :justify, :size => 14
             # text "We are pleased to let you know that you have been admitted to the <i>Escuela Técnica Superior de Ingenieros de Telecomunicación</i> of the <i>Universidad Politécnica de Madrid</i> in the framework of #{sap.programme} Programme to follow courses during the fall semester of next academic year 2018-2019, starting in the beginning of September 2018 and finishing at the end of January 2019. " , :inline_format => true, :align => :justify, :size => 14
             move_down 20
             text "More information regarding your stay in Madrid will be sent closer to your arrival date. In the meantime, please do not hesitate to contact the International Office if you have any questions." , :align => :justify, :size => 14
             move_down 50
             text "Yours sincerely," , :align => :left, :size => 14
             move_down 100
             text "Luis Salgado", :align => :left, :size => 14
             text "Vice-Dean for International Relations and Corporate Partnership", :align => :left, :size => 14
             text "International Office ETSIT - UPM", :align => :left, :size => 14

        end.render
    end

    def PdfHelper::get_time_and_place
        now = Time.now
      "Madrid, #{now.strftime("%B #{now.day.ordinalize} %Y")}"
    end

    def PdfHelper::calculate_year(year)
      result = year
      begin
        matched = year.match(/(\d{4})-(\d{4})\: (\w+)/)
        beginning = matched[1]
        finalization = matched[2]
        period = matched[3].downcase
        actual_period = period
        actual_beginning = beginning
        actual_finalization = finalization
        if period == "spring"
          actual_period = "spring semester of next academic year"
          actual_beginning = "January #{finalization}"
          actual_finalization = "July #{finalization}"
        elsif period == "fall"
          actual_period = "fall semester of next academic year"
          actual_beginning = "September #{beginning}"
          actual_finalization = "January #{finalization}"
        else
          actual_period = "next academic year"
          actual_beginning = "September #{beginning}"
          actual_finalization = "July #{finalization}"
        end
        result =  "the #{actual_period} #{beginning}-#{finalization}, starting in the beginning of #{actual_beginning} and finishing at the end of #{actual_finalization}"
      rescue
      end
      result
    end

end