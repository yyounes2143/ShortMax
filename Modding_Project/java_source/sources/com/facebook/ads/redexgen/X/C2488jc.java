package com.facebook.ads.redexgen.X;

import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.jc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2488jc implements GP {
    public static String[] A04 = {"sdKdmhexVnrlWGhX9TH5KtuHBxlX2", "B98Zkm438dg3YkwTFsWcwjYsIqopE2cW", "q7DFl2FydsE0DWNk8QJk98tFdBPGU17r", "uw89PlDwsU5CTp5ALy1o", "HmpI", "x0Unc4LQNUVImDERNKiE", "Klo4tVDdc3zNBBgsT3eAMryjwXw3w", "mmy2vPNb8zCZX"};
    public final int A00;
    public final int A01;
    public final C4J A02 = new C4J();
    public final C4R A03;

    public C2488jc(int i10, C4R c4r, int i11) {
        this.A00 = i10;
        this.A03 = c4r;
        this.A01 = i11;
    }

    private GN A00(C4J c4j, long j10, long j11) {
        int A00;
        int A002;
        int A0A = c4j.A0A();
        long j12 = -1;
        long j13 = -1;
        long lastPcrTimeUsInRange = -9223372036854775807L;
        while (c4j.A07() >= 188 && (A002 = (A00 = AbstractC1503Kg.A00(c4j.A0l(), c4j.A09(), A0A)) + MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) <= A0A) {
            long A01 = AbstractC1503Kg.A01(c4j, A00, this.A00);
            if (A01 != -9223372036854775807L) {
                long A06 = this.A03.A06(A01);
                if (A06 > j10) {
                    String[] strArr = A04;
                    if (strArr[1].charAt(12) != strArr[2].charAt(12)) {
                        String[] strArr2 = A04;
                        strArr2[3] = "aExFpEIrb6zE8t35yvld";
                        strArr2[5] = "jMLoot3yN0lnttWSwPI3";
                        if (lastPcrTimeUsInRange == -9223372036854775807L) {
                            return GN.A04(A06, j11);
                        }
                        return GN.A03(j11 + j12);
                    }
                    throw new RuntimeException();
                }
                int i10 = ((A06 + 100000) > j10 ? 1 : ((A06 + 100000) == j10 ? 0 : -1));
                String[] strArr3 = A04;
                if (strArr3[1].charAt(12) != strArr3[2].charAt(12)) {
                    String[] strArr4 = A04;
                    strArr4[3] = "ZHgwZuqrkfLn2FTfbKUV";
                    strArr4[5] = "99YI6qOyfmrUQVvNk1ZB";
                    if (i10 > 0) {
                        return GN.A03(A00 + j11);
                    }
                    j12 = A00;
                    lastPcrTimeUsInRange = A06;
                } else {
                    A04[4] = "5ynNf";
                    if (i10 > 0) {
                        return GN.A03(A00 + j11);
                    }
                    j12 = A00;
                    lastPcrTimeUsInRange = A06;
                }
            }
            c4j.A0f(A002);
            j13 = A002;
        }
        if (lastPcrTimeUsInRange != -9223372036854775807L) {
            return GN.A05(lastPcrTimeUsInRange, j11 + j13);
        }
        return GN.A03;
    }

    @Override // com.facebook.ads.redexgen.X.GP
    public final void AFA() {
        this.A02.A0i(AbstractC10974a.A07);
    }

    @Override // com.facebook.ads.redexgen.X.GP
    public final GN AIC(InterfaceC2585lN interfaceC2585lN, long j10) throws IOException {
        long A8f = interfaceC2585lN.A8f();
        int min = (int) Math.min(this.A01, interfaceC2585lN.A8G() - A8f);
        this.A02.A0d(min);
        interfaceC2585lN.AG9(this.A02.A0l(), 0, min);
        return A00(this.A02, j10, A8f);
    }
}
