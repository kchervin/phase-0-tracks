us_states = {
    california: {
        nickname: 'golden state',
        governor: 'jerry brown',
        major_cities: [
            'san francisco',
            'san diego']
    },
    new_york: {
        nickname: 'the empire state',
        governor: 'andrew cuomo',
        major_cities: [
            'new york city',
            'albany',
            'syracuse']
    }
}

p us_states[:california][:nickname]
us_states[:california][:major_cities].push('los angeles')
p us_states[:california][:major_cities]
us_states[:california][:major_cities][2] = ('santa monica')
p us_states[:california][:major_cities]
p us_states[:new_york][:major_cities][0..1]