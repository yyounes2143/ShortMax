package b7;

import androidx.annotation.Nullable;
import com.ss.texturerender.TextureRenderKeys;
/* compiled from: Size.java */
/* loaded from: classes4.dex */
public final class j0 {

    /* renamed from: c  reason: collision with root package name */
    public static final j0 f2460c = new j0(-1, -1);

    /* renamed from: a  reason: collision with root package name */
    private final int f2461a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2462b;

    public j0(int i10, int i11) {
        boolean z10;
        if ((i10 != -1 && i10 < 0) || (i11 != -1 && i11 < 0)) {
            z10 = false;
        } else {
            z10 = true;
        }
        a.a(z10);
        this.f2461a = i10;
        this.f2462b = i11;
    }

    public int a() {
        return this.f2462b;
    }

    public int b() {
        return this.f2461a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        if (this.f2461a != j0Var.f2461a || this.f2462b != j0Var.f2462b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10 = this.f2462b;
        int i11 = this.f2461a;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public String toString() {
        return this.f2461a + TextureRenderKeys.KEY_IS_X + this.f2462b;
    }
}
