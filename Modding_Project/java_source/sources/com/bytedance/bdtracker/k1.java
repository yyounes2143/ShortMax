package com.bytedance.bdtracker;

import java.util.Objects;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class k1 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f12139a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f12140b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f12141c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f12142d;

    public k1(boolean z10, boolean z11) {
        this.f12140b = z10;
        this.f12141c = z11;
        this.f12142d = false;
    }

    public abstract String a();

    public abstract boolean a(JSONObject jSONObject);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k1)) {
            return false;
        }
        return Objects.equals(a(), ((k1) obj).a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    public k1(boolean z10, boolean z11, boolean z12) {
        this.f12140b = z10;
        this.f12141c = z11;
        this.f12142d = z12;
    }
}
