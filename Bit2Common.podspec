Pod::Spec.new do |s|
    s.name = 'Bit2Common'
    s.version = '0.1.0'
    s.authors = { 'Igor Camilo' => 'igor.rcamilo@gmail.com' }
    s.social_media_url = 'https://twitter.com/bit2technology'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.homepage = 'https://github.com/bit2technology/bit2common-apple'
    s.source = { :git => 'https://github.com/bit2technology/bit2common-apple.git', :tag => s.version.to_s }
    s.summary = 'A collection of common code used through Bit2 Technology projects.'
    
    s.ios.deployment_target = '9.0'
    s.watchos.deployment_target = '2.0'
    s.tvos.deployment_target = '9.0'
    s.osx.deployment_target = '10.11'
    
    s.frameworks = 'Foundation'
    s.source_files = 'Sources/Bit2Common.h'
    s.public_header_files = 'Sources/Bit2Common.h'
    
    s.subspec 'AdvancedOperation' do |sp|
        sp.source_files = 'Sources/AdvancedOperation/'
    end
    
    s.subspec 'CoreDataContainer' do |sp|
        sp.frameworks = 'CoreData'
        sp.source_files = 'Sources/CoreDataContainer/'
    end
    
    s.subspec 'CoreDataOperation' do |sp|
        sp.dependency 'Bit2Common/AdvancedOperation'
        sp.dependency 'Bit2Common/CoreDataContainer'
        sp.source_files = 'Sources/CoreDataOperation/'
    end
    
    s.subspec 'URLSessionDataTaskOperation' do |sp|
        sp.dependency 'Bit2Common/AdvancedOperation'
        sp.source_files = 'Sources/URLSessionDataTaskOperation/'
    end
end
