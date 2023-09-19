//
//  HW2App.swift
//  HW2
//
//  Created by Marisol Rodriguez on 9/11/23.
//

import SwiftUI

@main
struct HW2App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("List")
                    }

                MoviePosterCollectionView()
                    .tabItem {
                        Image(systemName: "photo.on.rectangle")
                        Text("Posters")
                    }
            }
        }
    }
}

let listMovies: [Movie] = [
    Movie(
        title: "Talk to Me",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/kdPMUMJzyYAc4roD52qavX0nLIC.jpg")!,
        overview: "When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/3tzPSJiCPqacAgRsMkMPof2ZinL.jpg")!,
        vote_average: 7.3,
        vote_count: 4592,
        popularity: 4755.68
    ),
    Movie(
        title: "Barbie",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
        overview: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/ctMserH8g2SeOAnCw5gFjdQF8mo.jpg")!,
        vote_average: 7.3,
        vote_count: 4122,
        popularity: 3534.928
    ),
    Movie(
        title: "Meg 2: The Trench",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
        overview: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/8pjWz2lt29KyVGoq1mXYu6Br7dE.jpg")!,
        vote_average: 7,
        vote_count: 1773,
        popularity: 3167.597
    ),
    Movie(
        title: "The Nun II",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!,
        overview: "In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/53z2fXEKfnNg2uSOPss2unPBGX1.jpg")!,
        vote_average: 6.6,
        vote_count: 193,
        popularity: 2374.554
    ),
    Movie(
        title: "Kandahar",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/lCanGgsqF4xD2WA5NF8PWeT3IXd.jpg")!,
        overview: "After his mission is exposed, an undercover CIA operative stuck deep in hostile territory in Afghanistan must fight his way out, alongside his Afghan translator, to an extraction point in Kandahar, all whilst avoiding elite enemy forces and foreign spies tasked with hunting them down.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/c6Splshb8lb2Q9OvUfhpqXl7uP0.jpg")!,
        vote_average: 6.8,
        vote_count: 488,
        popularity: 2297.257
    ),
    Movie(
        title: "Elemental",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/6oH378KUfCEitzJkm07r97L0RsZ.jpg")!,
        overview: "In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/4fLZUr1e65hKPPVw0R3PmKFKxj1.jpg")!,
        vote_average: 7.8,
        vote_count: 2085,
        popularity: 1742.526
    ),
    Movie(
        title: "Teenage Mutant Ninja Turtles: Mutant Mayhem",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/ueO9MYIOHO7M1PiMUeX74uf8fB9.jpg")!,
        overview: "After years of being sheltered from the human world, the Turtle brothers set out to win the hearts of New Yorkers and be accepted as normal teenagers through heroic acts. Their new friend April O'Neil helps them take on a mysterious crime syndicate, but they soon get in over their heads when an army of mutants is unleashed upon them.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/w2nFc2Rsm93PDkvjY4LTn17ePO0.jpg")!,
        vote_average: 7.3,
        vote_count: 498,
        popularity: 1095.712
    ),
    Movie(
        title: "Transformers: Rise of the Beasts",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/gPbM0MK8CP8A174rmUwGsADNYKD.jpg")!,
        overview: "When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/2vFuG6bWGyQUzYS9d69E5l85nIz.jpg")!,
        vote_average: 7.5,
        vote_count: 3170,
        popularity: 1087.879
    ),
    Movie(
        title: "Sound of Freedom",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/kSf9svfL2WrKeuK8W08xeR5lTn8.jpg")!,
        overview: "The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/waBWlJlMpyFb7STkFHfFvJKgwww.jpg")!,
        vote_average: 8,
        vote_count: 450,
        popularity: 1080.556
    ),
    Movie(
        title: "Strays",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!,
        overview: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/1HzL603WOer58xtnrRYdSIL5K04.jpg")!,
        vote_average: 7.5,
        vote_count: 290,
        popularity: 955.292
    ),
    Movie(
        title: "After Everything",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/gZLGCibvFY4zmt8sWUZcbBTHRtk.jpg")!,
        overview: "Besieged by writer’s block and the crushing breakup with Tessa, Hardin travels to Portugal in search of a woman he wronged in the past – and to find himself. Hoping to win back Tessa, he realizes he needs to change his ways before he can make the ultimate commitment.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/jkKVLzLWjSvTnc84VzeljhSy6j8.jpg")!,
        vote_average: 6.4,
        vote_count: 18,
        popularity: 936.266
    ),
    Movie(
        title: "The White Storm 3: Heaven or Hell",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/kPjZsEni0KF0IXGXh0kaxNESdGE.jpg")!,
        overview: "Hong Kong police agent Cheung (by Aaron Kwok) works undercover in Kang’s (by Sean Lau) drug cartel, while another undercover cop Au (by Louis Koo) successfully earns their trust in an incident, a brotherly-bond is built among the three. After the Police busts the syndicate in Hong Kong, Kang subsequently hides away in the Golden Triangle, by chance he receives a tip-off about the betrayal within his circle of trust…",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/2a9DvjXQQezV0sWqJbIN2mDLgZZ.jpg")!,
        vote_average: 6.2,
        vote_count: 13,
        popularity: 766.49
    ),
    Movie(
        title: "The Last Voyage of the Demeter",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/nrtbv6Cew7qC7k9GsYSf5uSmuKh.jpg")!,
        overview: "The crew of the merchant ship Demeter attempts to survive the ocean voyage from Carpathia to London as they are stalked each night by a merciless presence onboard the ship.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/qEm4FrkGh7kGoEiBOyGYNielYVc.jpg")!,
        vote_average: 7.4,
        vote_count: 606,
        popularity: 739.234
    ),
    Movie(
        title: "The Little Mermaid",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg")!,
        overview: "The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/AeR5k8Sp3zc2Ql4tT6CmgqspsEq.jpg")!,
        vote_average: 6.6,
        vote_count: 2021,
        popularity: 722.316
    ),
    Movie(
        title: "The Super Mario Bros. Movie",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg")!,
        overview: "While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/9n2tJBplPbgR2ca05hS5CKXwP2c.jpg")!,
        vote_average: 7.8,
        vote_count: 6623,
        popularity: 669.766
    ),
    Movie(
        title: "Mob Land",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/mcz8oi9oCgq1wkA3Wz2kluE94pE.jpg")!,
        overview: "A sheriff tries to keep the peace when a desperate family man violently robs a pill mill with his brother-in-law, alerting an enforcer for the New Orleans mafia.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/3mrli3xsGrAieQks7KsBUm2LpCg.jpg")!,
        vote_average: 5.9,
        vote_count: 20,
        popularity: 651.329
    ),
    Movie(
        title: "Oppenheimer",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg")!,
        overview: "The story of J. Robert Oppenheimer’s role in the development of the atomic bomb during World War II.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/fm6KqXpk3M2HVveHwCrBSSBaO0V.jpg")!,
        vote_average: 8.3,
        vote_count: 3543,
        popularity: 632.226
    ),
    Movie(
        title: "No Hard Feelings",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/gD72DhJ7NbfxvtxGiAzLaa0xaoj.jpg")!,
        overview: "On the brink of losing her childhood home, Maddie discovers an intriguing job listing: wealthy helicopter parents looking for someone to “date” their introverted 19-year-old son, Percy, before he leaves for college. To her surprise, Maddie soon discovers the awkward Percy is no sure thing.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/rRcNmiH55Tz0ugUsDUGmj8Bsa4V.jpg")!,
        vote_average: 7.1,
        vote_count: 1260,
        popularity: 591.346
    ),
    Movie(
        title: "I Am Rage",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/iclmQs4O5dy7EAkbykI1qkowfK2.jpg")!,
        overview: "An ancient cult embroiled in a sinister blood trade makes the deadly mistake of abducting a young woman with a violent, shocking past.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/2zzaJ9jzyK1Am8XoS0dFjmP8V0L.jpg")!,
        vote_average: 6.5,
        vote_count: 11,
        popularity: 546.906
    ),
    Movie(
        title: "The Equalizer 3",
        poster_path: URL(string: "https://image.tmdb.org/t/p/original/p0WBnzgyqxMxbF4UGiqTwBLnwht.jpg")!,
        overview: "Robert McCall finds himself at home in Southern Italy but he discovers his friends are under the control of local crime bosses. As events turn deadly, McCall knows what he has to do: become his friends' protector by taking on the mafia.",
        backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/h0nmmdFAdBjQttN8Y0q825MWzZp.jpg")!,
        vote_average: 6.9,
        vote_count: 187,
        popularity: 513.883
    ),
]
