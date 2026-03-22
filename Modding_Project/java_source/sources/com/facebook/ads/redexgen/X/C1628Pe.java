package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import org.json.JSONException;
/* renamed from: com.facebook.ads.redexgen.X.Pe  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1628Pe implements InterfaceC2191ee {
    public static byte[] A03;
    public static String[] A04 = {"vUQacvUb1jgaOB1nXCILUaEr4ItZ5QEs", "N", "ozPzI", "iemFS7qx3ItQSdDQeBrvuJ9y9CMkfIqY", "EwROMxnfRd6F7268i4EpvPtVg3hQf", "a", "qVu8", "3RxrE6NsEsLt8TXu"};
    public final /* synthetic */ long A00;
    public final /* synthetic */ VR A01;
    public final /* synthetic */ VU A02;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 120);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{85, 80, 5, 87, 81, 3, 7, 0, 57, 108, 104, 63, 104, 57, 59, 44, 53, 41, 40, 35, 30, 5, 3, 22, 18, 15, 9, 8, 92, 70, 78, 120, 111, 107, 120, 111, 61, 120, 111, 111, 114, 111, 61, 114, 126, 126, 104, 111, 111, 120, 121, 124, 74, 93, 89, 74, 93, 15, 93, 74, 95, 67, 70, 74, 75, 15, 92, 90, 76, 76, 74, 92, 92, 73, 90, 67, 67, 86, 63, 62, 19, 63, 61, 32, 60, 53, 36, 53, 16, 17, 58, 13, 13, 16, 13};
    }

    static {
        A01();
    }

    public C1628Pe(VU vu2, VR vr2, long j10) {
        this.A02 = vu2;
        this.A01 = vr2;
        this.A00 = j10;
    }

    private final void A02(C2203eq c2203eq) {
        C2111dL c2111dL;
        long j10;
        C2111dL c2111dL2;
        long j11;
        VV vv;
        C2111dL c2111dL3;
        C2111dL c2111dL4;
        long j12;
        VQ.A06(this.A01);
        try {
            InterfaceC2189ec response = c2203eq.A00();
            if (response != null) {
                String A6v = response.A6v();
                vv = this.A02.A06;
                c2111dL3 = this.A02.A05;
                VX serverResponse = vv.A07(c2111dL3, A6v, this.A00);
                if (serverResponse.A01() == VW.A03) {
                    PV pv = (PV) serverResponse;
                    String A042 = pv.A04();
                    AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(pv.A03(), AdErrorType.ERROR_MESSAGE);
                    if (A042 != null) {
                        A6v = A042;
                    }
                    c2111dL4 = this.A02.A05;
                    LH A0F = c2111dL4.A0F();
                    j12 = this.A02.A01;
                    A0F.A3O(XG.A01(j12), adErrorTypeFromCode.getErrorCode(), A6v, adErrorTypeFromCode.isPublicError());
                    this.A02.A0E(V1.A01(adErrorTypeFromCode, A6v));
                    return;
                }
            }
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String message = c2203eq.getMessage();
            c2111dL2 = this.A02.A05;
            LH A0F2 = c2111dL2.A0F();
            j11 = this.A02.A01;
            long A01 = XG.A01(j11);
            int errorCode = adErrorType.getErrorCode();
            boolean isPublicError = adErrorType.isPublicError();
            if (A04[2].length() == 29) {
                throw new RuntimeException();
            }
            A04[4] = "NZ18w";
            A0F2.A3O(A01, errorCode, message, isPublicError);
            this.A02.A0E(V1.A01(adErrorType, message));
        } catch (JSONException e10) {
            AdErrorType adErrorType2 = AdErrorType.NETWORK_ERROR;
            String errorMessage = c2203eq.getMessage();
            c2111dL = this.A02.A05;
            LH A0F3 = c2111dL.A0F();
            j10 = this.A02.A01;
            A0F3.A3O(XG.A01(j10), adErrorType2.getErrorCode(), A00(15, 15, 30) + e10.getMessage(), adErrorType2.isPublicError());
            this.A02.A0E(V1.A01(adErrorType2, errorMessage));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191ee
    public final void ACo(InterfaceC2189ec interfaceC2189ec) {
        C2111dL c2111dL;
        C2111dL c2111dL2;
        VF.A05(A00(78, 10, 40), A00(51, 27, 87), A00(8, 7, 114));
        if (interfaceC2189ec != null) {
            String A6v = interfaceC2189ec.A6v();
            c2111dL = this.A02.A05;
            int A02 = U7.A02(c2111dL);
            String[] strArr = A04;
            String str = strArr[5];
            String response = strArr[1];
            if (str.length() != response.length()) {
                throw new RuntimeException();
            }
            A04[2] = "kblvpkFa8oUK1ItVGqcsW93nH";
            if (A02 > 0) {
                c2111dL2 = this.A02.A05;
                W2.A00(c2111dL2).A0C(A6v);
            }
            VQ.A06(this.A01);
            this.A02.A0O(A6v, this.A00, this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191ee
    public final void ADC(Exception exc) {
        C2111dL c2111dL;
        long j10;
        VF.A05(A00(88, 7, 7), A00(30, 21, 101), A00(0, 8, 30));
        if (C2203eq.class.equals(exc.getClass())) {
            A02((C2203eq) exc);
            return;
        }
        AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
        String errorMessage = exc.getMessage();
        c2111dL = this.A02.A05;
        LH A0F = c2111dL.A0F();
        j10 = this.A02.A01;
        A0F.A3O(XG.A01(j10), adErrorType.getErrorCode(), errorMessage, adErrorType.isPublicError());
        this.A02.A0E(V1.A01(adErrorType, errorMessage));
    }
}
