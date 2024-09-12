import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: -37.7136, longitude: 144.8631, zoom: 10)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.camera = camera
        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {
        // Update the map view if needed
    }
}
