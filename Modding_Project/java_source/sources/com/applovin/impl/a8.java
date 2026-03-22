package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a8 {

    /* renamed from: a  reason: collision with root package name */
    private final int f7327a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7328b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7329c;

    /* renamed from: d  reason: collision with root package name */
    private final int f7330d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f7331e;

    /* renamed from: f  reason: collision with root package name */
    private final int f7332f;

    /* renamed from: g  reason: collision with root package name */
    private final int f7333g;

    /* renamed from: h  reason: collision with root package name */
    private final int f7334h;

    /* renamed from: i  reason: collision with root package name */
    private final float f7335i;

    /* renamed from: j  reason: collision with root package name */
    private final float f7336j;

    public a8(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = kVar.O();
            O.d("VideoButtonProperties", "Updating video button properties with JSON = " + JsonUtils.maybeConvertToIndentedString(jSONObject));
        }
        this.f7327a = JsonUtils.getInt(jSONObject, "width", 64);
        this.f7328b = JsonUtils.getInt(jSONObject, "height", 7);
        this.f7329c = JsonUtils.getInt(jSONObject, "margin", 20);
        this.f7330d = JsonUtils.getInt(jSONObject, "gravity", 85);
        this.f7331e = JsonUtils.getBoolean(jSONObject, "tap_to_fade", Boolean.FALSE).booleanValue();
        this.f7332f = JsonUtils.getInt(jSONObject, "tap_to_fade_duration_milliseconds", 500);
        this.f7333g = JsonUtils.getInt(jSONObject, "fade_in_duration_milliseconds", 500);
        this.f7334h = JsonUtils.getInt(jSONObject, "fade_out_duration_milliseconds", 500);
        this.f7335i = JsonUtils.getFloat(jSONObject, "fade_in_delay_seconds", 1.0f);
        this.f7336j = JsonUtils.getFloat(jSONObject, "fade_out_delay_seconds", 6.0f);
    }

    public float a() {
        return this.f7335i;
    }

    public long b() {
        return this.f7333g;
    }

    public float c() {
        return this.f7336j;
    }

    public long d() {
        return this.f7334h;
    }

    public int e() {
        return this.f7330d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a8 a8Var = (a8) obj;
        if (this.f7327a == a8Var.f7327a && this.f7328b == a8Var.f7328b && this.f7329c == a8Var.f7329c && this.f7330d == a8Var.f7330d && this.f7331e == a8Var.f7331e && this.f7332f == a8Var.f7332f && this.f7333g == a8Var.f7333g && this.f7334h == a8Var.f7334h && Float.compare(a8Var.f7335i, this.f7335i) == 0 && Float.compare(a8Var.f7336j, this.f7336j) == 0) {
            return true;
        }
        return false;
    }

    public int f() {
        return this.f7328b;
    }

    public int g() {
        return this.f7329c;
    }

    public long h() {
        return this.f7332f;
    }

    public int hashCode() {
        int i10;
        int i11 = ((((((((((((((this.f7327a * 31) + this.f7328b) * 31) + this.f7329c) * 31) + this.f7330d) * 31) + (this.f7331e ? 1 : 0)) * 31) + this.f7332f) * 31) + this.f7333g) * 31) + this.f7334h) * 31;
        float f10 = this.f7335i;
        int i12 = 0;
        if (f10 != 0.0f) {
            i10 = Float.floatToIntBits(f10);
        } else {
            i10 = 0;
        }
        int i13 = (i11 + i10) * 31;
        float f11 = this.f7336j;
        if (f11 != 0.0f) {
            i12 = Float.floatToIntBits(f11);
        }
        return i13 + i12;
    }

    public int i() {
        return this.f7327a;
    }

    public boolean j() {
        return this.f7331e;
    }

    public String toString() {
        return "VideoButtonProperties{widthPercentOfScreen=" + this.f7327a + ", heightPercentOfScreen=" + this.f7328b + ", margin=" + this.f7329c + ", gravity=" + this.f7330d + ", tapToFade=" + this.f7331e + ", tapToFadeDurationMillis=" + this.f7332f + ", fadeInDurationMillis=" + this.f7333g + ", fadeOutDurationMillis=" + this.f7334h + ", fadeInDelay=" + this.f7335i + ", fadeOutDelay=" + this.f7336j + '}';
    }
}
