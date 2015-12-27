
dependencies = [
    'ngRoute',
    'ui.bootstrap',
    'puzzShop.filters',
    'puzzShop.services',
    'puzzShop.controllers',
    'puzzShop.directives',
    'puzzShop.common',
    'puzzShop.routeConfig'
]

app = angular.module('puzzShop', dependencies)

angular.module('puzzShop.routeConfig', ['ngRoute'])
    .config(['$routeProvider', ($routeProvider) ->
        $routeProvider
            .when('/', {
                templateUrl: '/assets/partials/view.html'
            })
            .when('/users/create', {
                templateUrl: '/assets/partials/create.html'
            })
            .when('/users/edit/:firstName/:lastName', {
                templateUrl: '/assets/partials/update.html'
            })
            .otherwise({redirectTo: '/'})])
    .config(['$locationProvider', ($locationProvider) ->
        $locationProvider.html5Mode({
            enabled: true,
            requireBase: false
        })])

@commonModule = angular.module('puzzShop.common', [])
@controllersModule = angular.module('puzzShop.controllers', [])
@servicesModule = angular.module('puzzShop.services', [])
@modelsModule = angular.module('puzzShop.models', [])
@directivesModule = angular.module('puzzShop.directives', [])
@filtersModule = angular.module('puzzShop.filters', [])