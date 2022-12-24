# Touchdown
Pequeno App de comércio foco era trabalhar com conceito Observable  e melhorar criação de interface

## Feature
- Aprendi de criar meu próprio Shape de uma view
- Dessa maneira não fico limitado aos fornecidos pelo time da Apple
- Para o shape encaixar perfeitamente precisa apenas colocar padding no topo 
- Uso do z index e fundamental para fazer com que a imagem fique sobre o shape
- Para criar um custom  navigation bar eu usei o GemotryReader,  com ele consigo acesso ao safe area
- Repara que coloco ignore safea dentro do Geometry caso contrario não funcionara

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
- Trabelhei novamente com o conceito de Observer 
- Havia Anteriormente usado o ObservedObject
- Desta vez usei o EnvironmentObject
- Quando preciso acesso de minha classe em vários lugares utilizo o [environmentObject](https://stackoverflow.com/questions/63343819/what-is-the-difference-between-environmentobject-and-observedobject)
- Importante a tela anterior onde sera usado o environmente precisa ser chamado no preview
- Isso e essencial para Swift entender o estado antecessor do enviroment
- Minha tela inicial era o ContentView, porem uma Struct anterior instanciava ela, neste caso e a própria Window
- Então preciso da propriedade  enviroment nesta Struct
- Repara que a screen ProductDetail ira possuir acesso ao valor anterior de Home não preciso iniciar a Classe
- Precisa também as Struct  componetizadas  ter no preview o enviroment

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




