package com.bytedance.bdtracker;

import android.content.Context;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class f2 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f12009e;

    public f2(Context context) {
        super(true, false);
        this.f12009e = context;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "SimCountry";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        TelephonyManager telephonyManager = (TelephonyManager) this.f12009e.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager != null) {
            r1.a(jSONObject, "sim_region", telephonyManager.getSimCountryIso());
            return true;
        }
        return true;
    }
}
