class CovidData {
  // String country;
  // String countryAbbrev;
  // String totalCases;
  // String totalDeaths;
  // String newCases;
  // String newDeaths;
  // String totalRecovered;
  // String activeCases;
  // String seriousCritical;
  // String casesPerMill;
  // String flag;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;

  CovidData(
      {this.newConfirmed,
      this.totalConfirmed,
      this.newDeaths,
      this.totalDeaths,
      this.newRecovered,
      this.totalRecovered
      // this.country,
      // this.countryAbbrev,
      // this.totalCases,
      // this.activeCases,
      // this.casesPerMill,
      // this.flag,
      // this.newCases,
      // this.newDeaths,
      // this.seriousCritical,
      // this.totalDeaths,
      // this.totalRecovered,
      });
  factory CovidData.getfromJson(Map<String, dynamic> json) {
    return CovidData(
      // country: json['country'],
      // countryAbbrev: json['country_abbreviation'],
      // totalCases: json['total_cases'],
      // newCases: json['new_cases'],
      // totalDeaths: json['total_deaths'],
      // newDeaths: json['new_deaths'],
      // totalRecovered: json['total_recovered'],
      // activeCases: json['active_cases'],
      // seriousCritical: json['serious_critical'],
      // casesPerMill: json['cases_per_mill_pop'],
      // flag: json['flag'],
      newConfirmed: json["NewConfirmed"],

      totalConfirmed: json["TotalConfirmed"],
      newDeaths: json["NewDeaths"],
      totalDeaths: json["TotalDeaths"],
      newRecovered: json["NewRecovered"],
      totalRecovered: json["TotalRecovered"],
    );
  }
}
