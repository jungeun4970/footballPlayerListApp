//
//  DataService.swift
//  footbalPlayerPriceApp
//
//  Created by Choi Joon on 2021/03/19.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let continents = [
        Continent(title: "Europe", imageName: "europe.png"),
        Continent(title: "South America", imageName: "southAmerica.png"),
        Continent(title: "Asia", imageName: "asia.png"),
        Continent(title: "Africa", imageName: "Africa.jpg")
    ]
    
    func getContinents() -> [Continent]{
        return continents
    }
    
    
    private let asianPlayers = [
        Player(name: "손흥민", imageName: "son.png", price: "900억"),
        Player(name: "지동원", imageName: "Ji.png", price: "30억"),
        Player(name: "기성용", imageName: "ki.png", price: "50억"),
        Player(name: "이승우", imageName: "Lee.jpeg", price: "120억"),
        Player(name: "홍정호", imageName: "hong.jpeg", price: "200억"),
        Player(name: "카가와 신지", imageName: "Kagawa.jpeg", price: "20억"),
        Player(name: "리츠 안도", imageName: "Ritsu.png", price: "200억"),
        Player(name: "오카자키 신지", imageName: "Okazaki.jpeg", price: "250억")
    ]
    
    private let southAmericaPlayers = [
        Player(name: "다닐로", imageName: "Danilo.jpg", price: "900억"),
        Player(name: "실바", imageName: "Silva.png", price: "800억"),
        Player(name: "수아레즈", imageName: "Suarez.png", price: "1000억"),
        Player(name: "카바니", imageName: "Cavani.jpeg", price: "400억"),
        Player(name: "네이마르", imageName: "Neymar.jpeg", price: "1200억"),
        Player(name: "산체스", imageName: "Sanchez.png", price: "720억")
    ]
    private let europePlayers = [
        Player(name: "베일", imageName: "Bale.png", price: "600억"),
        Player(name: "브루노 페르난데스", imageName: "Bruno.png", price: "930억"),
        Player(name: "호날두", imageName: "ronaldo.png", price: "950억"),
        Player(name: "맥과이어", imageName: "Maguire.png", price: "1300억"),
        Player(name: "그린우드", imageName: "GreenWood.png", price: "1700억"),
        Player(name: "케인", imageName: "Kane.jpeg", price: "1500억")
    ]
    
    private let AfricanPlayers = [
        Player(name: "살라", imageName: "Salah.png", price: "1400억"),
        Player(name: "이헤나초", imageName: "Kelechi.png", price: "730억"),
        Player(name: "이워비", imageName: "Iwobi.png", price: "550억"),
        Player(name: "아이유", imageName: "Ayew.png", price: "200억")
    ]
    
    
    func getPlayers(forContinentName title:String) -> [Player]{
        switch title {
        case "Europe":
            return europePlayers
        case "South America":
            return southAmericaPlayers
        case "Asia":
            return asianPlayers
        case "Africa":
            return AfricanPlayers
        default:
            return [Player]()
        }
    }
    
    
}
