package com.facebook.ads.redexgen.X;

import java.io.File;
/* renamed from: com.facebook.ads.redexgen.X.jQ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2476jQ implements InterfaceC1515Ks<File> {
    @Override // com.facebook.ads.redexgen.X.InterfaceC1515Ks
    public final C1514Kr<File> A3p(File file, LA la2) {
        if (file.exists()) {
            return new C1514Kr<>(true, file);
        }
        return new C1514Kr<>(false, null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1515Ks
    public final void A55(File file, LA la2) {
    }
}
