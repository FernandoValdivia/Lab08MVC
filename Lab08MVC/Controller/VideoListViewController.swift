import UIKit

class VideoListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()

    }
    
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "imagen1")!, title: "Eminem - No Afraid")
        let video2 = Video(image: UIImage(named: "imagen2")!, title: "Kiss - I Was Made For Lovin' You")
        let video3 = Video(image: UIImage(named: "imagen3")!, title: "AC/DC - Back in Black")
        let video4 = Video(image: UIImage(named: "imagen4")!, title: "Guns N' Roses - Paradise City")
        let video5 = Video(image: UIImage(named: "imagen5")!, title: "Queen - We Will Rock You")
        let video6 = Video(image: UIImage(named: "imagen6")!, title: "The Beatles - Come Together")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
    }

}

extension VideoListViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoViewCell
        
        cell.setVideo(video: video)
        
        return cell
    }
}
