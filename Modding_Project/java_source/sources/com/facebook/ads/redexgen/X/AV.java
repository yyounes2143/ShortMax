package com.facebook.ads.redexgen.X;

import android.os.SystemClock;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;
/* loaded from: assets/audience_network.dex */
public final class AV {
    public static byte[] A06;
    public static String[] A07 = {"eoBlep8s1FBIN6Rt", "z5PVad8lFvymSbVcRUVN6mCVOAyUTpZZ", "CSzRbjHFCczJ9I", "vibjkM4Umklha9WpeyLj2yq757BqeZSZ", "UWrS", "", "nE8lp", "HlO2gnmnWOpwEq19Q9DE2Hcik4TJ8nc9"};
    public static final AV A08;
    @Nullable
    public AbstractC2385hr A01;
    @Nullable
    public Boolean A02;
    public volatile Map<String, Set<AO>> A04 = new HashMap();
    public final AU A03 = new AU(this);
    public int A00 = 0;
    public volatile long A05 = -1;

    public static String A05(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 74);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A06 = new byte[]{-63, -71, -56, -75, -126, -72, -75, -54, -123, -72, -126, -75, -54, -123, -126, -72, -71, -73, -61, -72, -71, -58};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0C(boolean z10, C2389hv c2389hv, EnumC2384hq enumC2384hq, String str, AO ao2) {
        if (A0I(z10, c2389hv) && A0G(str, c2389hv)) {
            boolean z11 = true;
            synchronized (this) {
                if (this.A00 < c2389hv.A05) {
                    Set<AO> set = this.A04.get(str);
                    if (set == null) {
                        set = A06();
                        this.A04.put(str, set);
                    }
                    if (set.contains(ao2)) {
                        z11 = false;
                    } else if (((z10 && c2389hv.A0M) || (!z10 && c2389hv.A0L)) && set.size() < c2389hv.A04) {
                        set.add(ao2);
                        this.A00++;
                        z11 = false;
                    }
                }
                if (!z11) {
                    try {
                        this.A05 = SystemClock.elapsedRealtime();
                        ao2.reset();
                        A03().A09(enumC2384hq, ao2.hashCode());
                        this.A05 = -1L;
                        return;
                    } catch (IllegalStateException unused) {
                        A0B(str, ao2);
                        this.A05 = -1L;
                    }
                }
            }
        }
        try {
            if (!c2389hv.A0Q || (!z10 && !c2389hv.A0P)) {
                ao2.stop();
            }
        } finally {
            A03().A08(enumC2384hq, ao2.hashCode());
            ao2.AGr();
            A03().A07(enumC2384hq, ao2.hashCode());
        }
    }

    static {
        A08();
        A08 = new AV();
    }

    private AO A01(boolean z10, C2389hv c2389hv, EnumC2384hq enumC2384hq, String str) throws C2381hn {
        if (A0I(z10, c2389hv) && A0G(str, c2389hv)) {
            synchronized (this) {
                Set<AO> set = this.A04.get(str);
                if (set != null && !set.isEmpty()) {
                    this.A00--;
                    Iterator<AO> it = set.iterator();
                    AO ret = it.next();
                    it.remove();
                    A03().A0A(z10, str, enumC2384hq, ret.hashCode());
                    return ret;
                }
            }
        }
        try {
            C2382ho A05 = A03().A05(z10, str, enumC2384hq);
            AO A01 = AU.A01(this.A03, z10, str);
            A03().A06(A05, A01.hashCode());
            return A01;
        } catch (Exception e10) {
            throw new C2381hn(str, e10);
        }
    }

    public static AV A02() {
        AV av = A08;
        String[] strArr = A07;
        if (strArr[6].length() != strArr[4].length()) {
            String[] strArr2 = A07;
            strArr2[6] = "gdX1n";
            strArr2[4] = "uqN6";
            return av;
        }
        throw new RuntimeException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AbstractC2385hr A03() {
        if (this.A01 != null) {
            return this.A01;
        }
        return C1266Ba.A02;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<AO> A06() {
        if (this.A02 != null && this.A02.booleanValue()) {
            return new CopyOnWriteArraySet();
        }
        return new HashSet();
    }

    private void A09(AbstractC2385hr abstractC2385hr) {
        if (this.A01 == null) {
            this.A01 = abstractC2385hr;
        }
    }

    private void A0A(C2389hv c2389hv) {
        if (this.A02 == null) {
            synchronized (this) {
                if (this.A02 == null) {
                    this.A02 = Boolean.valueOf(c2389hv.A0R);
                    if (this.A02.booleanValue()) {
                        this.A04 = new ConcurrentHashMap();
                    }
                }
            }
        }
    }

    private void A0B(String str, AO ao2) {
        Set<AO> set = this.A04.get(str);
        if (set != null && set.remove(ao2)) {
            int i10 = this.A00;
            String[] strArr = A07;
            if (strArr[3].charAt(31) != strArr[1].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "FxBrmOrzGAHEl951IE67fieu752sH0JZ";
            strArr2[1] = "QwM4isUBZzXVsf3PyxWpFGvjBfZOcOMZ";
            this.A00 = i10 - 1;
        }
    }

    public static boolean A0E(String str) {
        return str.equals(A05(0, 22, 10));
    }

    public static boolean A0G(String str, C2389hv c2389hv) {
        if (A0E(str) && c2389hv.A0A) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0I(boolean z10, C2389hv c2389hv) {
        if (c2389hv.A0C && this.A05 != -1 && SystemClock.elapsedRealtime() - this.A05 > 5000) {
            return false;
        }
        return A0J(z10, c2389hv);
    }

    public static boolean A0J(boolean z10, C2389hv c2389hv) {
        return (z10 && c2389hv.A0M) || (!z10 && c2389hv.A0L);
    }

    public final AO A0K(boolean z10, C2389hv c2389hv, AbstractC2385hr abstractC2385hr, EnumC2384hq enumC2384hq, String str) throws C2381hn {
        A09(abstractC2385hr);
        A0A(c2389hv);
        if (c2389hv.A0J) {
            AO A00 = AU.A00(this.A03, z10, c2389hv, enumC2384hq, str);
            String[] strArr = A07;
            if (strArr[5].length() != strArr[0].length()) {
                String[] strArr2 = A07;
                strArr2[3] = "ttyEUrXfsAwEm9Eniby4AXTGkmRMb34Z";
                strArr2[1] = "BAFCEyHtTeugEvQpUcdazZ0OUcRhptwZ";
                return A00;
            }
            throw new RuntimeException();
        }
        return A01(z10, c2389hv, enumC2384hq, str);
    }

    public final void A0L(boolean z10, C2389hv c2389hv, AbstractC2385hr abstractC2385hr, EnumC2384hq enumC2384hq, String str, AO ao2) {
        A09(abstractC2385hr);
        if (c2389hv.A0J) {
            AU.A06(this.A03, z10, c2389hv, enumC2384hq, str, ao2);
        } else {
            A0C(z10, c2389hv, enumC2384hq, str, ao2);
        }
    }
}
