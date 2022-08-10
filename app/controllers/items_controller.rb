class ItemsController < ApplicationController

    def index
        items = Item.all.order(name: :desc)
        render json: items, include: :user
    end
end
