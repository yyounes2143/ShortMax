package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.d0;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SettingsJsonParser.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f20879a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d0 d0Var) {
        this.f20879a = d0Var;
    }

    private static g a(int i10) {
        if (i10 != 3) {
            z7.g f10 = z7.g.f();
            f10.d("Could not determine SettingsJsonTransform for settings version " + i10 + ". Using default settings values.");
            return new a();
        }
        return new j();
    }

    public c b(JSONObject jSONObject) throws JSONException {
        return a(jSONObject.getInt("settings_version")).a(this.f20879a, jSONObject);
    }
}
