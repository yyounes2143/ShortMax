package dn;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import zm.t;
/* compiled from: Mp4LocationData.java */
/* loaded from: classes8.dex */
public final class e implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final float f50457a;

    /* renamed from: b  reason: collision with root package name */
    public final float f50458b;

    public e(@FloatRange(from = -90.0d, to = 90.0d) float f10, @FloatRange(from = -180.0d, to = 180.0d) float f11) {
        boolean z10;
        if (f10 >= -90.0f && f10 <= 90.0f && f11 >= -180.0f && f11 <= 180.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.b(z10, "Invalid latitude or longitude");
        this.f50457a = f10;
        this.f50458b = f11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f50457a == eVar.f50457a && this.f50458b == eVar.f50458b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + com.google.common.primitives.c.a(this.f50457a)) * 31) + com.google.common.primitives.c.a(this.f50458b);
    }

    public String toString() {
        return "xyz: latitude=" + this.f50457a + ", longitude=" + this.f50458b;
    }
}
