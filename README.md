# Touchdown
Pequeno app de ecommerce foco era trabalhar com conceito Observable  e mlehorar criacao de interface

## Feature
- Aprendi maneira de criar meu proprio Shape de uma view
- Dessa maneira nao fico limitado aos forneceidos pelo time da Apple
- Para o shape encaixar perfeitamente precisa apenas colocar padding no topo 
- Uso do z index e fundametal para fazer com que a imagem fique sobre o shape
- Para criar um custom safe area eu usei o GemotryReader com ele consigo acesso ao safe area
- Repara que coloco ignore safea dentro do Gemotry caso acontrario nao funcionara

```swift
//criando um shape
struct CustomShape: Shape {
	func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(roundedRect: rect,byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
		return Path(path.cgPath)
	}
	
}

struct CustomShape_Previews: PreviewProvider {
	static var previews: some View {
		CustomShape()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}

//usando o shape
		
GeometryReader { geometry in
			VStack(alignment: .leading,spacing: 16) {
				
				NavigationBarDetailView()
					.padding(.top,geometry.safeAreaInsets.self.top)
					.padding(.horizontal)
			
				
				HeaderDetailView()
					.padding(.horizontal)

				
				
				TopDetailView()
					.padding(.horizontal)
					.zIndex(1)
				
				ScrollView(.vertical,showsIndicators: false) {
					
					RatingsSizeDetailView()
						.padding(.horizontal)
						.padding(.bottom,7)
					
					Text(shop.product?.description ?? sampleProduct.description)
						.font(.system(.body,design: .rounded))
						.foregroundColor(.gray)
						.padding(.horizontal)
						.padding(.bottom, 5)
						.multilineTextAlignment(.leading)
					
					QuantityFavoriteView()
						.padding(.horizontal)
					
					
					AddItemCartView()
						.padding(.bottom,10)
						.padding(.horizontal)
					
					Spacer()
				}// ScroolView
				.background(
					Color.white
						.clipShape(CustomShape())
					//precisa ser top se colocar vertical perde o shape
						.padding(.top,-105)
				)
				.zIndex(0)
				
				
				
				
			}// Vstack
			.edgesIgnoringSafeArea(.all)
			.background(
				Color(red: shop.product?.red ?? sampleProduct.red,
							green: shop.product?.green ?? sampleProduct.green,
							blue: shop.product?.blue ?? sampleProduct.blue)
				.ignoresSafeArea(.all)
			)
			
		}//Geometry
		
	}    

```

## 
- Trabelhei novametne com o conceito de Observer 
- Anteriormente havia usado o ObservedObject
- Desta vez usei o EnvironmentObject
- Quando preciso acesso de minha classe em varios lugares utilizo o [environmentObject](https://stackoverflow.com/questions/63343819/what-is-the-difference-between-environmentobject-and-observedobject)
- Importante a tela anteior onde sera usado o environmente precisa ser chamado no preview
- Isso e essencial para swift entender o estado atecessor do enviromente
- Minha tela inicial era o ContentView porem uma tela anterior a chavma que e a principal a do Window
- Entao preciso acionar la o enviroment
- Repaara que a screen ProductDetail ira possuir acesso ao valor anterior em Home nao preciso necessarioametne instanciar a Classe
- Precisa tambem as Struct componetneziadas ter no preview o enviroment

```swift
//Uma tela antes da home
import SwiftUI

@main
struct TouchdownApp: App {
	var body: some Scene {
		WindowGroup {
			ContentView()
				.environmentObject(Shop())
		}
	}
}

//Home
struct ContentView: View {
	@EnvironmentObject var shop: Shop;
	
	var body: some View {
      //logica
  }
}


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.environmentObject(Shop())
	}
}


//ProductDetail
struct ProductDetailView: View {
	@EnvironmentObject var shop: Shop;
	
	var body: some View {
     NavigationBarDetailView()
					.padding(.top,geometry.safeAreaInsets.self.top)
					.padding(.horizontal)
  }
}


struct ProductDetailView_Previews: PreviewProvider {
	static var previews: some View {
		ProductDetailView()
			.environmentObject(Shop())
		
	}
}


//Struct componentizada
struct NavigationBarDetailView: View {
	//MARK: - Properties
	@EnvironmentObject var shop: Shop;
	
	var body: some View {
		HStack {
			Image(systemName: "chevron.left")
				.foregroundColor(.white)
				.font(.title2)
				.onTapGesture {
					withAnimation(.easeInOut) {
						shop.showDetailView = false
						shop.product = nil
					}
				}
			Spacer()
			Image(systemName: "cart")
				.foregroundColor(.white)
				.font(.title2)
			
		}
	}
}

struct HeaderDetailView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationBarDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.background(.gray)
	}
}

//classe do observable
import Foundation

class Shop: ObservableObject  {
	
	@Published var product: ProductModel? = nil
	@Published var showDetailView: Bool = false
	
}


```




