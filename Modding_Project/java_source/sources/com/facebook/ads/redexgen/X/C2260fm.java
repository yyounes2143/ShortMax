package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.NativeAd;
/* renamed from: com.facebook.ads.redexgen.X.fm  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2260fm implements InterfaceC2011bi {
    public static String[] A03 = {"nDiRY7f5TVWQOdU6I2mqi9PFa0bJ0VdN", "dUUtDl8unUO3GnPy3lwgtNvfo3F9XuVE", "auWwlwtRUPVHuGctx8NQwZ9fHxwXm1Rl", "TBzFY5XPxTfovmrmdBuO6vWMd6W8Cva2", "LKANgRtOSZEoLNHfrBEFH87LShAEPYie", "UCBlHB7WfBTqWuynAgT0g", "VPae1XPQy5IfYkfssFJoJg5Ye50RabOh", "Wz70ndlImsTWQI2daID25L24SXF8SnWJ"};
    public final /* synthetic */ NativeAd A00;
    public final /* synthetic */ C2255fh A01;
    public final /* synthetic */ C1652Qc A02;

    public C2260fm(C2255fh c2255fh, C1652Qc c1652Qc, NativeAd nativeAd) {
        this.A01 = c2255fh;
        this.A02 = c1652Qc;
        this.A00 = nativeAd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2011bi
    public final void AAe() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2011bi
    public final void AD8(C5G c5g) {
        new Handler(Looper.getMainLooper()).postDelayed(new C2261fn(this, c5g), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2011bi
    public final void ADO() {
        C5G c5g;
        C5G c5g2;
        c5g = this.A01.A0A;
        if (c5g != null) {
            c5g2 = this.A01.A0A;
            String[] strArr = A03;
            if (strArr[4].charAt(31) == strArr[0].charAt(31)) {
                throw new RuntimeException();
            }
            A03[1] = "TOeEN4NbTJF6yCcoA7wHZFJASn52oXHD";
            c5g2.A08();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2011bi
    public final void AFS(View view, MotionEvent motionEvent) {
        C2111dL c2111dL;
        boolean A0J;
        XH A1A = this.A02.A1A();
        c2111dL = this.A01.A07;
        A1A.A06(c2111dL, motionEvent, view, view);
        if (motionEvent.getAction() == 1) {
            A0J = this.A01.A0J(this.A00);
            if (!A0J && this.A02.A13() != null) {
                this.A02.A13().onClick(view);
            }
        }
    }
}
