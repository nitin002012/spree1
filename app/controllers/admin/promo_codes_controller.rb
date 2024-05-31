# app/controllers/admin/promo_codes_controller.rb

module Admin
  class PromoCodesController < ApplicationController
    require 'csv'

    def import_form
      # Renders the form for CSV file upload
    end

    def import
      if params[:file].nil?
        flash[:error] = "Please upload a CSV file."
        redirect_to import_promo_codes_form_path
        return
      end

      begin
        CSV.foreach(params[:file].path, headers: true) do |row|
          promo_code = row['code']
          description = row['description']
          discount = row['discount']
          expiration_date = row['expiration_date']

          Promotion.find_or_create_by!(code: promo_code) do |promotion|
            promotion.description = description
            promotion.discount = discount
            promotion.expiration_date = expiration_date
          end
        end
        flash[:success] = "Promo codes imported successfully."
      rescue => e
        flash[:error] = "There was an error processing the file: #{e.message}"
      end

      redirect_to import_promo_codes_form_path
    end
  end
end
