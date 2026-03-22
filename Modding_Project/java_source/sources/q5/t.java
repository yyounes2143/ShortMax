package q5;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: AuxEffectInfo.java */
/* loaded from: classes4.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final int f65123a;

    /* renamed from: b  reason: collision with root package name */
    public final float f65124b;

    public t(int i10, float f10) {
        this.f65123a = i10;
        this.f65124b = f10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (this.f65123a == tVar.f65123a && Float.compare(tVar.f65124b, this.f65124b) == 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f65123a) * 31) + Float.floatToIntBits(this.f65124b);
    }
}
