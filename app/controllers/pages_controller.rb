class PagesController < ApplicationController
  def index1
    @uploaded_file = params[:csv_file]

    @title="create page"
    if @uploaded_file.original_filename=~ /\.csv\z/

      @file1 = MyFile1.create(
      file_name: @uploaded_file.original_filename,
      file_path: @uploaded_file.path,
      file_size: "40kb"
        )
      puts "file uploaded #{@file1.file_name}"
      @els = "file uploaded #{@file1.file_name}"

    else
      puts "The file is not uploaded is not a csv file"

    end
    if @file1.present?
      File.open(( @uploaded_file.original_filename), 'wb') do |file|
        file.write(@uploaded_file.read)
      end

      flash[:success] = "File uploaded successfully!"
      redirect_to "/admin/promotions"
    else
      flash[:error] = "Please select a file to upload. or Please import a valid File"
      redirect_to a_path
    end
  end
end
