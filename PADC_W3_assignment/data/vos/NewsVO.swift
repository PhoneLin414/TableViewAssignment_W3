//
//  newsVO.swift
//  PADC_W3_assignment
//
//  Created by SC414 on 8/24/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import Foundation
import UIKit


class NewsVO {
    var name: String
    var description: String = ""
    var descriptionDetails: String = ""
    var describeImg: UIImage? = nil
    var profileImg: UIImage? = nil
    var bioGraphy: String = ""
    var position: String = ""
    var describeEvent: String = ""
    var submitDate: String = ""
    
    init(name: String,description: String,descriptionDetails: String,describeImg: UIImage?, profileImg: UIImage?,bioGraphy: String,position: String,describeEvent: String,submitDate: String) {
        self.name = name
        self.description = description
        self.descriptionDetails = descriptionDetails
        self.describeImg = describeImg ?? nil
        self.profileImg = profileImg ?? nil
        self.bioGraphy = bioGraphy
        self.position = position
        self.describeEvent = describeEvent
        self.submitDate = submitDate
    }
}

extension NewsVO {
    
    static func getNewsLists() -> [NewsVO] {
        return [.init(name: "MARY ROACH", description: "10 things you didn't know about orgasm",descriptionDetails: "Bonk author Mary Roach delves into obscure scientific research, some of it centuries old, to make 10 surprising claims about sexual climax, ranging from the bizarre to the hilarious. (This talk is aimed at adults. Viewer discretion advised.)", describeImg: UIImage(named: "profile"), profileImg: UIImage(named: "profile"), bioGraphy: "Death, the afterlife, and now sex -- Mary Roach tackles the most pondered and least understood conundrums that have baffled humans for centuries.(She's funny,too.)", position: "Writer", describeEvent: "TED 2009", submitDate: "Feb 2009"),
                .init(name: "Jill Bolte Taylor", description: "My stroke of insight", descriptionDetails: "Jill Bolte Taylor got a research opportunity few brain scientists would wish for: She had a massive stroke, and watched as her brain functions -- motion, speech, self-awareness -- shut down one by one. An astonishing story.", describeImg: UIImage(named: "profile"), profileImg: UIImage(named: "profile"), bioGraphy: "Brain researcher Jill Bolte Taylor studied her own stroke as it happened -- and has become a powerful voice for brain recovery.", position: "Neuroanatomist", describeEvent: "TED 2008", submitDate: "Feb 2008"),
                .init(name: "Dank Pink", description: "The puzzle of motivation", descriptionDetails: "Career analyst Dan Pink examines the puzzle of motivation, starting with a fact that social scientists know but most managers don't: Traditional rewards aren't always as effective as we think. Listen for illuminating stories -- and maybe, a way forward.", describeImg: UIImage(named: "profile"), profileImg: UIImage(named: "profile"), bioGraphy: "Bidding adieu to his last \"real job\" as Al Gore's speechwriter, Dan Pink went freelance to spark a right-brain revolution in the career marketplace.", position: "Career analyst", describeEvent: "TEDGlobal2009", submitDate: "July 2009"),
                .init(name: "Pamela Meyer", description: "How to spot a liar", descriptionDetails: "On any given day we're lied to from 10 to 200 times, and the clues to detect those lies can be subtle and counter-intuitive. Pamela Meyer, author of Liespotting, shows the manners and \"hotspots\" used by those trained to recognize deception -- and she argues honesty is a value worth preserving., On any given day we're lied to from 10 to 200 times, and the clues to detect those lies can be subtle and counter-intuitive. Pamela Meyer, author of Liespotting, shows the manners and \"hotspots\" used by those trained to recognize deception -- and she argues honesty is a value worth preserving.", describeImg: UIImage(named: "profile"), profileImg: UIImage(named: "profile"), bioGraphy: "Pamela Meyer thinks we’re facing a pandemic of deception, but she’s arming people with tools that can help take back the truth.", position: "Lie detector", describeEvent: "TEDGlobal2011", submitDate: "July 2011"),
                .init(name: "Shawn Achor", description: "The happy secret to better work", descriptionDetails: "We believe we should work hard in order to be happy, but could we be thinking about things backwards? In this fast-moving and very funny talk, psychologist Shawn Achor argues that, actually, happiness inspires us to be more productive.", describeImg: UIImage(named: "profile"), profileImg: UIImage(named: "profile"), bioGraphy: "Shawn Achor is the CEO of Good Think Inc., where he researches and teaches about positive psychology.", position: "Psychologist", describeEvent: "TEDxBloomington", submitDate: "May 2011"),
                .init(name: "Dan Gilbert", description: "The surprising science of happiness", descriptionDetails: "Dan Gilbert, author of \"Stumbling on Happiness,\" challenges the idea that we'll be miserable if we don't get what we want. Our \"psychological immune system\" lets us feel truly happy even when things don't go as planned.", describeImg: UIImage(named: "profile"), profileImg: UIImage(named: "profile"), bioGraphy: "Harvard psychologist Dan Gilbert says our beliefs about what will make us happy are often wrong — a premise he supports with intriguing research, and explains in his accessible and unexpectedly funny book, Stumbling on Happiness.", position: "Pshchologist; happiness expert", describeEvent: "TED 2004", submitDate: "Feb 2004")]
    }
}
