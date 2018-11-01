require 'features_helper'

RSpec.describe 'List books' do
  let(:repository) { BookRepository.new }
  before do
    repository.clear

    repository.create(title: 'PoEAA', author: 'Martin Fowler')
    repository.create(title: 'TDD',   author: 'Kent Beck')
    repository.create(title: 'Tsasdasd',   author: 'Keasdasdnt Beck')
  end

  it 'displays each book on the page' do
    visit '/books'

    within '#books' do
      expect(page).to have_selector('.book', count: 3), 'Expected to find 3 books'
    end
  end
end
