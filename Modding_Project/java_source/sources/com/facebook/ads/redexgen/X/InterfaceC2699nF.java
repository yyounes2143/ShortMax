package com.facebook.ads.redexgen.X;

import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.nF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public interface InterfaceC2699nF extends InterfaceC10632s, CX, ET, C9Q {
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Temporary Noop Implementation until we completely migrate")
    public static final InterfaceC2699nF A00 = new InterfaceC2699nF() { // from class: com.facebook.ads.redexgen.X.9S
        @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
        public final /* synthetic */ void ACv(C2745o0 c2745o0) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
        public final /* synthetic */ void ACw(List list) {
        }

        @Override // com.facebook.ads.redexgen.X.CX
        public final /* synthetic */ void AD6(int i10, C2643mL c2643mL, CG cg2) {
        }

        @Override // com.facebook.ads.redexgen.X.CX
        public final /* synthetic */ void ADw(int i10, C2643mL c2643mL, CE ce2, CG cg2) {
        }

        @Override // com.facebook.ads.redexgen.X.CX
        public final /* synthetic */ void ADy(int i10, C2643mL c2643mL, CE ce2, CG cg2, Object obj, Object obj2) {
        }

        @Override // com.facebook.ads.redexgen.X.CX
        public final /* synthetic */ void AE1(int i10, C2643mL c2643mL, CE ce2, CG cg2, IOException iOException, boolean z10) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
        public final /* synthetic */ void AEb(C2780ob c2780ob) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
        public final /* synthetic */ void AEd(C2782od c2782od) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
        public final /* synthetic */ void AEf(boolean z10, int i10) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
        public final /* synthetic */ void AFB() {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
        public final /* synthetic */ void AFQ(Timeline timeline, int i10) {
            AbstractC10622r.A00(this, timeline, i10);
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC10632s
        public final /* synthetic */ void AFU(C2751o6 c2751o6) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2699nF
        public final void AC5() {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2699nF
        public final void AIv(InterfaceC10702z interfaceC10702z, Looper looper) {
        }
    };

    void AC5();

    void AIv(InterfaceC10702z interfaceC10702z, Looper looper);
}
