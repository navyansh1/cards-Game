//
//  ContentView.swift
//  cardsGame
//
//  Created by Navyansh Kothari on 03/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playercard="card2"
    @State var cpucard="card13"
    @State var playerscore=0
    @State var cpuscore=0
    //we put @state which is a property rapper, it is a piece of info which the UI depends and uses, like Image(playercard)

    
    var body: some View {

        ZStack{

            Image("background-plain")
            VStack{
                Spacer()
                Image("logo")
                    .padding(.top, 40.0)
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
              
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player 1")
                            .padding(.bottom, 8.0)
                        Text(String(playerscore))
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 8.0)
                        Text(String(cpuscore))
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 20.0)
                
               
                
                Text("      Made by Navyansh      ")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .background(LinearGradient(colors: [Color .red, Color.teal], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(20)
                    .padding(.bottom, 40.0)
                    
                    
                
                Spacer()
                
            }
            //hehe
        }
    }
    
    func deal(){
        //randomise cpu cards
        var cpucardvalue=Int.random(in: 2...14)
        cpucard="card" + String(cpucardvalue)
        
        //randomise player cards
        var playercardvalue=Int.random(in: 2...14)
        playercard="card" + String(playercardvalue)
        
        //update the scores
        if playercardvalue>cpucardvalue{
            playerscore+=1
        }
        else if cpucardvalue>playercardvalue{
            cpuscore+=1
        }
        else{
            //Tie score
        }
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
