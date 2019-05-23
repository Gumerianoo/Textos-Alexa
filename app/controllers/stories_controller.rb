require "nokogiri"
include REXML
class StoriesController < ApplicationController

  def new
    @story = Story.new
    @options = @story.options.build
    5.times do |i|
      @options = @options.options.build
    end
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.root {
          xml.story {
            xml.title @story.title
            xml.main_text @story.main_text
            xml.options {
              @story.options.each do |option|
                xml.option {
                  xml.title option.title
                  xml.main_text option.main_text
                  xml.options {
                    option.options.each do |option|
                      xml.option {
                        xml.title option.title
                        xml.main_text option.main_text
                        xml.options {
                          option.options.each do |option|
                            xml.option {
                              xml.title option.title
                              xml.main_text option.main_text
                              xml.options {
                                option.options.each do |option|
                                  xml.option {
                                    xml.title option.title
                                    xml.main_text option.main_text
                                    xml.options {
                                      option.options.each do |option|
                                        xml.option {
                                          xml.title option.title
                                          xml.main_text option.main_text
                                          xml.options {
                                            option.options.each do |option|
                                              xml.option {
                                                xml.title option.title
                                                xml.main_text option.main_text
                                              }
                                            end
                                          }
                                        }
                                      end
                                    }
                                  }
                                end
                              }
                            }
                          end
                        }
                      }
                    end
                  }
                }
              end
            }
          }
        }
      end
      #redirect_to new_story_path if @story.save
      render xml: builder.to_xml
    end
  end

  def story_params
    #params.require(:story).permit(:title, :main_text, options_attributes: [])
    #params.require(:story).permit(:title, :main_text)
    params.require(:story).permit!
  end

end
