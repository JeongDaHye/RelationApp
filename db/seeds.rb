date=Date.new(2018, 9, 22)

User.create(email: 'admin@rapp.com', password: '123123')
Profile.create(user: User.last, name: 'admin', mobile: '01011111111',
              address: '서울특별시', birth: date, role: 'admin')

User.create(email: 'editor1@rapp.com', password: 'editor1')
Profile.create(user: User.last, name: 'Editor1', mobile: '01022222222',
              address: '서울특별시', birth: date, role: 'editor')

User.create(email: 'editor2@rapp.com', password: 'editor2')
Profile.create(user: User.last, name: 'Editor2', mobile: '01033333333',
              address: '인천광역시', birth: date, role: 'editor')

User.create(email: 'editor3@rapp.com', password: 'editor3')
Profile.create(user: User.last, name: 'Editor3', mobile: '01044444444',
              address: '경기도', birth: date, role: 'editor')