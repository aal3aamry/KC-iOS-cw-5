//
//  ContentView.swift
//  myGrocery
//
//  Created by عبدالرحمن العامري on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var myGrocery = ["cookies","icetea","juce","lays","water"]
    @State var newItem = ""

    var body: some View {
        
        ZStack{
           
            
        VStack{
        List(myGrocery, id:\.self) { i in
                
            HStack{
                
                Image(i)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                Text(i)
            }
            .background(Color.white)
            
            
        }
            HStack{
                
                Button{
                    myGrocery.append(newItem)
                }
                
                
            label:{
                Image(systemName: "plus")
                    .padding(.all)
                    .frame(width: 50, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            .padding(.all)

                
                
                TextField("Add Items", text: $newItem)
                
                
                Button{
                    
                    
                    /*if myGrocery == myGrocery.remove(at: 0)
                    {
                        */
                    
                    myGrocery.remove(at: 0)
                    
                }
                    
            label: {
                
                Image(systemName: "minus")
                    .padding(.all)
                    .frame(width: 50, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())

            }
            .padding(.all)
                
                
                
    }
        }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

