package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.hK  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2352hK implements VT {
    public static byte[] A0E;
    public static String[] A0F = {"gvO2SkJ6judPPNAAbU10EdMFrysfMOoq", "C8fayNw08H03MAMa0MYSKK0pyo1qSvcR", "zD", "tQ435k35SGtCPZ", "PU5xmRYaUesfDikXgdcM0c", "Sj", "IzP0LuOvX3krWKzZjoX9w767Mf8waFqk", "fiC8qpcDm8TluoxAfEpO8PomLrdxugFO"};
    public NX A00;
    public TE A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final Handler A05;
    public final AdSize A06;
    public final MU A07;
    public final C2111dL A08;
    public final US A09;
    public final V6 A0A;
    public final VU A0B;
    public final Runnable A0C;
    public final String A0D;

    public static String A03(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 81);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A0E = new byte[]{-47, -46, -125, -45, -49, -60, -58, -56, -48, -56, -47, -41, -125, -52, -47, -125, -43, -56, -42, -45, -46, -47, -42, -56};
    }

    static {
        A05();
        XR.A02();
    }

    public C2352hK(C2111dL c2111dL, String str, V6 v62, AdSize adSize, int i10) {
        this.A08 = c2111dL;
        this.A0D = str;
        this.A0A = v62;
        this.A06 = adSize;
        this.A04 = i10;
        this.A0B = new VU(this.A08);
        this.A0B.A0R(this);
        this.A07 = new MU();
        this.A03 = true;
        this.A05 = new Handler();
        this.A0C = new AbstractC1615Or<C2352hK>(this) { // from class: com.facebook.ads.redexgen.X.6s
            {
                super(this);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
            public final void A07() {
                C2111dL c2111dL2;
                Handler handler;
                Runnable runnable;
                C2352hK A08 = A08();
                if (A08 == null) {
                    return;
                }
                c2111dL2 = A08.A08;
                if (C1833Xg.A02(c2111dL2)) {
                    A08.A07();
                    return;
                }
                handler = A08.A05;
                runnable = A08.A0C;
                handler.postDelayed(runnable, 5000L);
            }
        };
        this.A09 = c2111dL.A0A();
        DynamicLoaderFactory.makeLoader(this.A08).getInitApi().onAdLoadInvoked(this.A08);
    }

    private List<C2415iN> A04() {
        TE te2 = this.A01;
        final ArrayList arrayList = new ArrayList(te2.A02());
        for (TC A04 = te2.A04(); A04 != null; A04 = te2.A04()) {
            MP A00 = this.A07.A00(this.A08, AdPlacementType.NATIVE);
            if (A00 != null && A00.A8c() == AdPlacementType.NATIVE) {
                final C2415iN nativeAdapter = (C2415iN) A00;
                nativeAdapter.A0L(this.A08, new AbstractC2353hL() { // from class: com.facebook.ads.redexgen.X.6v
                    @Override // com.facebook.ads.redexgen.X.InterfaceC1553Me
                    public final void AEH(C2415iN c2415iN) {
                        arrayList.add(nativeAdapter);
                    }
                }, this.A09, new NU(A04.A04(), te2.A05(), this.A0D, te2.A05().A0C()), C1652Qc.A0K());
            }
        }
        return arrayList;
    }

    public final void A06() {
        this.A03 = false;
        this.A05.removeCallbacks(this.A0C);
    }

    public final void A07() {
        try {
            this.A0B.A0Q(new VR(this.A08, this.A0D, this.A06 != null ? new X1(this.A06.getWidth(), this.A06.getHeight()) : null, this.A0A, this.A04, new VB(this.A08, null, null, null), X7.A01(U7.A0N(this.A08)), this.A02, null, new C2343hB()));
        } catch (V2 e10) {
            ADB(V1.A02(e10));
        }
    }

    public final void A08(NX nx) {
        this.A00 = nx;
    }

    public final void A09(String str) {
        this.A02 = str;
    }

    public final boolean A0A() {
        return this.A01 == null || this.A01.A0I();
    }

    @Override // com.facebook.ads.redexgen.X.VT
    public final void ADB(V1 v12) {
        if (this.A03) {
            this.A05.postDelayed(this.A0C, 1800000L);
        }
        if (this.A00 != null) {
            this.A00.ADB(v12);
        }
    }

    @Override // com.facebook.ads.redexgen.X.VT
    public final void AFO(PW pw) {
        TE A00 = pw.A00();
        if (A00 != null) {
            if (this.A03) {
                long A0A = A00.A05().A0A();
                if (A0A == 0) {
                    A0A = 1800000;
                }
                this.A05.postDelayed(this.A0C, A0A);
            }
            this.A01 = A00;
            List<C2415iN> A04 = A04();
            if (this.A00 != null) {
                boolean isEmpty = A04.isEmpty();
                String[] strArr = A0F;
                if (strArr[7].charAt(9) == strArr[6].charAt(9)) {
                    throw new RuntimeException();
                }
                A0F[0] = "Ma8ASQR7F1ZvPn5hHoXinNcVvjUetiuh";
                if (isEmpty) {
                    this.A00.ADB(V1.A01(AdErrorType.NO_FILL, A03(0, 0, 63)));
                    return;
                } else {
                    this.A00.AEJ(A04);
                    return;
                }
            }
            return;
        }
        throw new IllegalStateException(A03(0, 24, 18));
    }
}
