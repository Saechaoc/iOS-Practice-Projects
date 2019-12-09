/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that hosts an `MKMapView`.
*/

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        //Span represents how much of the map to show
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        
        //Region is the visible region shown in the image
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        view.setRegion(region, animated: true)
        
        let compass = MKCompassButton(mapView: view)
//        compass.frame.origin = CGPoint(x:20,y:20)
        compass.compassVisibility = .visible
        view.addSubview(compass)
        compass.translatesAutoresizingMaskIntoConstraints = false
        compass.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        compass.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
            constant: 20).isActive = true
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
