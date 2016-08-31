//
//  NSTextAttachment+CanvasText.swift
//  CanvasText
//
//  Created by Sam Soffes on 8/31/16.
//  Copyright © 2016 Canvas Labs, Inc. All rights reserved.
//

import X

extension NSTextAttachment {
	convenience init(image: Image, size: CGSize) {
		self.init()

		bounds = CGRect(origin: .zero, size: size)

		#if os(macOS)
			// TODO: Fix scale
			let cell = NSTextAttachmentCell(imageCell: image)
			attachmentCell = cell
			cell.attachment = self

		#else
			self.image = image
		#endif
	}
}