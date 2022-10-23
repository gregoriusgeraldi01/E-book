//
//  ContentView.swift
//  EBook
//
//  Created by Gregorius Geraldi on 23/10/22.
//

import SwiftUI

struct Band {
    let name: String
    let label: String
    let bio: String
}

struct BandRow: View {
    let band: Band
    var body: some View {
        HStack {
            Image(band.name)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading) {
                Text(band.name)
                Text(band.label)
            }
            Spacer()
        }
    }
}
struct BandDetail: View {
    let band: Band
    var body: some View {
        VStack {
            Image(band.name)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            Text(band.bio)
                .padding()
        }
        .navigationBarTitle(band.name)
    }
}

struct MaleSinger: View {
    let boyband = [
        Band(name: "The Weeknd" , label: "Republic Records" , bio: "Abel Makkonen Tesfaye (/ɑːbɛltɛsfeɪ/ AH-bell-tes-FAY; born February 16, 1990), known professionally as the Weeknd, is a Canadian singer, songwriter, and record producer. Known for his sonic versatility and dark lyricism, his music explores escapism, romance, and melancholia, and is often inspired by personal experiences."),
        Band(name: "Ed Sheeran" , label: "Warner Music Group" , bio: "Edward Christopher Sheeran MBE (/ˈʃɪərən/; born 17 February 1991) is an English singer-songwriter. Born in Halifax, West Yorkshire and raised in Framlingham, Suffolk, he began writing songs around the age of eleven. In early 2011, Sheeran independently released the extended play, No. 5 Collaborations Project. He signed with Asylum Records the same year."),
        Band(name: "Bruno Mars" , label: "Atlantic Records" , bio: "Peter Gene Hernandez (born October 8, 1985), known professionally as Bruno Mars, is an American singer-songwriter, record producer, musician, dancer, and music video director. He is known for his stage performances, retro showmanship, and for performing in a wide range of musical styles, including pop, R&B, funk, soul, reggae, disco, and rock. "),
        Band(name: "Charlie Puth" , label: "Warner Music Australia" , bio: "Charles Otto Puth Jr. (/puːθ/; born December 2, 1991) is an American singer, songwriter, and record producer. His initial exposure came through the viral success of his song videos uploaded to YouTube. Puth initially signed with the record label eleveneleven after performing on The Ellen DeGeneres Show, while songwriting and producing for other artists."),
        Band(name: "Harry Styles" , label: "Columbia Records" , bio: "Harry Edward Styles (born 1 February 1994) is an English singer, songwriter, and actor. His musical career began in 2010 as a solo contestant on the British music competition series The X Factor. Following his elimination, he was brought back to join the boy band One Direction, which went on to become one of the best-selling boy groups of all time before going on an indefinite hiatus in 2016."),
        Band(name: "John Legend" , label: "Sony Music Entertainment" , bio: "John Roger Stephens (born December 28, 1978), known professionally as John Legend, is an American singer, songwriter, pianist, and record producer.")
    ]
    var body: some View {
        NavigationView {
            List(boyband.indices) { (item) in
                NavigationLink(destination: BandDetail(band: self.boyband[item])) {
                    BandRow(band: self.boyband[item])
                }
            }
            .navigationBarTitle("Top Male Singer")
        }
    }
}

struct FemaleSinger: View {
    let boyband = [
        Band(name: "Olivia Rodrigo" , label: "Interscope Records" , bio: "Olivia Isabel Rodrigo (born February 20, 2003) is an American singer-songwriter and actress. She gained recognition in the late 2010s with her lead roles on the Disney television programs Bizaardvark and High School Musical: The Musical: The Series. After signing with Geffen and Interscope Records in 2020, Rodrigo released her debut single Drivers License, which broke various records and became one of the best-selling songs of 2021, propelling her to mainstream fame."),
        Band(name: "Ariana Grande" , label: "Republic Records" , bio: "Ariana Grande-Butera (/ˌɑːriˈɑːnə ˈɡrɑːndeɪ/ AR-ee-AH-nə GRAHN-day; born June 26, 1993) is an American singer, songwriter, and actress. Her four-octave vocal range has received critical acclaim, and her personal life has been the subject of widespread media attention. She has received numerous accolades throughout her career, including two Grammy Awards, one Brit Award, one Bambi Award, two Billboard Music Awards, three American Music Awards, nine MTV Video Music Awards, and 27 Guinness World Records."),
        Band(name: "Billie Eilish" , label: "Polydor Records" , bio: "Billie Eilish Pirate Baird O'Connell (/ˈaɪlɪʃ/ EYE-lish; born December 18, 2001) is an American singer-songwriter. She first gained public attention in 2015 with her debut single Ocean Eyes, written and produced by her brother, Finneas O'Connell, with whom she collaborates on music and live shows. Her commercially successful debut EP Don't Smile at Me (2017) charted in the top 15 in numerous countries, including the US, UK, Canada, and Australia."),
        Band(name: "Taylor Swift" , label: "Universal Music Group" , bio: "Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Her discography spans multiple genres and her narrative songwriting—often inspired by her personal life—has received critical praise and widespread media coverage. Born in West Reading, Pennsylvania, Swift moved to Nashville, Tennessee, at age 14 to become a country artist. She signed a songwriting deal with Sony/ATV Music Publishing in 2004 and a recording contract with Big Machine Records in 2005."),
        Band(name: "Lady Gaga" , label: "Interscope Records" , bio: "Stefani Joanne Angelina Germanotta (/ˈstɛfəni dʒɜːrməˈnɒtə/ (listen) STEF-ən-ee JUR-mə-NOT-ə; born March 28, 1986), known professionally as Lady Gaga, is an American singer, songwriter, and actress. She is known for her image reinventions and musical versatility. Gaga began performing as a teenager, singing at open mic nights and acting in school plays. She studied at Collaborative Arts Project 21, through the New York University Tisch School of the Arts, before dropping out to pursue a career in music. "),
        Band(name: "Miley Cyrus" , label: "Columbia Records" , bio: "Miley Ray Cyrus (/ˈmaɪli ˈsaɪrəs/ MY-lee SY-rəs; born Destiny Hope Cyrus on November 23, 1992) is an American singer, songwriter, and actress. Known for her distinctive raspy voice,[3][4] her music incorporates elements of varied styles and genres, including pop, country pop, hip hop, experimental, and rock. She has attained the most US Billboard 200 top-five albums in the 21st century by a female artist, with a total of thirteen entries.")
    ]
    var body: some View {
        NavigationView {
            List(boyband.indices) { (item) in
                NavigationLink(destination: BandDetail(band: self.boyband[item])) {
                    BandRow(band: self.boyband[item])
                }
            }
            .navigationBarTitle("Top Female Singer")
        }
    }
}

struct Home: View {
    @State private var rotateDegree: Double = 0
    var body: some View {
                Image("MobileBook")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(.degrees(rotateDegree))
                    .animation(
                        Animation.linear(duration: 5)
                            .repeatCount(3, autoreverses: false)
                        )
                    .onAppear {
                        rotateDegree = 360
                    }
            }
        }
        
struct AppView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "music.house.fill")
                    Text("Home")
                }
            MaleSinger()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Male Singer")
                }
            FemaleSinger()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Female Singer")
                }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            AppView()
        }
    }
    
}
