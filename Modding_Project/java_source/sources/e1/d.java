package e1;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: ScaleXY.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private float f50749a;

    /* renamed from: b  reason: collision with root package name */
    private float f50750b;

    public d(float f10, float f11) {
        this.f50749a = f10;
        this.f50750b = f11;
    }

    public boolean a(float f10, float f11) {
        if (this.f50749a == f10 && this.f50750b == f11) {
            return true;
        }
        return false;
    }

    public float b() {
        return this.f50749a;
    }

    public float c() {
        return this.f50750b;
    }

    public void d(float f10, float f11) {
        this.f50749a = f10;
        this.f50750b = f11;
    }

    public String toString() {
        return b() + TextureRenderKeys.KEY_IS_X + c();
    }

    public d() {
        this(1.0f, 1.0f);
    }
}
