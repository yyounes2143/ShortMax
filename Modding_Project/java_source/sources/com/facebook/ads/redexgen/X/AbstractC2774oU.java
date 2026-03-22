package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.oU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2774oU implements C1S {
    public static byte[] A00;
    public static String[] A01 = {"aC8uc30vckBh0ldJ8CsDkWWGmQgl7sOm", "2", "dPCbCdxH5PRV4edn", "QHj", "dDf", "KHWYQA", "nwDl9CeJStZlhkBKgBcw2akg3aHE6X2p", "I5"};
    public static final String A02;
    public static final C1R<AbstractC2774oU> A03;

    public static String A06(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 9);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{-126, -101, -104, -101, -100, -92, -101, 77, ByteCompanionObject.MAX_VALUE, -114, -95, -106, -101, -108, -127, -90, -99, -110, 103, 77};
    }

    static {
        A07();
        A02 = AbstractC10974a.A0h(0);
        A03 = new C1R() { // from class: com.facebook.ads.redexgen.X.oX
            @Override // com.facebook.ads.redexgen.X.C1R
            public final C1S A6X(Bundle bundle) {
                AbstractC2774oU A04;
                A04 = AbstractC2774oU.A04(bundle);
                return A04;
            }
        };
    }

    public static AbstractC2774oU A04(Bundle bundle) {
        int i10 = bundle.getInt(A02, -1);
        switch (i10) {
            case 0:
                return C12329s.A02.A6X(bundle);
            case 1:
                C12309q A6X = C12309q.A02.A6X(bundle);
                if (A01[6].charAt(2) != 'F') {
                    String[] strArr = A01;
                    strArr[7] = "RK";
                    strArr[1] = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    return A6X;
                }
                break;
            case 2:
                return C12299p.A04.A6X(bundle);
            case 3:
                C12289o A6X2 = C12289o.A02.A6X(bundle);
                if (A01[6].charAt(2) != 'F') {
                    String[] strArr2 = A01;
                    strArr2[7] = "Vr";
                    strArr2[1] = "2";
                    return A6X2;
                }
                break;
            default:
                throw new IllegalArgumentException(A06(0, 20, 36) + i10);
        }
        throw new RuntimeException();
    }
}
