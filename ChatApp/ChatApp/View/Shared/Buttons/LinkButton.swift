//
//  LinkButton.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 19/05/22.
//

import SwiftUI

struct LinkButton: View {
    var type: LinkButtonType
    var body: some View {
        Button {
            // MARK: - TODO Logic here
        } label: {
            LinkButtonLabel(type: type)
        }
    }
}

struct LinkButtonLabel: View {
    var type: LinkButtonType
    var body: some View {
        HStack {
            Text(type.question)
                .font(.system(size: 16))
            Text(type.answer)
                .font(.system(size: 16))
                .fontWeight(.semibold)
        }
    }
}

struct LinkButton_Previews: PreviewProvider {
    static var previews: some View {
        LinkButton(type: .alreadyHaveAnAccount)
    }
}
