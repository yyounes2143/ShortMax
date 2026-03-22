package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
/* renamed from: com.facebook.ads.redexgen.X.Qx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1673Qx implements View.OnClickListener {
    public static String[] A04 = {"dOcdx", "8bjq9", "S62xmG9bLAzPQTe5DIuTVykAuxzH3OOO", "EFLmmctArUbvil4YjfVv5mcKtZGwqpiw", "pomIX56rypqB03AcIrSNKF", "mejemOmbs1cZK7MlHCtmuskixcqeH5iG", "45z4wnlhvnWTCVb", "bTLTNp7fFtJJ30XE5CJx6is"};
    public final /* synthetic */ Context A00;
    public final /* synthetic */ LinearLayout A01;
    public final /* synthetic */ C2271fx A02;
    public final /* synthetic */ C1652Qc A03;

    public View$OnClickListenerC1673Qx(C2271fx c2271fx, C1652Qc c1652Qc, Context context, LinearLayout linearLayout) {
        this.A02 = c2271fx;
        this.A03 = c1652Qc;
        this.A00 = context;
        this.A01 = linearLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A03.A1J();
            if (U7.A2S(this.A00)) {
                this.A01.performAccessibilityAction(128, null);
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            String[] strArr = A04;
            if (strArr[0].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A04[3] = "4MuYgj3AagdEPQ2lSwdOEm9Gyp8HLE2k";
        }
    }
}
