# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Orient Triton
# Hamilton Khaki Field King
# Glycine Airman GMT
# Citizen Promaster Nighthawk
# Bulova Lunar Pilot
# Casio G-Shock GW-B5600HR-1
# Zelos Swordfish 40 SS Frost
# Zelos Swordfish 40 Bronze Meteorite
# Zelos Hammerhead 3 Burnt Orange
# Zelos Mako V3 Titanium Storm Grey
# Zelos Skyraider 2 Ti Forged Carbon
# Hemel Airfoil Panda
# Christopher Ward C63 Sealander GMT
# Zelos Comet Tuxedo
# Zelos Hammerhead 3 Bronze SW Limited Edition
# Formex Essence Leggera FortyOne Electric Blue
# Baltany Vintage Military Chronograph
# Sinn 903 St
# RZE Resolute Workbench Edition
# Helm Vanuatu
# Christopher Ward Twelve (Ti) Astral Blue
# Zelos Aurora Field Damascus
# Studio Underd0g Field Steffany Blue
# Zelos Blacktip Ti Aventurine
# Zelos Eagle 2 Ti Arctic

watch_data = [
  { brand: 'Orient', name: 'Triton', image_path: 'watches/triton.jpeg' },
  { brand: 'Hamilton', name: 'Khaki Field King', image_path: 'watches/king.jpeg' },
  { brand: 'Glycine', name: 'Airman GMT', image_path: 'watches/airman.jpeg' },
  { brand: 'Citizen', name: 'Promaster Nighthawk', image_path: 'watches/nighthawk.jpeg' },
  { brand: 'Bulova', name: 'Lunar Pilot', image_path: 'watches/lunar_pilot.jpeg' },
  { brand: 'Casio', name: 'G-Shock GW-B5600HR-1', image_path: 'watches/gshock.jpeg' },
  { brand: 'Zelos', name: 'Swordfish 40 SS Frost', image_path: 'watches/swordfish_ss.jpeg' },
  { brand: 'Zelos', name: 'Swordfish 40 Bronze Meteorite', image_path: 'watches/swordfish_bronze.jpeg' },
  { brand: 'Zelos', name: 'Hammerhead 3 Burnt Orange', image_path: 'watches/hammerhead_ss.jpeg' },
  { brand: 'Zelos', name: 'Mako V3 Titanium Storm Grey', image_path: 'watches/mako.jpeg' },
  { brand: 'Zelos', name: 'Skyraider 2 Ti Forged Carbon', image_path: 'watches/skyraider.jpeg' },
  { brand: 'Hemel', name: 'Airfoil Panda', image_path: 'watches/airfoil.jpeg' },
  { brand: 'Christopher Ward', name: 'C63 Sealander GMT', image_path: 'watches/c63.jpeg' },
  { brand: 'Zelos', name: 'Comet Tuxedo', image_path: 'watches/comet.jpeg' },
  { brand: 'Zelos', name: 'Hammerhead 3 Bronze SW Limited Edition', image_path: 'watches/hammerhead_bronze.jpeg' },
  { brand: 'Formex', name: 'Essence Leggera FortyOne Electric Blue', image_path: 'watches/essence_leggera.jpeg' },
  { brand: 'Baltany', name: 'Vintage Military Chronograph', image_path: 'watches/baltany.jpeg' },
  { brand: 'Sinn', name: '903 St', image_path: 'watches/903.jpeg' },
  { brand: 'RZE', name: 'Resolute Workbench Edition', image_path: 'watches/resolute.jpeg' },
  { brand: 'Helm', name: 'Vanuatu', image_path: 'watches/vanuatu.jpeg' },
  { brand: 'Christopher Ward', name: 'Twelve (Ti) Astral Blue', image_path: 'watches/twelve.jpeg' },
  { brand: 'Zelos', name: 'Aurora Field Damascus', image_path: 'watches/aurora.jpeg' },
  { brand: 'Studio Underd0g', name: 'Field Steffany Blue', image_path: 'watches/underd0g.jpeg' },
  { brand: 'Zelos', name: 'Blacktip Ti Aventurine', image_path: 'watches/blacktip.jpeg' },
  { brand: 'Zelos', name: 'Eagle 2 Ti Arctic', image_path: 'watches/eagle.jpeg' },
  { brand: 'Christopher Ward', name: 'C63 Valour', image_path: 'watches/c63_valour.jpeg' },
  { brand: 'Zelos', name: 'Helmsman 10th Anniversary Edition', image_path: 'watches/helmsman_10th_ae.jpeg' },
  { brand: 'Erebus', name: 'Accent', image_path: 'watches/erebus.jpg' },
  { brand: 'Revelot', name: 'Terra', image_path: 'watches/revelot.jpg' }
]

watch_data.each do |data|
  Watch.create!(data)
end
