# Python script that grabs the asset names of audio files that are sorted as "Music"

import os
import yaml # pip install pyyaml
import glob
from pathlib import Path
import itertools

# Ensure file location is current directory
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# Make sure we have NXTale.yyp
if not os.path.exists('../NXTALE.yyp'):
  print('Couldn\'t find NXTALE.yyp!')
  exit(1)

# Grab all of the music folders
files = glob.glob("**/*.yy", root_dir="../sounds/")
print(f"{len(files)} audio files")

# Newtonsoft's nonstandard JSON output can be parsed as yaml

music_paths = []

for file in files:
  with open(os.path.join('../sounds/', file), 'r') as f:
    data = yaml.safe_load(f)
    if 'Sounds/Music' in data['parent']['path']:
      music_paths.append((Path(file).stem, data['parent']['path']))

music_paths.sort(key=lambda x: x[1])

print(f"{len(music_paths)} music files found")

for key, group in itertools.groupby(music_paths, key=lambda x: x[1]):
  folder: str = key

  if folder.startswith('folders/Sounds/Music/'):
    folder = folder[len('folders/Sounds/Music/'):]

  if folder.endswith('.yy'):
    folder = folder[:-len('.yy')]

  print(folder)

  for file in group:
    print('  ' + file[0])
