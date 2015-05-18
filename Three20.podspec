{
  "name": "Three20",
  "version": "1.0.11",
  "summary": "Three20 is an Objective-C library for iPhone developers.",
  "homepage": "http://three20.info/",
  "authors": {
    "Alessandro Zummo": "a.zummo@towertech.it",
    "Alexander Saltanov": "a@nearbird.ru",
    "Adar Porat": "adar.porat@gmail.com",
    "aporat": "adar.porat@me.com",
    "Amit Snyderman": "amit@amitsnyderman.com",
    "andy.porat": "andy.porat@me.com",
    "Benedikt Meurer": "benedikt.meurer@googlemail.com",
    "beng": "beng@facebook.com",
    "Blake Watters": "blakewatters@gmail.com",
    "Brandon Walkin": "bwalkin@facebook.com",
    "Brian Chapados": "chapados@sciencegeeks.org",
    "clozach": "clozach+github@gmail.com",
    "crino": "cseverini@gmail.com",
    "David J. Hu": "davidjhu@gmail.com",
    "uprise78": "desaro@gmail.com",
    "Justin DeWind": "dewind@atomicobject.com",
    "Dima Berastau": "dima.berastau@gmail.com",
    "Holtwick": "dirk.holtwick@gmail.com",
    "Chih-Wei Lee": "dlackty@gmail.com",
    "Dan Morrow": "dmorrow@maned.com",
    "Doug Barth": "dougbarth@gmail.com",
    "drewmca": "drew@unitdev.com",
    "Emil Palm": "emil@x86.nu",
    "Eelco Lempsink": "eml@tupil.com",
    "Eric Wolfe": "eric.r.wolfe@gmail.com",
    "Eric Chamberlain": "eric@rf.com",
    "Drync Wine": "github@drync.com",
    "Greg Haines": "gresrun@gmail.com",
    "Hwee-Boon Yar": "hboon@motionobj.com",
    "Cemal Eker": "hello@cemaleker.com",
    "Jeroen Houtzager": "houtzager@gmail.com",
    "Jarno Antikainen": "jarno.antikainen@iki.fi",
    "Jason Cabot": "jasoncabot@gmail.com",
    "Jean Regisser": "jean.regisser@gmail.com",
    "Joe Hewitt": "joe@joehewitt.com",
    "Jeff Verkoeyen": "jverkoey@gmail.com",
    "John Wang": "jwang392@gmail.com",
    "Matt Crocker": "matt@rd.io",
    "Matt Newberry": "matt@shopify.com",
    "Brian Donovan": "me@brian-donovan.com",
    "Peter Steinberger": "me@petersteinberger.com",
    "Mike Morearty": "mike@morearty.com",
    "NanoTech": "nanotech008@gmail.com",
    "Joachim Bengtsson": "nevyn@spotify.com",
    "Oleguer Huguet": "olegueret@gmail.com",
    "Owen Yamauchi": "oyamauchi@fb.com",
    "Paulo Oliveira": "paulo@seqoy.com",
    "Pavel Bocharov": "pavel@wheely.com",
    "Petr Reichl": "petr@tapmates.com",
    "PEZ": "pez@pezius.com",
    "Pavel Repin": "prepin@gmail.com",
    "alexleutgoeb": "privat@alexleutgoeb.com",
    "Phillip Verheyden": "pverheyden@gmail.com",
    "Rafael Alba": "ralba@socialcast.com",
    "Rodrigo Mazzilli": "rodrigo@wellknown.as",
    "Roger Chapman": "roger@stormid.com",
    "Rusty Zarse": "rusty@levo.us",
    "Savanah Cummings": "savanah.cummings@gmail.com",
    "Shaheen Gandhi": "shaheen@devrs109.snc1.facebook.com",
    "Skotch Vail": "skotch.git@brushthedog.com",
    "Stephan Diederich": "stephan.diederich@googlemail.com",
    "Sumeru Chatterjee": "sumeru@ufl.edu",
    "Thomas Weisbach": "tee.aye.w@gmail.com",
    "Tobias Klonk": "tobias.klonk@tklonk.net",
    "Tobias Rundström": "tobias.rundstrom@purplescout.se",
    "Tony Lewis": "tonylewis@dailytest.portland.4tellsolutions.com",
    "vguerci": "vguerci@gmail.com",
    "wbailey": "wi11.bai1ey@facebook.com",
    "Wiley Kestner": "wiley.kestner@gmail.com"
  },
  "license": {
    "type": "Apache License, Version 2.0",
    "file": "LICENSE"
  },
  "source": {
    "git": "https://github.com/MaxChuquimia/three20",
    "tag": "1.0.11"
  },
  "platforms": {
    "ios": null
  },
  "source_files": "src/Three20/{Sources,Headers}/*.{h,m}",
  "resources": "src/Three20.bundle",
  "default_subspec": "UI",
  "requires_arc": false,
  "prepare_command": "echo \"This Pod relies on the removed \\`pre_install\\` or \\`post_install\\` hooks and therefore will no longer continue to work. Please try updating to the latest version of this Pod or updating the Pod specification. See http://blog.cocoapods.org/CocoaPods-Trunk/ for more details.\" && exit 1",
  "subspecs": [
    {
      "name": "Core",
      "source_files": "src/Three20Core/{Sources,Headers}/**/*.{h,m}",
      "private_header_files": "src/Three20Core/Headers/TTExtensionInfoPrivate.h",
      "header_dir": "Three20Core",
      "header_mappings_dir": "src/Three20Core/Headers"
    },
    {
      "name": "Network",
      "source_files": "src/Three20Network/{Sources,Headers}/**/*.{h,m}",
      "private_header_files": "src/Three20Network/Headers/{TTRequestLoader,TTURLRequestQueueInternal}.h",
      "header_dir": "Three20Network",
      "header_mappings_dir": "src/Three20Network/Headers",
      "dependencies": {
        "Three20/Core": [

        ]
      }
    },
    {
      "name": "Style",
      "source_files": "src/Three20Style/{Sources,Headers}/**/*.{h,m}",
      "private_header_files": "src/Three20Style/Headers/{TTShapeInternal,TTStyledNodeInternal,TTStyleInternal}.h",
      "header_dir": "Three20Style",
      "header_mappings_dir": "src/Three20Style/Headers",
      "dependencies": {
        "Three20/Core": [

        ],
        "Three20/Network": [

        ]
      }
    },
    {
      "name": "UICommon",
      "source_files": "src/Three20UICommon/{Sources,Headers}/**/*.{h,m}",
      "private_header_files": "src/Three20UICommon/Headers/UIViewControllerGarbageCollection.h",
      "header_dir": "Three20UICommon",
      "header_mappings_dir": "src/Three20UICommon/Headers",
      "dependencies": {
        "Three20/Core": [

        ]
      },
      "frameworks": [
        "UIKit",
        "CoreGraphics"
      ]
    },
    {
      "name": "UINavigator",
      "source_files": "src/Three20UINavigator/{Sources,Headers}/**/*.{h,m}",
      "private_header_files": "src/Three20UINavigator/Headers/{TTBaseNavigatorInternal,TTURLArguments,TTURLArgumentType,TTURLLiteral,TTURLPatternInternal,TTURLPatternText,TTURLSelector,TTURLWildcard,UIViewController+TTNavigatorGarbageCollection}.h",
      "header_dir": "Three20UINavigator",
      "header_mappings_dir": "src/Three20UINavigator/Headers",
      "dependencies": {
        "Three20/Core": [

        ],
        "Three20/UICommon": [

        ]
      }
    },
    {
      "name": "UI",
      "source_files": "src/Three20UI/{Sources,Headers}/**/*.{h,m}",
      "private_header_files": "src/Three20UI/Headers/{TTButtonContent,TTImageLayer,TTImageViewInternal,TTLauncherHighlightView,TTLauncherScrollView,TTNavigatorWindow,TTSearchTextFieldInternal,TTTabBarInternal,TTTextEditorInternal,TTTextView}.h",
      "header_dir": "Three20UI",
      "header_mappings_dir": "src/Three20UI/Headers",
      "frameworks": "QuartzCore",
      "dependencies": {
        "Three20/Core": [

        ],
        "Three20/Network": [

        ],
        "Three20/Style": [

        ],
        "Three20/UICommon": [

        ],
        "Three20/UINavigator": [

        ]
      }
    },
    {
      "name": "ext",
      "subspecs": [
        {
          "name": "CSSStyle",
          "source_files": "src/extThree20CSSStyle/{Sources,Headers,ThirdPart}/*.{h,m}",
          "private_header_files": "src/extThree20CSSStyle/Headers/CssTokens.h",
          "header_dir": "extThree20CSSStyle",
          "header_mappings_dir": "src/extThree20CSSStyle/Headers",
          "resources": "src/extThree20CSSStyle/Resources/extThree20CSSStyle.bundle",
          "dependencies": {
            "Three20/Core": [

            ],
            "Three20/Network": [

            ],
            "Three20/Style": [

            ]
          }
        },
        {
          "name": "JSON",
          "source_files": "src/extThree20JSON/{Source,Headers}/**/*.{h,m}",
          "header_dir": "extThree20JSON",
          "header_mappings_dir": "src/extThree20JSON/Headers",
          "dependencies": {
            "Three20/Core": [

            ],
            "Three20/Network": [

            ]
          }
        },
        {
          "name": "SBJSON",
          "source_files": "src/extThree20JSON/Vendors/JSON/*.{h,m}",
          "header_dir": "extThree20JSON",
          "xcconfig": {
            "GCC_PREPROCESSOR_DEFINITIONS": "$(inherited) EXTJSON_SBJSON"
          },
          "dependencies": {
            "Three20/ext/JSON": [

            ]
          }
        },
        {
          "name": "YAJL",
          "source_files": [
            "src/extThree20JSON/Vendors/YAJL/*.{h,m}",
            "src/extThree20JSON/Vendors/YAJL/{GHKit,GTM}/*.{h,m}",
            "src/extThree20JSON/Vendors/YAJL/yajl/src/**/*.{h,c}"
          ],
          "private_header_files": [
            "src/extThree20JSON/Vendors/YAJL/{GHKit,GTM}/*.h",
            "src/extThree20JSON/Vendors/YAJL/yajl/src/*.h"
          ],
          "header_dir": "extThree20JSON",
          "xcconfig": {
            "GCC_PREPROCESSOR_DEFINITIONS": "$(inherited) EXTJSON_YAJL"
          },
          "dependencies": {
            "Three20/ext/JSON": [

            ]
          }
        },
        {
          "name": "XML",
          "source_files": "src/extThree20XML/{Source,Headers}/*.{h,m}",
          "header_dir": "extThree20XML",
          "dependencies": {
            "Three20/Core": [

            ],
            "Three20/Network": [

            ]
          }
        }
      ]
    }
  ]
}
