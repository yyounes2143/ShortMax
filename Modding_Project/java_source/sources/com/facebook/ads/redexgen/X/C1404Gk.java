package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.Gk  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1404Gk {
    public final C4J A00 = new C4J(10);

    public final Metadata A00(InterfaceC2585lN interfaceC2585lN, InterfaceC1422Hc interfaceC1422Hc) throws IOException {
        int tagLength = 0;
        Metadata metadata = null;
        while (true) {
            try {
                interfaceC2585lN.AG9(this.A00.A0l(), 0, 10);
                this.A00.A0f(0);
                if (this.A00.A0K() != 4801587) {
                    break;
                }
                this.A00.A0g(3);
                int A0H = this.A00.A0H();
                int framesLength = A0H + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[framesLength];
                    System.arraycopy(this.A00.A0l(), 0, bArr, 0, 10);
                    interfaceC2585lN.AG9(bArr, 10, A0H);
                    metadata = new C12058i(interfaceC1422Hc).A0S(bArr, framesLength);
                } else {
                    interfaceC2585lN.A3z(A0H);
                }
                tagLength += framesLength;
            } catch (EOFException unused) {
            }
        }
        interfaceC2585lN.AI1();
        interfaceC2585lN.A3z(tagLength);
        return metadata;
    }
}
