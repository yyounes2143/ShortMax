package d4;

import android.graphics.Bitmap;
import com.facebook.imagepipeline.nativecode.NativeBlurFilter;
import f2.e;
import k2.h;
/* compiled from: IterativeBoxBlurPostProcessor.java */
/* loaded from: classes3.dex */
public class a extends e4.a {

    /* renamed from: c  reason: collision with root package name */
    private final int f49806c;

    /* renamed from: d  reason: collision with root package name */
    private final int f49807d;

    /* renamed from: e  reason: collision with root package name */
    private f2.a f49808e;

    public a(int i10, int i11) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.b(Boolean.valueOf(z10));
        h.b(Boolean.valueOf(i11 > 0));
        this.f49806c = i10;
        this.f49807d = i11;
    }

    @Override // e4.b
    public f2.a b() {
        if (this.f49808e == null) {
            this.f49808e = new e(String.format(null, "i%dr%d", Integer.valueOf(this.f49806c), Integer.valueOf(this.f49807d)));
        }
        return this.f49808e;
    }

    @Override // e4.a
    public void e(Bitmap bitmap) {
        NativeBlurFilter.a(bitmap, this.f49806c, this.f49807d);
    }
}
