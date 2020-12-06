module Translator
  extend ActiveSupport::Concern

  def week_day(day)
    if day == 'Sunday'
      return 'Domingo'
    elsif day == 'Monday'
      return 'Segunda-feira'
    elsif day == 'Tuesday'
      return 'Terça-feira'
    elsif day == 'Wednesday'
      return 'Quarta-feira'
    elsif day == 'Thursday'
      return 'Quinta-feira'
    elsif day == 'Friday'
      return 'Sexta-feira'
    elsif day == 'Saturday'
      return 'Sábado'
    end
  end

  def mon(month)
    if month == 'January'
      return 'Janeiro'
    elsif month == 'February'
      return 'Fevereiro'
    elsif month == 'March'
      return 'Março'
    elsif month == 'April'
      return 'Abril'
    elsif month == 'May'
      return 'Maio'
    elsif month == 'June'
      return 'Junho'
    elsif month == 'July'
      return 'Julho'
    elsif month == 'August'
      return 'Agosto'
    elsif month == 'September'
      return 'Setembro'
    elsif month == 'October'
      return 'Outubro'
    elsif month == 'November'
      return 'Novembro'
    elsif month == 'December'
      return 'Dezembro'
    end
  end
end
