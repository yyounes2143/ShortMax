package com.facebook.ads.redexgen.X;

import androidx.compose.runtime.ComposerKt;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Comparator;
@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.oG  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2761oG<K0, V0> {
    public static byte[] A00;

    static {
        A04();
    }

    public static String A03(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) + ComposerKt.defaultsKey);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{97, 116, 108, 97, 95, 112, 97, 96, 71, 97, 117, 111};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oG != com.google.common.collect.MultimapBuilder<K0, V0> */
    public AbstractC2761oG() {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oG != com.google.common.collect.MultimapBuilder<K0, V0> */
    public /* synthetic */ AbstractC2761oG(C1241Ab c1241Ab) {
        this();
    }

    public static AbstractC2760oF<Object> A00(int expectedKeys) {
        AbstractC2608ll.A00(expectedKeys, A03(0, 12, 125));
        return new C1241Ab(expectedKeys);
    }

    public static <K0> AbstractC2760oF<K0> A01(Comparator<K0> comparator) {
        AbstractC2461jA.A04(comparator);
        return new AZ(comparator);
    }

    public static AbstractC2760oF<Comparable> A02() {
        return A01(AbstractC2775oV.A03());
    }
}
