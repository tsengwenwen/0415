//
//  ViewController.swift
//  0415
//
//  Created by TsengWen on 2024/4/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    var names = ["米奇米妮","小熊維尼","巴斯光年","胡迪","唐老鴨"]
    let introduction = ["米奇是個淘氣又頑皮的米奇天性樂觀。遇到危機時，總是能用他的機智反應化險為夷。\n甜美浪漫的米妮是米奇的摯愛。她的個性善良、溫柔，容易害羞，是個愛漂亮的淑女。而米妮不只有女性化的一面，她也是正直、有主見、時尚又有趣的女孩。","小熊維尼常說自己是「一隻笨拙的小熊」，但實際上他卻富有敏銳力、想像力和創造力，總是能用異想天開的辦法來解決所有問題。喜歡蜂蜜！","巴斯是當代最酷炫的玩具，幾乎人手都要擁有一個，玩具賣場架上甚至滿滿都是巴斯光年！這樣的巴斯被作為安弟的生日禮物，認識了胡迪和其他玩具，也因新奇的外表及按鈕功能，深受同伴的歡迎","胡迪是一名牛仔警長，原型是一個在1950年代大受歡迎的電視劇系列《胡迪牛仔秀》的主角。他的背後有一個繩子，拉繩時會說出他的經典名言，比如最常聽到的：「我的靴子裡有蛇🐍」","唐老鴨個性幽默，樂觀友善，但他同時也是個急性子、愛發脾氣，常會理智斷線大爆發。"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //下一頁
    @IBAction func next(_ sender: Any) {
        index = (index + 1) % names.count
        let name = names[index]
        print(index, name)
        nameLabel.text = name
        imageView.image = UIImage(named: name)
        pageControl.currentPage = index
        textView.text = introduction[index]
    }
    //上一頁
    @IBAction func pre(_ sender: Any) {
        index = (index + names.count - 1) % names.count
        let name = names[index]
        print(index, name)
        nameLabel.text = name
        imageView.image = UIImage(named: name)
        pageControl.currentPage = index
        textView.text = introduction[index]
    }
    //三點換頁
    @IBAction func pageControlChange(_ sender: Any) {
        index = pageControl.currentPage
        let name = names[index]
        nameLabel.text = name
        imageView.image = UIImage(named: name)
        textView.text = introduction[index]
    }
    
}

