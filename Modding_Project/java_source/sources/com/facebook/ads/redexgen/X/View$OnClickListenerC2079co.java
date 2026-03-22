package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.co  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2079co implements View.OnClickListener {
    public static String[] A01 = {"hS5f9KbstsMPLbUbPSxFVdCfAROmcRtV", "DUM08yoPCPer4HETov37xY8lXqOkWet1", "HD0hLshA4", "cNo3fMkBKvz7jHUo", "0KN3KUldF", "ICLtCAijF", "iMQeuY1uIySJVoFID8xkudblEyJz6Aif", "P1hZJiyY"};
    public final /* synthetic */ C2080cp A00;

    public View$OnClickListenerC2079co(C2080cp c2080cp) {
        this.A00 = c2080cp;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C2R c2r;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            c2r = this.A00.A05;
            c2r.performClick();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            if (A01[6].charAt(1) == 'N') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[0] = "I2wlNoUiFEETsNdyZ3cedgIbWPjbODtt";
            strArr[1] = "f6nspZJA1kETXV8rRnTaX6zeidOCX4th";
        }
    }
}
