package com.google.firebase.crashlytics.internal.settings;

import com.adjust.sdk.Constants;
import com.google.firebase.crashlytics.internal.common.d0;
import com.google.firebase.crashlytics.internal.settings.c;
import com.tencent.mmkv.MMKV;
import org.json.JSONObject;
/* compiled from: DefaultSettingsJsonTransform.java */
/* loaded from: classes5.dex */
class a implements g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static c b(d0 d0Var) {
        return new c(d0Var.a() + ((long) Constants.ONE_HOUR), new c.b(8, 4), new c.a(true, false, false), 0, MMKV.ExpireInHour, 10.0d, 1.2d, 60);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.g
    public c a(d0 d0Var, JSONObject jSONObject) {
        return b(d0Var);
    }
}
