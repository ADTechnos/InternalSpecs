Pod::Spec.new do |s|

  s.name         = "LibSpirStore"
  s.author       = {"MAES Adrien" => "adrien.maes@spir.fr" }
  s.version      = "1.2.2"
  s.homepage     =  'http://www.spir.fr'
  s.source       = { :svn => "http://pwappsvn-1.external.spir.fr/pub/adtechnos-mobilite/Pods/LibSpirStore", :tag => s.version.to_s }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.summary      =  'Managed the connection authorizations to the SPIR information system.'
  s.description  =  'SPIR Communication internal library for fully provide the access connection authorization.'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.requires_arc = true

  s.source_files = 'Classes/**/*.{m,h,c}'
  s.exclude_files = 'Classes/Core/**/*.{m,h,c}'

  s.resources = 'Assets/**/*.{xib,png}'

  s.subspec 'Core' do |sp|
    sp.source_files = 'Classes/Core/**/*.{m,h,c}'
  end

  s.frameworks = 'UIKit'

  s.dependency 'LibSpirCore', '1.3.19'
  s.dependency 'LibSpirAuthentication/Base', '2.2.8'
  
  
  s.dependency 'TOWebViewController', '~> 2.0'

end
