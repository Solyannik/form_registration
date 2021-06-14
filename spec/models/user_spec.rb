require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.create(name: 'Солянник Ольга Григорьевна', email: 'solyannik@mail.ru', password: '123456') }

  it "should be User info is savable in the database" do
    expect(user).to be_valid
    expect(user.name).to eq('Солянник Ольга Григорьевна')
    expect(user.email).to eq('solyannik@mail.ru')
    expect(user.password).to eq('123456')
  end

  it "rejects invalid params" do
  	user.update(name: '')

  	expect(user).not_to be_valid
   end
end
