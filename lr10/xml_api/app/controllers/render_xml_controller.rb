# frozen_string_literal: true

# class that creates prime twins
class RenderXmlController < ApplicationController
  before_action :parse_params, only: :show

  def show
    result

    data = if @res_x.empty?
             { message: "Неверные параметры запроса" }
           else
             @res_x.map { |elem| { first: elem, second: elem * elem } }
           end

    respond_to do |format|
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end

  private

  def parse_params
    @input = params[:input] 
  end

  def result
    @res_x = Array.new
    (1..@input.to_i).each do |x|
      if (x**2).to_s == (x**2).to_s.reverse
        @res_x.push(x)
      end
    end
  end


end
