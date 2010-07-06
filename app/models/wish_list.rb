class WishList < ActiveRecord::Base
  belongs_to :donor_organization
  has_many :wishes

  validates_presence_of :title

  def file=(file)
    self.save!
    rows = read_csv(file.path)
    parse_csv(rows)
  end

  private

  def read_csv(file = nil)
    FasterCSV.read(file, :headers =>  true)
  end

  def parse_csv(rows)
    rows.each do |row|
      wishes.create(:name                 => row['Name'],
                    :age                  => row['Age'],
                    :sex                  => row['Sex'],
                    :gift_1               => row['Gift 1'],
                    :gift_1_delivered_on  => row['Gift 1 delivered'],
                    :gift_1_thank_you_to  => row['THANK YOU TO....'],
                    :gift_2               => row['Gift 2'],
                    :gift_2_delivered_on  => row['Gift 2 delivered'],
                    :gift_2_thank_you_to  => row['THANK YOU TO....'],
                    :notes                => row['Size/Color'])
    end
  end
end
