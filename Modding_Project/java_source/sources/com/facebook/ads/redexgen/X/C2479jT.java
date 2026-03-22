package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.facebook.ads.redexgen.X.jT  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2479jT implements GX {
    public static byte[] A07;
    public static String[] A08 = {"DwCwNe", "sWjhkz5Jk0aFlWxF8RAhYepliqmDVBH5", "fJB4aZ6fjAPSNUZta8hrgw0qJ7r8hoM5", "QGFmFhkJVom57VKObFa8uqUV9", "rnOb7nHa90E2wPIfOCxC", "at6D0iA1D4bxl", "SWjjSn0lfORi", "B3tBBFyQt38AAQleoY5s"};
    public static final InterfaceC1395Gb A09;
    public GY A04;
    public H1 A05;
    public InterfaceC1506Kj A06;
    public int A01 = 0;
    public long A03 = -1;
    public int A00 = -1;
    public long A02 = -1;

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 34);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A07 = new byte[]{87, 91, 2, 39, 50, 39, 102, 35, 62, 37, 35, 35, 34, 53, 102, 47, 40, 54, 51, 50, 102, 42, 35, 40, 33, 50, 46, 124, 102, 39, 28, 1, 7, 2, 2, 29, 0, 6, 23, 22, 82, 37, 51, 36, 82, 20, 29, 0, 31, 19, 6, 82, 6, 11, 2, 23, 72, 82, ByteCompanionObject.MAX_VALUE, 68, 89, 95, 90, 90, 69, 88, 94, 79, 78, 10, 69, 88, 10, 95, 68, 88, 79, 73, 69, 77, 68, 67, 80, 79, 78, 10, 93, 75, 92, 10, 76, 67, 70, 79, 10, 94, 83, 90, 79, 4, 103, 81, 70, 117, 72, 68, 66, 81, 83, 68, 95, 66, 17, 5, 20, 25, 31, 95, 23, 71, 65, 65, 93, 17, 28, 17, 7, ByteCompanionObject.MAX_VALUE, 107, 122, 119, 113, 49, 121, 41, 47, 47, 51, 115, 114, ByteCompanionObject.MAX_VALUE, 105, 55, 35, 50, 63, 57, 121, 36, 55, 33};
    }

    static {
        A03();
        A09 = new InterfaceC1395Gb() { // from class: com.facebook.ads.redexgen.X.jW
            @Override // com.facebook.ads.redexgen.X.InterfaceC1395Gb
            public final GX[] A5F() {
                return C2479jT.A08();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1395Gb
            public final /* synthetic */ GX[] A5G(Uri uri, Map map) {
                return AbstractC1394Ga.A01(this, uri, map);
            }
        };
    }

    private int A00(InterfaceC2585lN interfaceC2585lN) throws IOException {
        C3M.A08(this.A02 != -1);
        return ((InterfaceC1506Kj) C3M.A01(this.A06)).AI9(interfaceC2585lN, this.A02 - interfaceC2585lN.A8f()) ? -1 : 0;
    }

    @EnsuresNonNull({"extractorOutput", "trackOutput"})
    private void A02() {
        C3M.A02(this.A05);
    }

    private void A04(InterfaceC2585lN interfaceC2585lN) throws IOException {
        C3M.A08(interfaceC2585lN.A8f() == 0);
        int i10 = this.A00;
        if (A08[5].length() != 13) {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[7] = "oJOrgM3DzNUfWcxP3ghI";
        strArr[4] = "cZhhMb4kvP2y4vGeSU9A";
        if (i10 != -1) {
            interfaceC2585lN.AJJ(this.A00);
            this.A01 = 4;
        } else if (AbstractC1510Kn.A06(interfaceC2585lN)) {
            interfaceC2585lN.AJJ((int) (interfaceC2585lN.A8a() - interfaceC2585lN.A8f()));
            this.A01 = 1;
        } else {
            throw C10532i.A01(A01(58, 42, 8), null);
        }
    }

    @RequiresNonNull({"extractorOutput", "trackOutput"})
    private void A05(InterfaceC2585lN interfaceC2585lN) throws IOException {
        C1508Kl wavFormat = AbstractC1510Kn.A02(interfaceC2585lN);
        if (wavFormat.A03 == 17) {
            this.A06 = new C2481jV(this.A04, this.A05, wavFormat);
        } else if (wavFormat.A03 == 6) {
            this.A06 = new C2480jU(this.A04, this.A05, wavFormat, A01(112, 15, 82), -1);
        } else if (wavFormat.A03 == 7) {
            this.A06 = new C2480jU(this.A04, this.A05, wavFormat, A01(127, 15, 60), -1);
        } else {
            int A00 = H9.A00(wavFormat.A03, wavFormat.A01);
            if (A00 != 0) {
                this.A06 = new C2480jU(this.A04, this.A05, wavFormat, A01(142, 9, 116), A00);
            } else {
                throw C10532i.A00(A01(29, 29, 80) + wavFormat.A03);
            }
        }
        this.A01 = 3;
    }

    private void A06(InterfaceC2585lN interfaceC2585lN) throws IOException {
        this.A03 = AbstractC1510Kn.A00(interfaceC2585lN);
        this.A01 = 2;
    }

    private void A07(InterfaceC2585lN interfaceC2585lN) throws IOException {
        Pair<Long, Long> A01 = AbstractC1510Kn.A01(interfaceC2585lN);
        this.A00 = ((Long) A01.first).intValue();
        long longValue = ((Long) A01.second).longValue();
        if (this.A03 != -1) {
            int i10 = (longValue > 4294967295L ? 1 : (longValue == 4294967295L ? 0 : -1));
            String[] strArr = A08;
            if (strArr[7].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[3] = "zD8CpsX01ISLh3RSws8RgUnhS";
            strArr2[6] = "h3zG6U6JIHw0";
            if (i10 == 0) {
                longValue = this.A03;
            }
        }
        this.A02 = this.A00 + longValue;
        long A8G = interfaceC2585lN.A8G();
        if (A8G != -1 && this.A02 > A8G) {
            AnonymousClass44.A07(A01(100, 12, 18), A01(2, 27, 100) + this.A02 + A01(0, 2, 89) + A8G);
            this.A02 = A8G;
        }
        ((InterfaceC1506Kj) C3M.A01(this.A06)).AA0(this.A00, this.A02);
        this.A01 = 4;
    }

    public static /* synthetic */ GX[] A08() {
        return new GX[]{new C2479jT()};
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AA4(GY gy) {
        this.A04 = gy;
        this.A05 = gy.AJh(0, 1);
        gy.A6G();
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final int AGb(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        A02();
        switch (this.A01) {
            case 0:
                A04(interfaceC2585lN);
                return 0;
            case 1:
                A06(interfaceC2585lN);
                if (A08[5].length() != 13) {
                    throw new RuntimeException();
                }
                String[] strArr = A08;
                strArr[3] = "VLLh2GyvdfrrOjqYmUQdrqO3c";
                strArr[6] = "Miu4m4vLnYY2";
                return 0;
            case 2:
                A05(interfaceC2585lN);
                return 0;
            case 3:
                A07(interfaceC2585lN);
                return 0;
            case 4:
                return A00(interfaceC2585lN);
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AIM(long j10, long j11) {
        this.A01 = j10 == 0 ? 0 : 4;
        if (this.A06 != null) {
            this.A06.AI0(j11);
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final boolean AJL(InterfaceC2585lN interfaceC2585lN) throws IOException {
        return AbstractC1510Kn.A06(interfaceC2585lN);
    }
}
