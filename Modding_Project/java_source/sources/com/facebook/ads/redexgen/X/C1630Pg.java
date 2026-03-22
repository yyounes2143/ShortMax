package com.facebook.ads.redexgen.X;

import android.content.pm.PackageManager;
import android.util.Base64;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.Pg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1630Pg extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public static String[] A03 = {"rr4pEtDer0K6hYSMypGI4SVA4", "qv2m0fG", "2OIR1Yv9Y7RzsB5MK8fjyIRTaeFBsJy", "02JyCSWW55zn1AQ6h7F4FoBumR9MK", "PV14KCf6Ep37wllo1HHxqudNmgtveNCD", "8xcTKK5W7UNHePnVaLckl2F", "lGpL0wggi73mqN0I3cVtORcNpouSV80j", "84RqxglWV7M6OmuSAB1gnMVf4"};
    public final /* synthetic */ VR A00;
    public final /* synthetic */ VU A01;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{121, 115, 97, 124, ByteCompanionObject.MAX_VALUE, 112, 112, 123, 108, 97, 117, 123, 103, 18, 51, 124, 50, 57, 40, 43, 51, 46, 55, 124, 63, 51, 50, 50, 57, 63, 40, 53, 51, 50};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C2111dL c2111dL;
        C2111dL c2111dL2;
        C2111dL c2111dL3;
        C2111dL c2111dL4;
        C2111dL c2111dL5;
        long j10;
        C2111dL c2111dL6;
        String str;
        Map<? extends String, ? extends String> map;
        InterfaceC2191ee A032;
        C2111dL c2111dL7;
        C2111dL c2111dL8;
        C2111dL c2111dL9;
        C2111dL c2111dL10;
        long j11;
        this.A01.A00 = System.currentTimeMillis();
        c2111dL = this.A01.A05;
        if (XE.A00(c2111dL) == XD.A07) {
            this.A01.A0A();
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String A00 = A00(13, 21, 62);
            c2111dL10 = this.A01.A05;
            LH A0F = c2111dL10.A0F();
            j11 = this.A01.A01;
            A0F.A3O(XG.A01(j11), adErrorType.getErrorCode(), A00, adErrorType.isPublicError());
            this.A01.A0E(new V1(adErrorType, A00));
            return;
        }
        c2111dL2 = this.A01.A05;
        T5.A08(c2111dL2);
        c2111dL3 = this.A01.A05;
        AbstractC1693Rr.A07(c2111dL3);
        TY A002 = TY.A00();
        c2111dL4 = this.A01.A05;
        boolean z10 = true;
        Map<String, String> A0A = this.A00.A0A(A002.A01(c2111dL4, true).A7q(this.A00.A05()));
        this.A01.A03 = A0A;
        try {
            c2111dL7 = this.A01.A05;
            PackageManager packageManager = c2111dL7.getPackageManager();
            if (packageManager != null) {
                String A003 = A00(1, 12, 92);
                StringBuilder sb2 = new StringBuilder();
                c2111dL8 = this.A01.A05;
                StringBuilder append = sb2.append(c2111dL8.getPackageName()).append(A00(0, 1, 59));
                c2111dL9 = this.A01.A05;
                A0A.put(A003, new String(Base64.encode(append.append(packageManager.getInstallerPackageName(c2111dL9.getPackageName())).toString().getBytes(), 2)));
            }
        } catch (Exception unused) {
        }
        try {
            if (this.A00.A07() != V6.A04 && this.A00.A07() != V6.A06 && this.A00.A07() != V6.A05 && this.A00.A07() != null) {
                z10 = false;
            }
            c2111dL6 = this.A01.A05;
            InterfaceC2190ed A022 = C2208ev.A02(z10, c2111dL6);
            str = this.A01.A07;
            C2204er c2204er = new C2204er();
            map = this.A01.A03;
            byte[] A08 = c2204er.A05(map).A08();
            A032 = this.A01.A03(XG.A00(), this.A00);
            A022.AGE(str, A08, A032);
        } catch (Exception e10) {
            AdErrorType adErrorType2 = AdErrorType.AD_REQUEST_FAILED;
            String message = e10.getMessage();
            c2111dL5 = this.A01.A05;
            LH A0F2 = c2111dL5.A0F();
            j10 = this.A01.A01;
            A0F2.A3O(XG.A01(j10), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
            VU vu2 = this.A01;
            V1 A01 = V1.A01(adErrorType2, message);
            if (A03[3].length() != 29) {
                throw new RuntimeException();
            }
            A03[3] = "TysUXKeFt8WChM0CalDFmuBH7ELd8";
            vu2.A0E(A01);
        }
    }

    static {
        A01();
    }

    public C1630Pg(VU vu2, VR vr2) {
        this.A01 = vu2;
        this.A00 = vr2;
    }
}
