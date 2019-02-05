module EpubData

  EPUB_PATH = '/Users/jstoebel/epublishing'.freeze

  def jade_child(site_name)
    sites = {
      'achrnews' => :bnp,
      'adhesivesmag' => :bnp,
      'appliancedesign' => :bnp,
      'architecturalrecord' => :bnp,
      'arwarchitect' => :bnp,
      'assemblymag' => :bnp,
      'autonomousvehicletech' => :bnp,
      'bevindustry' => :bnp,
      'brandpackaging' => :bnp,
      'candyindustry' => :bnp,
      'casinojournal' => :bnp,
      'ceramicindustry' => :bnp,
      'cloudstrategymag' => :bnp,
      'dairyfoods' => :bnp,
      'distributioncentermag' => :bnp,
      'enr' => :bnp,
      'esmagazine' => :bnp,
      'fcimag' => :bnp,
      'flexpackmag' => :bnp,
      'floortrendsmag' => :bnp,
      'foodengineeringmag' => :bnp,
      'foodsafetystrategies' => :bnp,
      'forgemag' => :bnp,
      'hotelfandb' => :bnp,
      'industriaalimenticia' => :bnp,
      'industrialheating' => :bnp,
      'ishn' => :bnp,
      'missioncriticalmagazine' => :bnp,
      'nationaldriller' => :bnp,
      'packagingstrategies' => :bnp,
      'pcimag' => :bnp,
      'pmengineer' => :bnp,
      'pmmag' => :bnp,
      'pobonline' => :bnp,
      'preparedfoods' => :bnp,
      'process-cooling' => :bnp,
      'process-heating' => :bnp,
      'provisioneronline' => :bnp,
      'qualitymag' => :bnp,
      'randrmagonline' => :bnp,
      'reevesjournal' => :bnp,
      'refrigeratedfrozenfood' => :bnp,
      'roofingcontractor' => :bnp,
      'sdmmag' => :bnp,
      'securitymagazine' => :bnp,
      'snackandbakery' => :bnp,
      'snipsmag' => :bnp,
      'stoneworld' => :bnp,
      'supplyht' => :bnp,
      'tile-magazine' => :bnp,
      'wconline' => :bnp,

      'americanfarriers' => :lessiter,
      'farm-equipment' => :lessiter,
      'no-tillfarmer' => :lessiter,
      'precisionfarmingdealer' => :lessiter,
      'rurallifestyledealer' => :lessiter,
      'striptillfarmer' => :lessiter,
      'agequipmentintelligence' => :lessiter,

      'mwjournal' => :mwj,
      'signalintegrityjournal' => :mwj,

      'ratchetandwrench' => :'ten-missions',
      'fixedopsbusiness' => :'ten-missions',
      'fenderbender' => :'ten-missions',

      'wattagnet' => :watt,
      'petfoodindustry' => :watt,

      'ibj' => :ibj,
      'theindianalawyer' => :ibj,
    }

    sites[site_name]
  end
end
