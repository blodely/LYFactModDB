#
# LYFactModDB
#
# Created by Luo Yu on 10/3/2023.
# Email: indie.luo@gmail.com
#
# The MIT License (MIT)
#
# Copyright (c) 2023 Luo Yu. All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

Pod::Spec.new do |s|
  s.name             = 'LYFactModDB'
  s.version          = '0.1.0'
  s.summary          = 'LYFactModDB. database module'

  s.description      = <<-DESC
DatabaseModuleForFactMod.
                       DESC

  s.homepage         = 'https://github.com/blodely/LYFactModDB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rick Luo' => 'luoyu@luoyu.space' }
  s.source           = { :git => 'https://github.com/blodely/LYFactModDB.git', :tag => s.version.to_s }
  s.social_media_url = 'https://weibo.com/blodely'

  s.ios.deployment_target = '12.0'

  s.source_files = 'LYFactModDB/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LYFactModDB' => ['LYFactModDB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.frameworks = 'UIKit'
  
  s.dependency 'LYCategory'
  s.dependency 'LYFactAppCommon'
  
  s.dependency 'Realm', '= 10.36.0'
  
end
