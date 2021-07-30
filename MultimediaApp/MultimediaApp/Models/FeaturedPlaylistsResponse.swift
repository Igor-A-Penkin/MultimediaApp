//
//  FeaturedPlaylistsResponse.swift
//  MultimediaApp
//
//  Created by developer on 30.07.2021.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let message: String
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let href: String
    let items: [Playlist]
    let limit: Int
    let next: String?
    let offset: Int
    let previous: String?
    let total: Int
}

struct Playlist: Codable {
    let collaborative: Bool
    let description: String
    let external_urls: UserExternalURLS
    let href: String
    let id: String
    let images: [APIImage]
    let name: String
    let owner: PlaylistOwner
    let primary_color: String?
    let snapshot_id: String
    let tracks: PlaylistTracks
    let type: String
    let uri: String
}

struct PlaylistOwner: Codable {
    let display_name: String
    let href: String
    let external_urls: UserExternalURLS
    let id: String
    let type: String
    let uri: String
}

struct PlaylistTracks: Codable {
    let href: String
    let total: Int
}
