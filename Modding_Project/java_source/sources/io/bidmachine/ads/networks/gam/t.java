package io.bidmachine.ads.networks.gam;

import androidx.annotation.NonNull;
import java.util.Map;
/* compiled from: GAMUnitData.java */
/* loaded from: classes7.dex */
public class t {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f53710a;

    /* renamed from: b  reason: collision with root package name */
    private final float f53711b;

    /* renamed from: c  reason: collision with root package name */
    private final float f53712c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f53713d;

    public t(@NonNull String str, float f10, float f11, @NonNull Map<String, String> map) {
        this.f53710a = str;
        this.f53711b = f10;
        this.f53712c = f11;
        this.f53713d = map;
    }

    @NonNull
    public String a() {
        return this.f53710a;
    }

    @NonNull
    public Map<String, String> b() {
        return this.f53713d;
    }

    public float c() {
        return this.f53712c;
    }

    public float d() {
        return this.f53711b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (this.f53710a.equals(tVar.f53710a) && Float.compare(tVar.f53711b, this.f53711b) == 0 && Float.compare(tVar.f53712c, this.f53712c) == 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f53710a.hashCode() * 31) + Float.floatToIntBits(this.f53711b)) * 31) + Float.floatToIntBits(this.f53712c);
    }

    @NonNull
    public String toString() {
        return "adUnitId - " + this.f53710a + ", score - " + this.f53711b + ", price - " + this.f53712c;
    }
}
