class Course < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  # message: "verifier que votre nom numéro est 10 chiffres"}
  validates  :content, :user_id, :level_name, :material_name, :statut_name, presence: true
  validates :title, length: 
                    { minimum:10, maximum: 150,
                      message:"Verifiez que le titre n'est pas trop long. la longueur du titre est limité 150 caracteres"}

  #Slugged concern
  include ItemsSlugged
end
