//
//  ViewController.swift
//  food
//
//  Created by Supanat on 30/11/2563 BE.
//

import UIKit

class ViewController: UIViewController {

    // MARK: UI
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Data
    var foods = [Food]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foods = getFoods()
        tableView.reloadData()
    }
    
    private func getFoods() -> [Food] {
        var foods = [Food]()
        foods.append(Food(name: "ต้มยำขาหมู",
                          description: "อาหารไทยยอดนิยม สำหรับวันนี้ ขอนำเสนอ เมนูแกง เมนูขาหมู คือ ต้มยำขาหมู เคล็ดลับความอร่อยของอาหารเมนูนี้ คือ ขาหมูนุ่มๆ และน้ำต้มยำที่เข้มข้น",
                          image: getImage(imageName: "image-food-1"),
                          like: 1436))
        
        foods.append(Food(name: "ยำหูหมู",
                          description: "ยำหูหมู อาหารอร่อยๆเมนูยำ วิธีทำยำหูหมู ง่ายๆสามารถทำกินเองได้ หูหมูทำอะไรกินได้บ้าง น้ำยำกับหูหมู อาหารไทยรสจัดจ้าน",
                          image: getImage(imageName: "image-food-2"),
                          like: 7878))
        
        foods.append(Food(name: "ก๋วยเตี๋ยวเรืออยุธยา",
                          description: "ความโดดเด่นของก๋วยเตียวเมนูนี้ คือ น้ำซุปสูตรพิเศษ ที่มีความหอมของเครื่องเทศหลากหลาย ค้นมันด้วยเลือดหมู เส้นลวกเหนียวนุ่ม เนื้อนุ่มๆ ลูกชิ้นอร่อยๆ ตับหวานๆ ที่หมดนี้ เป้นรายละเอียดความอร่อยของก๋วยเตียว อาหารเส้น น้ำซุปก๋วยเตี๋ยวเรือ เคล็ดลับการทำก๋วยเตี๋ยวเรือ",
                          image: getImage(imageName: "image-food-3"),
                          like: 235))
        
        foods.append(Food(name: "แกงจืดตำลีงเต้าหู้หมูสับ",
                          description: "เคล็ดลับความอร่อยของอาหารเมนูนี้ อยู่ที่ น้ำซุปหวานๆ หมูสับนุ่มๆ อาหารไทย ทานง่าย เนื่องจากรสชาติ กลมกล่อม ไม่จัดจ้าน เหมาะสำหรับคนชอบทานอาหารรสชาติอ่อนๆ",
                          image: getImage(imageName: "image-food-4"),
                          like: 5667))
        
        foods.append(Food(name: "ตับหวาน ลาบตับหมู",
                          description: "ลาบตับหมู หรือ ที่คนอีสานเรียก ตับหวาน เทคนิคความอร่อยของอาหารเมนูนี้ อยู่ที่ การเลือกวัตถุดิบที่สดๆ การเตรียมอาหาร และ เทคนิคการปรุงรสชาติ ต้องได้เนื้อตับหมูนุ่มๆ หวานๆ ปรุงรสกับเครื่องปรุงลาบแบบอีสาน หอมข้าวคั่ว กินกับข้าวเหนียวร้อนๆ ส้มตำ ไก่ย่าง และ ต้มแซ่บ สักจาน เป็นอาหาร ที่สามารถหาได้ง่ายๆ ในวงสังสรรค์",
                          image: getImage(imageName: "image-food-5"),
                          like: 23123))
        
        foods.append(Food(name: "ผัดเผ็ดหมู",
                          description: "หมูผัดเผ็ด อาหารไทยง่ายๆ เมนูผัดรสจัดจ้าน วิธีทำผัดเผ็ดหมู สามารถทำกินเองได้ เคล็ดลับความอร่อยอยู่ที่วัตถุดิบ เทคนิคการผัด การปรุงรสชาติ นิยมทานกับข้าวสวย",
                          image: getImage(imageName: "image-food-6"),
                          like: 45453))
        
        foods.append(Food(name: "หมูผัดพริกไทยดำ",
                          description: "เป็นอาหารง่ายๆ อาหารจานเดียว ส่วนผสมและขั้นตอนการทำเข้าใจง่าย เหมาะสำหรับคนรักการทำอาหาร เมนูผัด",
                          image: getImage(imageName: "image-food-7"),
                          like: 1235))
        
        foods.append(Food(name: "แกงคั่วหมูเทโพ",
                          description: "รสชาติของแกง ที่หอมพริกแกงคั่ว หมูสามชั้นเคี้ยวจนนุ่ม ผักบุ้งกรอบ ไม่เหนียว น้ำแกงไม่มันเกินไป สูตรอาหารง่ายๆ ส่วนผสมและขั้นตอนการทำเข้าใจง่าย เหมาะสำหรับคนรักการทำอาหาร เมนูหมู",
                          image: getImage(imageName: "image-food-8"),
                          like: 2323211))
        
        foods.append(Food(name: "ยำไส้กรอก",
                          description: "ยำไส้กรอก เมนูอาหาร ชื่อดัง วิธีทำทีละขั้นตอนการทำ เข้าใจง่าย ไม่ยุ่งยาก เหมาะสำหรับผู้ที่นิยมทำอาหารไทย ความอร่อยของอาหาร เมนูยำ คือ รสหวาน เค็ม เปรี้ยว ที่เท่ากันไม่มีรสใดแรงกว่ากันจะได้รสยำที่พอดี ส่วนความเผ็ดก็ตามใจชอบ",
                          image: getImage(imageName: "image-food-9"),
                          like: 3223111))
        
        foods.append(Food(name: "ผัดคะน้าหมูกรอบ",
                          description: "ผักคะน้าหวาน ไม่ขม หมูกรอบ ที่หนังกรอบ เนื้อนุ่ม และ การปรุงรสที่รสชาติกลมกล่อมพอดี",
                          image: getImage(imageName: "image-food-10"),
                          like: 23344))
        
        foods.append(Food(name: "ข้าวอบกุนเชียง",
                          description: "รสชาติหวาน อร่อย เข้ากันได้อย่างลงตัว ความหวานอร่อยของกุนเชียง ทำให้รสชาติของข้าวผัดดีขึ้นมาทันที ข้าวอบกุนเชียง อาหารยอดนิยม เมนูหมู ส่วนผสมและขั้นตอนการทำ เข้าใจง่าย เหมาะสำหรับคนรัก การทำอาหาร เมนูง่ายๆ",
                          image: getImage(imageName: "image-food-11"),
                          like: 26765))
        
        foods.append(Food(name: "ผัดผักกวางตุ้งหมูสับ",
                          description: "อาหาร ยอดนิยมสำหรับวันนี้ ขอนำเสนอ เมนูผัด แบบง่ายๆ ใช้ผักกวางตุ้งเป็นวัตถุดิบหลัก ผักกวางตุ้งทำอะไรกินได้บ้าง มีผักกวางตุ้งทำอะไรกินดี เรามีคำตอบให้ด้วย ผัดผักกวางตุ้งหมูสับ เคล็ดลับความอร่อยของอาหารเมนูนี้ คือ ผักสดๆ หมูสับสดๆ และ เทคนิคการผัด รวมถึงการปรุงรสชาติ ต้องได้อัตราส่วนที่พอดี",
                          image: getImage(imageName: "image-food-12"),
                          like: 2346))
        
        foods.append(Food(name: "แกงจืดสับปะรดซี่โครงหมู",
                          description: "แกงจืดแบบง่ายๆ เมนูซี่โครงหมู ซี่โครงหมูทำอะไรกินได้บ้าง สับปะรดทำอะไรกินได้บ้าง แกงจืดสับปะรดซี่โครงอ่อน ภาษาอังกฤษ เรียก Pineapple and Pork Ribs Soup",
                          image: getImage(imageName: "image-food-13"),
                          like: 5665))
        
        foods.append(Food(name: "หมูปิ้ง",
                          description: "อาหารปิ้งย่าง เมนูง่ายๆ หมูย่างทำอย่างไร สูตรหมูปิ้ง กับ ข้าวเหนียวนุ่มๆ เคล็ดลับความอร่อยของหมูปิ้ง คือ วัตถุดิบคุณภาพ เทคนิคการเตรียมอาหาร การหมักหมู และ เทคนิคการย่างหมู",
                          image: getImage(imageName: "image-food-14"),
                          like: 6734))
        
        foods.append(Food(name: "แกงเขียวหวานหมู",
                          description: "อาหารไทย หวานมันหอมพริกแกงกับเนื้อหมูนุ่มๆ วิธีทำแกงเขียวหวาน ง่ายๆสามารถทำกินเองได้ แกงกะทิจากพริกแกงเขียวหวาน",
                          image: getImage(imageName: "image-food-15"),
                          like: 4531))
        
        foods.append(Food(name: "ตำถั่วหมูกรอบ",
                          description: "ตำถั่วหมูกรอบ ส้มตำถั่วฝักยาวผสมกับหมูกรอบ วิธีทำตำถั่วหมูกรอบ ง่ายๆสามารถทำกินเองได้ ถั่วฝักยาว หมูกรอบ และ น้ำยำส้มตำ",
                          image: getImage(imageName: "image-food-16"),
                          like: 1238))
        
        foods.append(Food(name: "ข้าวผัดหมูลิ้นจี่",
                          description: "อาหารผัดแบบง่ายๆ วิธีทำข้าวผัดหมูลิ้นจี่ ง่ายๆสามารถทำกินเองได้ อาหารไทย ลิ้นจี่ทำอะไรกินได้ ข้าวผัดทำอย่างไรให้อร่อย",
                          image: getImage(imageName: "image-food-17"),
                          like: 8956))
        
        foods.append(Food(name: "ลาบหมู",
                          description: "เป็น อาหารพื้นบ้าน ของชาวอีสาน สามารถหารับประทานได้ตาม ร้านอาหารอีสาน ที่อยู่ทั่วประเทศ นิยมรับประทาน กันในทุกภาคของประเทศไทย  เคล็ดลับการทำลาบหมู คือ เนื้อหมูนุ่มๆ หอมข้าวคั่ว รสชาติพอดีอร่อย",
                          image: getImage(imageName: "image-food-18"),
                          like: 4567))
        
        foods.append(Food(name: "แกงขนุนใส่ซี่โครงหมู",
                          description: "เป็น อาหารพื้นบ้านล้านนา ภาษาเหนือ เรียก แกงบ่าหนุน จัดว่าเป็น อาหารมงคล สำหรับงานประเพณีของชาวเหนือ เป็น แกงขนุน ต้มจนหมูนุ่ม หวานหอม พริกแกงแบบเหนือ",
                          image: getImage(imageName: "image-food-19"),
                          like: 7653))
        
        foods.append(Food(name: "หมูสับนึ่งไข่เค็ม",
                          description: "อาหารเมนูหมูสับ และ เมนูไข่เค็ม เรียก หมูสับนึ่งไข่เค็ม ภาษาอังกฤษ เรียก steamed minced pork with salted egg yolk",
                          image: getImage(imageName: "image-food-20"),
                          like: 3456))
        
        return foods
    }
    
    private func getImage(imageName: String) -> UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FoodTableViewCell.identifier) as? FoodTableViewCell else {
            return UITableViewCell()
        }
        
        let food = foods[indexPath.row]
        cell.setCell(viewModel: food)
        
        return cell
    }
}
