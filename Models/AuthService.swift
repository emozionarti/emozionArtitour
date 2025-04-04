//
//  AuthService.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 03/04/25.
//

import Foundation

class AuthService {
    func login(email: String, password: String, completion: @escaping (Result<LoginResponse, Error>) -> Void) {
        let url = URL(string: "https://emozion-arti.com/api/auth.php")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        // Imposta i parametri POST
        let bodyParameters = [
            "email": email,
            "password": password
        ]
        
        // Crea il corpo della richiesta
        request.httpBody = try? JSONSerialization.data(withJSONObject: bodyParameters, options: [])
        
        // Aggiungi l'header
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // Invia la richiesta
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Nessun dato ricevuto"])))
                return
            }
            
            // Decodifica la risposta
            do {
                let decodedResponse = try JSONDecoder().decode(LoginResponse.self, from: data)
                completion(.success(decodedResponse))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
