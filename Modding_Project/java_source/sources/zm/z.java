package zm;

import android.view.Surface;
import androidx.annotation.Nullable;
/* compiled from: SurfaceInfo.java */
/* loaded from: classes8.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public final Surface f72234a;

    /* renamed from: b  reason: collision with root package name */
    public final int f72235b;

    /* renamed from: c  reason: collision with root package name */
    public final int f72236c;

    /* renamed from: d  reason: collision with root package name */
    public final int f72237d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f72238e;

    public z(Surface surface, int i10, int i11) {
        this(surface, i10, i11, 0);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        if (this.f72235b == zVar.f72235b && this.f72236c == zVar.f72236c && this.f72237d == zVar.f72237d && this.f72238e == zVar.f72238e && this.f72234a.equals(zVar.f72234a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.f72234a.hashCode() * 31) + this.f72235b) * 31) + this.f72236c) * 31) + this.f72237d) * 31) + (this.f72238e ? 1 : 0);
    }

    public z(Surface surface, int i10, int i11, int i12) {
        this(surface, i10, i11, i12, false);
    }

    public z(Surface surface, int i10, int i11, int i12, boolean z10) {
        cn.a.b(i12 == 0 || i12 == 90 || i12 == 180 || i12 == 270, "orientationDegrees must be 0, 90, 180, or 270");
        this.f72234a = surface;
        this.f72235b = i10;
        this.f72236c = i11;
        this.f72237d = i12;
        this.f72238e = z10;
    }
}
