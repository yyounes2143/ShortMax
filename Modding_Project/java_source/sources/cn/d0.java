package cn;

import androidx.annotation.Nullable;
import com.ss.texturerender.TextureRenderKeys;
/* compiled from: Size.java */
/* loaded from: classes8.dex */
public final class d0 {

    /* renamed from: c  reason: collision with root package name */
    public static final d0 f3574c = new d0(-1, -1);

    /* renamed from: d  reason: collision with root package name */
    public static final d0 f3575d = new d0(0, 0);

    /* renamed from: a  reason: collision with root package name */
    private final int f3576a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3577b;

    public d0(int i10, int i11) {
        boolean z10;
        if ((i10 != -1 && i10 < 0) || (i11 != -1 && i11 < 0)) {
            z10 = false;
        } else {
            z10 = true;
        }
        a.a(z10);
        this.f3576a = i10;
        this.f3577b = i11;
    }

    public int a() {
        return this.f3577b;
    }

    public int b() {
        return this.f3576a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        if (this.f3576a != d0Var.f3576a || this.f3577b != d0Var.f3577b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10 = this.f3577b;
        int i11 = this.f3576a;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public String toString() {
        return this.f3576a + TextureRenderKeys.KEY_IS_X + this.f3577b;
    }
}
