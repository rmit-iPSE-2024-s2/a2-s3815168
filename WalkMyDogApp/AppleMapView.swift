import SwiftUI
import MapKit

struct AppleMapView: UIViewRepresentable {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -37.7136, longitude: 144.8631), // Default location
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.setRegion(region, animated: true)
        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        // Update the map view if needed
        uiView.setRegion(region, animated: true)
    }
}
