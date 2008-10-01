class Typo
  class Textfilter
    class ErbFhylter < TextFilterPlugin::Markup
      plugin_display_name "ErbFhylter"
      plugin_description 'give your posts the ERb engine.'

      def self.help_text
        %{Learn Ruby !}
      end

      def self.filtertext(blog,content,text,params)
        render :inline => (text.gsub(%r{</?notextile>}, ''))
      end
    end
  end
end
