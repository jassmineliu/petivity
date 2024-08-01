import SwiftUI
import SwiftData
struct petFeatures: View {
  @State var petName = ""
  @State var Response = "What's your pet's name?"
    
    @Environment(\.modelContext) var modelContext
    @Binding var userInfo: [userStuff]
    
    
  var body: some View {
    ZStack {
      Color(red: 227/255, green: 244/255, blue: 244/255)
        .ignoresSafeArea()
      VStack {
        Text("Name Pet")
          .fontWeight(.medium)
          .font(.custom("Times New Roman", size: 50))
          .foregroundColor(Color (red: 70/255, green: 134/255, blue: 133/255))
          .padding(.top)
        Text(Response)
          .font(.custom("Courier New", size: 20))
          .fontWeight(.bold)
          .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
          .padding()
        Spacer()
          TextField("Enter pet Name", text : $userInfo[0].petName )
          .padding()
          .background(Color.white)
          .cornerRadius(8)
          .shadow(radius: 5)
          .font(.system(size : 20))
          .padding(.horizontal)
        Button {
            Response = "Welcome, \(userInfo[0].petName)!"
        } label: {
          Text ("Save pet name!")
          .padding()
          .background(Color(red: 70/255, green: 134/255, blue: 133/255))
          .foregroundColor(Color(red: 227/255, green: 244/255, blue: 244/255))
          .font(.custom("Courier New", size: 20))
          .fontWeight(.bold)
          .cornerRadius(8)
          .shadow(radius: 5)
        }
        Image("Dragon")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 200.0, height: 200.0)
          .padding(.top, 20)
        Spacer()
        }
      .padding()
      .frame(maxWidth: .infinity, maxHeight: .infinity)
//      List(petNames, id: \.self) { petName in
//        Text(petName)
//          .font(.system(size: 18))
      }
//    .padding()
//    private fun addPetName() {
//      guard !response.isEmpty else { return}
//      //Don't add if the input is empty
//      petNames.append(response)
//      // Add the pet name to the list
//      response = ""
//      //clear the input field
//    }
//  }
//  struct PetFeatures_Previews: PreviewProvider {
//    static var previews: some View {
//      PetFeatures()
//    }
  }
}
//#Preview {
//  petFeatures()
//}









