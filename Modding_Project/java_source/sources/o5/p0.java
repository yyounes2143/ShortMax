package o5;

import androidx.annotation.Nullable;
/* compiled from: RendererConfiguration.java */
/* loaded from: classes4.dex */
public final class p0 {

    /* renamed from: b  reason: collision with root package name */
    public static final p0 f63121b = new p0(false);

    /* renamed from: a  reason: collision with root package name */
    public final boolean f63122a;

    public p0(boolean z10) {
        this.f63122a = z10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && p0.class == obj.getClass() && this.f63122a == ((p0) obj).f63122a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return !this.f63122a ? 1 : 0;
    }
}
