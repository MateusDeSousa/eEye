import Foundation
import UIKit

class News {
    
    var thumbnail : UIImage
    var title : String
    var content : String
    
    init(thumbnail : UIImage?, title: String, content : String) {
        self.thumbnail = thumbnail ?? UIImage()
        self.title = title
        self.content = content
    }
    
    public class func getNews() -> [News] {
        var news : [News] = []
        
        news.append(News(thumbnail: UIImage(named: "news-img-1"), title: "Astigmatismo: Como identificar?", content: NSLocalizedString("artigmatism-how-identifier", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-2"), title: "O que é Astigmatismo", content: NSLocalizedString("what is artigmatism", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-3"), title: "Astigmatismo: Principais diagnóstico e exames.", content: NSLocalizedString("artigmatism-and-exams", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-4"), title: "Astigmatismo: Tratamentos e Cuidados", content: NSLocalizedString("artigmatism-tratament", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-5"), title: "Causas do Astigmatismo", content: NSLocalizedString("artigmatism-causes", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-6"), title: "Causas do Daltonismo", content: NSLocalizedString("causes-daltonism", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-7"), title: "Daltonismo: Diagnóstico e Exames", content: NSLocalizedString("diagnostic-daltonism", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-8"), title: "O que é Daltonismo?", content: NSLocalizedString("what is daltonism", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-9"), title: "Sintomas de Daltonismo", content: NSLocalizedString("symptoms daltonism", comment: "")))
        news.append(News(thumbnail: UIImage(named: "news-img-10"), title: "O que é metamorfopsia?", content: NSLocalizedString("whats is metamorphopsy", comment: "")))
        
        return news
    }
    
}
