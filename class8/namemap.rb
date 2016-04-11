tts = [ { id: 1, name: 'Walid' }, { id: 2, name: 'Robert' }, { id: 3, name: 'Jackie' }]

def nameprint(thing)
  thing.map { |thing| p :name }
end

nameprint(tts)
