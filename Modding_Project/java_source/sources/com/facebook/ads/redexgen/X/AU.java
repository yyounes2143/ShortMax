package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.os.SystemClock;
import android.util.Log;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public class AU {
    public static byte[] A03;
    public boolean A00 = false;
    public final ConcurrentLinkedQueue<AS> A01 = new ConcurrentLinkedQueue<>();
    public final /* synthetic */ AV A02;

    static {
        A05();
    }

    public static String A04(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 52);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{-89, -38, -59, -57, -46, -42, -53, -47, -48, -126, -39, -54, -57, -48, -126, -42, -44, -37, -53, -48, -55, -126, -42, -47, -126, -53, -48, -43, -42, -61, -48, -42, -53, -61, -42, -57, -126, -121, -43, -100, -126, -121, -43, -72, -48, -49, -44, -52, -82, -38, -49, -48, -50, -69, -38, -38, -41, -70, -37, -33, -44, -40, -44, -27, -48, -49, -59, -46, -46, -49, -46, -115, -41, -56, -55, -52, -59, -115, -46, -59, -52, -59, -63, -45, -59, -115, -61, -49, -60, -59, -61, -115, -58, -46, -49, -51, -115, -45, -59, -44, -115, -58, -55, -50, -63, -52, -52, -39, -102, ByteCompanionObject.MIN_VALUE, -123, -45, -40, -27, -27, -30, -27, -96, -22, -37, -36, -33, -40, -96, -27, -40, -33, -40, -44, -26, -40, -96, -42, -30, -41, -40, -42, -96, -39, -27, -30, -32, -96, -26, -40, -25, -83, -109, -104, -26, -34, -15, -24, -23, -27, -38, -14, -34, -21, -85, -89, -38, -17, -86, -89, -20, -21, -36, -89, -67, -38, -17, -86, -35, -58, -34, -35, -30, -38, -68, -24, -35, -34, -36, -70, -35, -38, -23, -19, -34, -21};
    }

    public AU(AV av) {
        this.A02 = av;
    }

    public AO A02(boolean z10, C2389hv c2389hv, EnumC2384hq enumC2384hq, String str) throws C2381hn {
        boolean A0I;
        AbstractC2385hr A032;
        AbstractC2385hr A033;
        boolean A0G;
        Set<AO> set;
        AbstractC2385hr A034;
        A0I = this.A02.A0I(z10, c2389hv);
        if (A0I) {
            A0G = AV.A0G(str, c2389hv);
            if (A0G) {
                synchronized (this.A02.A04) {
                    set = this.A02.A04.get(str);
                }
                if (set != null) {
                    synchronized (set) {
                        if (!set.isEmpty()) {
                            AV av = this.A02;
                            av.A00--;
                            Iterator<AO> it = set.iterator();
                            AO ret = it.next();
                            it.remove();
                            A034 = this.A02.A03();
                            A034.A0A(z10, str, enumC2384hq, ret.hashCode());
                            return ret;
                        }
                    }
                }
            }
        }
        try {
            A032 = this.A02.A03();
            C2382ho A05 = A032.A05(z10, str, enumC2384hq);
            AO A035 = A03(z10, str);
            A033 = this.A02.A03();
            A033.A06(A05, A035.hashCode());
            return A035;
        } catch (Exception e10) {
            throw new C2381hn(str, e10);
        }
    }

    public AO A03(boolean z10, String str) throws Exception {
        boolean A0E;
        String A04 = A04(150, 41, 69);
        if (z10) {
            A0E = AV.A0E(str);
            if (A0E) {
                try {
                    return (AO) Class.forName(A04).getConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e10) {
                    Log.w(A04(43, 23, 55), String.format(A04(0, 43, 46), A04, e10.getMessage()));
                }
            }
        }
        return new C2663mf(MediaCodec.createByCodecName(str));
    }

    /* renamed from: A07 */
    public void A0B(EnumC2384hq enumC2384hq) {
        String A04;
        String format;
        AV av;
        Set<AO> set;
        Iterator<AS> it = this.A01.iterator();
        while (it.hasNext()) {
            AS next = it.next();
            try {
                try {
                    if (!next.A05) {
                        A08(next.A01, enumC2384hq, Boolean.valueOf(next.A04), next.A00);
                    } else {
                        try {
                            try {
                                this.A02.A05 = SystemClock.elapsedRealtime();
                                next.A00.reset();
                                av = this.A02;
                            } catch (Throwable th2) {
                                this.A02.A05 = -1L;
                                throw th2;
                            }
                        } catch (IllegalStateException unused) {
                            A09(next.A02, next.A00);
                            av = this.A02;
                        }
                        av.A05 = -1L;
                        if (next.A03) {
                            synchronized (this.A02.A04) {
                                set = this.A02.A04.get(next.A02);
                            }
                            if (set != null) {
                                synchronized (set) {
                                    set.add(next.A00);
                                    this.A02.A00++;
                                }
                            }
                        }
                    }
                } catch (Exception e10) {
                    Log.w(A04(43, 23, 55), String.format(A04(112, 38, 63), e10.getMessage()));
                    try {
                        synchronized (this.A01) {
                            this.A01.remove(next);
                        }
                    } catch (Exception e11) {
                        A04 = A04(43, 23, 55);
                        format = String.format(A04(66, 46, 44), e11.getMessage());
                        Log.w(A04, format);
                    }
                }
                try {
                    synchronized (this.A01) {
                        this.A01.remove(next);
                    }
                } catch (Exception e12) {
                    A04 = A04(43, 23, 55);
                    format = String.format(A04(66, 46, 44), e12.getMessage());
                    Log.w(A04, format);
                }
            } catch (Throwable th3) {
                try {
                } catch (Exception e13) {
                    Log.w(A04(43, 23, 55), String.format(A04(66, 46, 44), e13.getMessage()));
                }
                synchronized (this.A01) {
                    this.A01.remove(next);
                    throw th3;
                }
            }
        }
    }

    private void A08(C2389hv c2389hv, EnumC2384hq enumC2384hq, Boolean bool, AO ao2) {
        AbstractC2385hr A032;
        AbstractC2385hr A033;
        try {
            if (!c2389hv.A0Q || (!bool.booleanValue() && !c2389hv.A0P)) {
                ao2.stop();
            }
        } finally {
            A032 = this.A02.A03();
            A032.A08(enumC2384hq, ao2.hashCode());
            ao2.AGr();
            A033 = this.A02.A03();
            A033.A07(enumC2384hq, ao2.hashCode());
        }
    }

    private void A09(String str, AO ao2) {
        Set<AO> set;
        synchronized (this.A02.A04) {
            set = this.A02.A04.get(str);
        }
        if (set != null) {
            synchronized (set) {
                if (set.remove(ao2)) {
                    AV av = this.A02;
                    av.A00--;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:204:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A0A(boolean r24, com.facebook.ads.redexgen.X.C2389hv r25, final com.facebook.ads.redexgen.X.EnumC2384hq r26, java.lang.String r27, com.facebook.ads.redexgen.X.AO r28) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AU.A0A(boolean, com.facebook.ads.redexgen.X.hv, com.facebook.ads.redexgen.X.hq, java.lang.String, com.facebook.ads.redexgen.X.AO):void");
    }
}
