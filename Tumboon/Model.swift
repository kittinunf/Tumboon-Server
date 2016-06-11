//
//  Model.swift
//  Tumboon
//
//  Created by Kittinun Vantasin on 6/11/16.
//  Copyright © 2016 Tumboon. All rights reserved.
//

import Foundation

let charities = [
  Charity(id: 0, name: "Foundation for the Better Life of Children", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In at mauris a tortor blandit sodales a a nulla. Mauris rhoncus tortor quis urna porttitor, sit amet fermentum urna luctus. Cras eu viverra quam, in cursus purus. Proin varius venenatis fringilla. Nullam ut dolor enim. Fusce ut risus lacus. Curabitur ante lectus, pharetra sed luctus nec, ultrices nec felis. Suspendisse commodo varius mauris, in sollicitudin justo efficitur ut. Morbi efficitur dolor vel consequat efficitur. Phasellus ut lectus eu metus tempor elementum non sit amet massa.", logoUrl:"http://www.fblcthai.org/images/logo/logoFBLC.png", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 1, name: "Rabbit in the Moon Foundation", desc: "Mauris at vehicula dui. Aliquam id urna id dui fermentum scelerisque id vel mi. Nullam non nisl mollis, facilisis risus sed, vulputate massa. Cras ut purus nec eros elementum dapibus eu varius nunc. Curabitur venenatis vehicula efficitur. Etiam sit amet velit ut mi fringilla sagittis a tempus ante. Integer tincidunt quam scelerisque ultrices fringilla. Aliquam erat volutpat. Donec tincidunt ultricies urna, et cursus augue aliquet at.", logoUrl:"http://cdn.shopify.com/s/files/1/0510/4905/t/4/assets/logo.png", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 2, name: "World Vision", desc: "Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec sodales massa ac nisi auctor laoreet. Vivamus tincidunt suscipit fringilla. Praesent tortor nisl, aliquam ut lacinia eget, lacinia at purus. Aliquam sit amet dui dui. Ut vel sapien mauris. Aliquam tincidunt erat lorem, in sodales neque luctus id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.", logoUrl:"http://2016.imoot.org/pluginfile.php/72/mod_page/content/48/World-Vision-Logo-2.png", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 3, name: "Makhampom", desc: "Suspendisse laoreet nunc sodales pellentesque semper. Sed sed massa eget ipsum imperdiet finibus eget in elit. Sed a dolor est. Praesent aliquet neque quam, in vehicula sapien malesuada in. Duis blandit nibh nibh, in sollicitudin ex ullamcorper id. Nunc non elementum lectus. Praesent consectetur urna ligula, sit amet vehicula enim euismod sed. Nulla sed eleifend mauris, eu condimentum leo. Cras nec nibh laoreet, fringilla velit id, porta risus. In elementum vehicula lectus, et pretium elit iaculis ac. Vestibulum sollicitudin quam viverra luctus suscipit. Phasellus malesuada elit ligula, at aliquet eros semper et. Donec dictum lorem et quam dapibus scelerisque rutrum eget felis.", logoUrl:"https://5river.files.wordpress.com/2013/03/makhampom.gif", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 4, name: "Wild life Rescue Foundation", desc: "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam tempor vitae eros eu pretium. Suspendisse sed lacus a tellus convallis fringilla et a erat. Mauris sit amet libero vel neque eleifend faucibus non et libero. Aliquam faucibus pulvinar quam, a consequat dui lacinia et. Nam quis tincidunt risus. Duis neque tortor, malesuada id dui in, lobortis rhoncus quam. Phasellus pharetra, elit a rhoncus elementum, mi felis placerat justo, vel molestie neque nisi vel velit.", logoUrl:"http://www.sandytoesandpopsicles.com/wp-content/uploads/2012/05/WildLifeRescue_Discovery+Science+Center1.jpg", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 5, name: "Kru Ban Nok", desc: "Maecenas eu nibh vitae est lacinia rutrum. Nunc et aliquam lectus. Integer porttitor massa a nisl pulvinar, sed blandit nisl viverra. Vivamus sagittis fermentum orci. Quisque viverra justo nunc, vitae condimentum mauris ultricies nec. In ac lacus ut sapien posuere efficitur vitae cursus ipsum. Vestibulum iaculis lobortis urna ut sollicitudin. In ut tincidunt arcu. Etiam cursus felis et sagittis maximus. Praesent id arcu fermentum, ullamcorper elit et, consequat lorem. Nulla sem sem, imperdiet eget tellus nec, condimentum cursus elit.", logoUrl:"http://bannok.com/volunteers/wp-content/uploads/2014/07/1logobn.png", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 6, name: "Duang Prateep Foundation", desc: "Nullam molestie eros lacinia felis volutpat, quis feugiat sem hendrerit. Proin congue quam nec justo eleifend mollis. Ut tellus libero, egestas ut ligula sit amet, accumsan tempus nulla. Nam faucibus ultricies mattis. Morbi scelerisque tristique justo, vel scelerisque arcu lacinia et. Sed sed tempor quam. Fusce volutpat in erat vitae pulvinar. Phasellus a libero a diam accumsan semper.", logoUrl:"http://www.jobmarket.co.th/images/employer_images/logo_2154.jpg", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 7, name: "Habitat for Humanity Thailand", desc: "Nulla quam ipsum, fringilla at felis nec, sagittis malesuada eros. Praesent a auctor arcu. Vestibulum eget molestie nisl, ut fermentum odio. Etiam porttitor imperdiet turpis a consectetur. Nullam sed leo rutrum, pulvinar risus in, molestie dui. Aenean dapibus ut orci sit amet ornare. Vestibulum dictum justo non porttitor fermentum. Suspendisse eu dui massa. Pellentesque ex turpis, sagittis sit amet iaculis quis, volutpat sed tellus. In molestie auctor dui, in posuere metus dapibus eu. Suspendisse et porttitor nulla. Aliquam tincidunt purus vel luctus efficitur. Ut at eros sit amet nibh consequat luctus nec eu leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed accumsan finibus ullamcorper.", logoUrl:"http://www.adamandlianne.com/uploads/2/2/1/6/2216267/3231127.gif", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 8, name: "Operation Blessing Thailand", desc: "Sed dolor nulla, euismod ut neque id, ultrices pellentesque ligula. Aliquam auctor ligula mi, vestibulum maximus risus dignissim id. Donec ornare lacus quis mi vestibulum euismod. Suspendisse efficitur dolor sapien, sed ullamcorper odio vulputate cursus. Morbi sed risus eu nunc commodo pretium et placerat ipsum. Integer iaculis nibh at massa tristique, a aliquet nisi feugiat. Ut suscipit porttitor imperdiet. Curabitur molestie metus vitae eleifend convallis. Fusce vitae consequat tellus. Integer in mollis lectus. Aliquam magna justo, auctor ut nunc et, euismod fringilla leo. Integer elementum porta tortor nec ullamcorper. Donec erat lacus, efficitur vitae erat in, hendrerit viverra felis.", logoUrl:"http://vignette1.wikia.nocookie.net/conworld/images/9/92/Greenpeace-logo.gif/revision/latest?cb=20131029090911", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 9, name: "GreenPeace Southeast Asia", desc: "Maecenas malesuada porttitor mi, vitae sodales lectus. Cras eget magna eget dolor placerat rhoncus malesuada vel nulla. Maecenas non felis leo. Cras tincidunt magna in iaculis tincidunt. Pellentesque a ante ipsum. Sed id blandit lorem. Proin pretium leo nec egestas dapibus. Suspendisse in turpis efficitur, bibendum nulla et, fermentum ante. Ut ornare eget felis quis maximus. Cras viverra euismod tincidunt. Nunc ullamcorper pulvinar sollicitudin.", logoUrl:"http://vignette1.wikia.nocookie.net/conworld/images/9/92/Greenpeace-logo.gif/revision/latest?cb=20131029090911", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
  
  Charity(id: 10, name: "Seub Nakhasathien Foundation", desc: "Curabitur id est mattis, tempor mi id, congue eros. Maecenas eu augue a enim hendrerit volutpat. Ut in egestas tellus, sed dignissim velit. Nullam pulvinar imperdiet tellus nec tempor. Sed sit amet varius ex. Duis ac faucibus ipsum. Aliquam libero nisi, ultrices et quam sed, ornare interdum tellus.", logoUrl:"http://4.bp.blogspot.com/_tF_DyjQ-CPA/TCHVjkwucdI/AAAAAAAAB9g/H3FQkIlfquo/s1600/sueb05.jpg", donatorCount: Int(arc4random_uniform(1000)), donationAmount: Double(arc4random_uniform(10000)) * drand48().roundTo(2)),
]

struct Charity {
  let id: Int
  let name: String
  let desc: String
  let logoUrl: String
  let donatorCount: Int
  let donationAmount: Double
  
  func toDictionary() -> [String : AnyObject] {
    return [
      "id": id,
      "name": name,
      "desc": desc,
      "logo_url": logoUrl,
      "donator_count": donatorCount,
      "donation_amount": donationAmount
    ]
  }
}
