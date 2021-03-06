require 'spec_helper'

describe Book do

	before :each do
		@book = Book.new "Title", "Author", "Category"
	end

	describe "#new" do
		it "returns a new book object" do
			@book.should be_an_instance_of Book
		end
		it "throws an ArgumentError when given fewer than 3 parameters" do
			lambda { Book.new "Title", "Author"}.should raise_exception ArgumentError
		end
	end

	describe "#title" do
		it "returns the correct title" do
			@book.title.should eql "Title"
		end

		it "returns the correct author" do
			@book.author.should eql "Author"
		end

		it "returns the correct category" do
			@book.category.should eql "Category"
		end		
	end

	it "returns all the books in a given category" do
		@lib.get_books_in_category(:development).length.should == 2
	end
end