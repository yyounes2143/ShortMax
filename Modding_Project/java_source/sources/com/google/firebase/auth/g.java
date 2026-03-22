package com.google.firebase.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth-interop@@20.0.0 */
/* loaded from: classes5.dex */
public class g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f20473a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f20474b;

    @KeepForSdk
    public g(@Nullable String str, @NonNull Map<String, Object> map) {
        this.f20473a = str;
        this.f20474b = map;
    }

    @NonNull
    public Map<String, Object> a() {
        return this.f20474b;
    }

    @Nullable
    public String b() {
        Map map = (Map) this.f20474b.get("firebase");
        if (map != null) {
            return (String) map.get("sign_in_provider");
        }
        return null;
    }

    @Nullable
    public String c() {
        return this.f20473a;
    }
}
