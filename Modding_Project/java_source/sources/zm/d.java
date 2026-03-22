package zm;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: AuxEffectInfo.java */
/* loaded from: classes8.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final int f71836a;

    /* renamed from: b  reason: collision with root package name */
    public final float f71837b;

    public d(int i10, float f10) {
        this.f71836a = i10;
        this.f71837b = f10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f71836a == dVar.f71836a && Float.compare(dVar.f71837b, this.f71837b) == 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f71836a) * 31) + Float.floatToIntBits(this.f71837b);
    }
}
