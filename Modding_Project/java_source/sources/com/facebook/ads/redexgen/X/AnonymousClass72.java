package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.72  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass72 extends AbstractC2358hQ {
    public static byte[] A03;
    public long A00;
    public View A01;
    public C6M A02;

    static {
        A05();
    }

    public static String A03(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 81);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{20, 23, 38, -15, -16, -3, -3, -12, 1, -18, 1, -12, -11, 1, -12, 2, -9, -18, 3, -8, -4, -12, -5, 0, -7, 1, 6, -9, 8, -7, 10, -7, 5, 11, 38, 55, 27, 40, 40, 37, 40, -42, 45, 30, 31, 34, 27, -42, 38, 23, 40, 41, 31, 36, 29, -42, 25, 30, 23, 31, 36, 27, 26, -42, 23, 26, 41, -42, -8, 23, 36, 36, 27, 40};
    }

    public AnonymousClass72(C6M c6m, NT nt2) {
        super(c6m, nt2);
        this.A00 = 10000L;
        this.A02 = c6m;
    }

    private C2361hT A01(Runnable runnable) {
        return new C2361hT(this, runnable);
    }

    private List<JSONObject> A04(NU nu2) {
        ArrayList arrayList = new ArrayList();
        JSONObject A032 = nu2.A03();
        String A033 = A03(22, 12, 71);
        if (A032.has(A033)) {
            try {
                this.A00 = A032.getJSONObject(A033).optInt(A03(3, 19, 62), 10000);
                JSONArray adsArray = A032.getJSONArray(A03(0, 3, 98));
                if (adsArray.length() > 0) {
                    for (int i10 = 0; i10 < adsArray.length(); i10++) {
                        arrayList.add((JSONObject) adsArray.get(i10));
                    }
                }
            } catch (JSONException unused) {
                String A034 = A03(36, 38, 101);
                this.A02.A0F().A5Y(V1.A01(AdErrorType.UNKNOWN_ERROR, A034).A03().getErrorCode(), A034);
                return arrayList;
            }
        } else {
            arrayList.add(A032);
        }
        return arrayList;
    }

    private void A06(InterfaceC2431id interfaceC2431id, JSONObject jSONObject, TF tf2) {
        this.A0C = false;
        C2360hS c2360hS = new C2360hS(this, interfaceC2431id, AbstractC1818Wr.A02(jSONObject, A03(34, 2, 114)));
        A0H().postDelayed(c2360hS, tf2.A05());
        interfaceC2431id.AAk(this.A02, this.A09, this.A08.A08, A01(c2360hS), jSONObject, tf2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0P() {
        if (this.A01 != null) {
            this.A02.A0F().A4W();
            this.A07.A0E(this.A01);
            return;
        }
        this.A02.A0F().A4X();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0R(MP mp2, TE te2, TC tc2, final NU nu2) {
        this.A02.A0F().A4Q();
        final InterfaceC2431id interfaceC2431id = (InterfaceC2431id) mp2;
        if (interfaceC2431id.AJa()) {
            final List<JSONObject> A04 = A04(nu2);
            A06(interfaceC2431id, A04.get(0), nu2.A01());
            if (A04.size() > 1) {
                A0H().postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.NV
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass72.this.A0a(interfaceC2431id, A04, nu2);
                    }
                }, this.A00);
                return;
            }
            return;
        }
        A06(interfaceC2431id, nu2.A03(), nu2.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0U(String str) {
        this.A02.A0F().A4V(str != null);
        super.A0U(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0Y(boolean z10) {
        super.A0Y(z10);
        this.A01 = null;
    }

    public final /* synthetic */ void A0a(InterfaceC2431id interfaceC2431id, List list, NU nu2) {
        A06(interfaceC2431id, (JSONObject) list.get(1), nu2.A01());
    }
}
