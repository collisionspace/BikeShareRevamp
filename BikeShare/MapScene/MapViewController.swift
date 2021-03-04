//
//  MapViewController.swift
//  BikeShare
//

import UIKit
import MapKit

final class MapViewController: UIViewController {

    @IBOutlet private var mapView: MKMapView!

    private let interactor: MapUseCase

    init(interactor: MapUseCase) {
        self.interactor = interactor
        super.init(nibName: "MapViewController", bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        interactor.fetchData()
    }
}

extension MapViewController: MapDisplay {

    func showAnnotations(viewModels: [MapAnnotationViewModel]) {
        let annotations = viewModels.map { BikeShareAnnotation(viewModel: $0) }
        mapView.addAnnotations(annotations)
    }
}
