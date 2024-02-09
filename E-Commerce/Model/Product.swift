//
//  Product.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/8/23.
//

import Foundation



struct Product : Identifiable , Hashable{
    var id = UUID()
    var ImageUrl: String
    var title: String
    var price : Int
    var rating: Double
    var review : Int
    var shortDescription: String
    var longDescription: String
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }

}


var productList = [

    Product(
        ImageUrl: "airpods",
        title: "AirPods Max",
        price: 599,
        rating: 1,
        review: 11277,
        shortDescription: "Winning beats sound",
        longDescription: "Apple-designed dynamic driver provides high-fidelity audio.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear.The 14.2-inch Liquid Retina XDR display features Extreme Dynamic Range, over 1,000 nits of brightness for stunning HDR content and pro reference modes for doing your best work on the go."
    ),
    
    Product(
        ImageUrl: "macbook",
        title: "MacBook Pro laptop",
        price: 3415,
        rating: 5.0,
        review: 13625,
        shortDescription: "Apple M2 Pro chip with 10‑core",
        longDescription: "SUPERCHARGED BY M2 PRO OR M2 MAX — Take on demanding projects with the M2 Pro or M2 Max chip. M2 Pro has up to 12 CPU cores, up to 19 GPU cores and up to 32GB unified memory. M2 Max has 12 CPU cores, up to 38 GPU cores and up to 96GB unified memory. All your pro apps run lightning-fast — including Adobe Creative Cloud, Xcode, Affinity Designer, Microsoft 365, and many of your favourite iPhone and iPad apps. EASILY CUSTOMIZABLE — Available in a range of sizes and materials."
    ),
Product(
        ImageUrl: "magic",
        title: "Magic Wireless",
        price: 255,
        rating: 4.8,
        review: 13625,
        shortDescription: "Keyboard with Numeric Keypad",
        longDescription: "The Magic Keyboard is the perfect companion for iPad Pro (3rd, 2nd and 1st generation) and iPad Air (5th and 4th generation). It features the best typing experience ever on iPad, a trackpad that opens up new ways to work with iPadOS, a USB-C port for charging, backlit keys, and front and back protection. With a new floating cantilever design, iPad Pro attaches magnetically and allows you to smoothly adjust to the perfect viewing angle for you. Folds into a case to provide front and back protection."
    ),
Product(
        ImageUrl: "pixel7",
        title: "Google Pixel 7 Pro",
        price: 255,
        rating: 4,
        review: 125,
        shortDescription: "Unlocked GSM Global",
        longDescription: "NOTE: Global Version. No Warranty. This device is globally unlocked and ready to be used with your preferred GSM Carrier. THIS DEVICE IS NOT COMPATIBLE with CDMA carriers such as Cricket, Verizon, Sprint, Boost Mobile, US Cellular, etc. SIM CARD NOT INCLUDED. Please confirm device compatibility with your service provider before placing your order. Storage: 128GB 12GB RAM Camera: 50 MP wide - 12 MP ultrawide[17] - 8 MP front camera.Combined with an innovative E-Color."
    ),
Product(
        ImageUrl: "yoga",
        title: "Lenova Yoga Duet",
        price: 750,
        rating: 2,
        review: 102,
        shortDescription: "2 in 1 laptop with 13",
        longDescription: "At only 1.17 kg and available in sophisticated Orchid and Slate Grey, the Yoga Duet 7i is as versatile as you are. Work in laptop mode with the folio kickstand and keyboard—or detach the keyboard and prop up the screen on a raised surface for easier viewing, thanks to Bluetooth connectivity. You can also rotate the kickstand to a lower angle for sketching and taking notes—or switch to tablet mode for easy use on the go. A more intuitive, personalized experience awaits with 11th Generation Intel Core processors, featuring AI that dynamically adjusts performance to prolong battery life. "
    ),
Product(
        ImageUrl: "zfold",
        title: "Galaxy Z Fold3",
        price: 2500,
        rating: 5,
        review: 450,
        shortDescription: "",
        longDescription: "Design: Shape of tomorrow’s design, now more portable and durable. And now comes with support for S Pen. Great views inside out: The device comes with a dual display. An internal, 7.6-inch Infinity More cameras, more photos: Take it all in with the 12MP Ultra Wide Camera, capture more light with the bright 12MP Wide-angle Camera, zoom in with the help of 12MP Telephoto Camera, 4MP Under Display Camera, and a 10MP Cover Camera. Multi View: With a foldable, roomier internal screen, you can multitask with ease."
    ),
Product(
        ImageUrl: "ipad",
        title: "Apple iPad Pro",
        price: 1200,
        rating: 5,
        review: 550,
        shortDescription: "12.9 inch 6th Generation",
        longDescription: "Brilliant 12.9-inch Liquid Retina XDR display with ProMotion, True Tone, and P3 wide color M2 chip with 8-core CPU and 10-core GPU 12MP Wide camera, 10MP Ultra Wide back camera, and LiDAR Scanner for immersive AR 12MP Ultra Wide front camera with Center Stage Stay connected with ultrafast Wi-Fi 6E USB-C connector with support for Thunderbolt / USB 4 Face ID for secure authentication and Apple Pay Go far with all-day battery life Works with Apple Pencil (2nd generation)."
    ),
Product(
        ImageUrl: "iphone",
        title: "Apple iPhone 14 Pro Max",
        price: 1600,
        rating: 3,
        review: 260,
        shortDescription: "Deep Purple 256GB",
        longDescription: "Introducing Dynamic Island, a truly Apple innovation that’s hardware and software and something in between. It bubbles up music, sports scores, FaceTime, and so much more — all without taking you away from what you’re doing. Now your Lock Screen is always glanceable, so you don’t even have to tap it to stay in the know.When iPhone is turned face down or in your pocket, it goes dark to save battery life. If you don’t have cell service or Wi‑Fi, iPhone lets you text emergency services over satellite."
    ),
Product(
        ImageUrl: "watch",
        title: "Apple Watch Series 8",
        price: 490,
        rating: 2,
        review: 300,
        shortDescription: "Cellular 45mm Smart Watch ",
        longDescription: "WHY APPLE WATCH SERIES 8 — Your essential companion for a healthy life is now even more powerful. Advanced sensors provide insights to help you better understand your health. New safety features can get you help when you need it. The bright, Always-On Retina display is easy to read, even when your wrist is down. CELLULAR CONNECTIVITY — Send a text, make a call, and stream music without your iPhone, even while traveling internationally. "
    ),
    
    Product(
        ImageUrl: "logic",
        title: "Logitech MX Master 3S",
        price: 90,
        rating: 4,
        review: 2340,
        shortDescription: "Wireless Performance Mouse",
        longDescription: "Any-surface tracking - now 8K DPI: Use MX Master 3S cordless computer mouse to work on any surface - even glass (1) - with the upgraded 8000 DPI sensor with customisable sensitivity. Introducing quiet clicks: MX Master 3S Bluetooth mouse features Quiet Clicks - offering the same satisfying feel but with 90% less click noise (2). Magspeed scrolling: A computer mouse with remarkable speed, precision, and near silence - MagSpeed scrolling is 90% faster (3), 87% more precise (4), and ultra quiet. "
    )

]

