class PagesController < ApplicationController
  def index1

    @uploaded_file = params[:csv_file]
    uploaded_file1 = params[:csv_file]
    File.open(Rails.root.join('public', 'uploads', uploaded_file1.original_filename), 'wb') do |file2|
      file2.write(uploaded_file1.read)
    end



    @title="create page"
    if @uploaded_file.original_filename=~ /\.csv\z/

      @file1 = MyFile1.create(
      file_name: @uploaded_file.original_filename,
      file_path: Rails.root.join('public', 'uploads', uploaded_file1.original_filename),
      file_size: @uploaded_file.size.to_s+"bytes"
        )
      puts "file uploaded #{@file1.file_name}"
      @els = "file uploaded #{@file1.file_name}"

    else
      puts "The file is not uploaded is not a csv file"

    end
    if @file1.present?
      File.open(( @uploaded_file.original_filename), 'wb') do |file|
        file.write(@uploaded_file.read)
        puts "file 1 path is here #{@file1.file_path}"
        puts __FILE__
        puts File.dirname(__FILE__)
        puts File.expand_path(File.dirname(__FILE__))
      end

      flash[:success] = "File uploaded successfully!"
      redirect_to "/admin/promotions"
    else
      flash[:error] = "Please select a file to upload. or Please import a valid File"
      redirect_to "/admin/promotions/promo"
    end
  end
end
