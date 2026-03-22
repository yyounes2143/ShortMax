package com.google.firebase.remoteconfig.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.ss.ttvideoengine.strategrycenter.IPortraitService;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Personalization.java */
/* loaded from: classes5.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private final w8.b<n7.a> f21489a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f21490b = Collections.synchronizedMap(new HashMap());

    public v(w8.b<n7.a> bVar) {
        this.f21489a = bVar;
    }

    public void a(@NonNull String str, @NonNull g gVar) {
        JSONObject optJSONObject;
        n7.a aVar = this.f21489a.get();
        if (aVar == null) {
            return;
        }
        JSONObject i10 = gVar.i();
        if (i10.length() < 1) {
            return;
        }
        JSONObject g10 = gVar.g();
        if (g10.length() < 1 || (optJSONObject = i10.optJSONObject(str)) == null) {
            return;
        }
        String optString = optJSONObject.optString("choiceId");
        if (optString.isEmpty()) {
            return;
        }
        synchronized (this.f21490b) {
            try {
                if (optString.equals(this.f21490b.get(str))) {
                    return;
                }
                this.f21490b.put(str, optString);
                Bundle bundle = new Bundle();
                bundle.putString("arm_key", str);
                bundle.putString("arm_value", g10.optString(str));
                bundle.putString("personalization_id", optJSONObject.optString("personalizationId"));
                bundle.putInt("arm_index", optJSONObject.optInt("armIndex", -1));
                bundle.putString(IPortraitService.TYPE_GROUP_PORTRAITS, optJSONObject.optString(IPortraitService.TYPE_GROUP_PORTRAITS));
                aVar.a("fp", "personalization_assignment", bundle);
                Bundle bundle2 = new Bundle();
                bundle2.putString("_fpid", optString);
                aVar.a("fp", "_fpc", bundle2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
