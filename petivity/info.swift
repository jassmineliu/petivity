import SwiftUI
struct info: View {
    
    @Binding var userInfo: [userStuff]
    
  var body: some View {
      
      
          
          
      ZStack{
        Color(red: 227/255, green: 244/255, blue: 244/255)
          .ignoresSafeArea()
        VStack(spacing: 2.0) {
          Text("What is Petivity?")
            .font(.custom("Times New Roman", size: 50))
            .fontWeight(.bold)
            .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
            .padding(.vertical, 26.0)
          Text("Petivity is an app designed to help you track how much time you spend on specific tasks such as studying, doing chores, or completing other daily activities. It acts as a virtual pet that motivates and supports you by rewarding you with coins as you track your time. These coins can be used to feed and care for your virtual pet.")
            .font(.custom("Courier New", size: 20))
            .fontWeight(.medium)
            .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
            .multilineTextAlignment(.center)
            .padding(.horizontal, 20.0)
      }
          
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                    Image("home")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(height:50)
                }
              
            }
        } //end toolbar
    }
  } // body
    
        
    
}
// #Preview {
//  info()
//}









