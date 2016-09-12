module TelegramBot
  module Types

    class InlineQueryResultDocument < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :title                  , String
      attribute :caption                , String
      attribute :document_url           , String
      attribute :mime_type              , String
      attribute :description            , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end