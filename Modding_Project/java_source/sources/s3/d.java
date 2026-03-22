package s3;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import k2.f;
/* compiled from: ImageDecodeOptions.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: m  reason: collision with root package name */
    private static final d f66265m = b().a();

    /* renamed from: a  reason: collision with root package name */
    public final int f66266a;

    /* renamed from: b  reason: collision with root package name */
    public final int f66267b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f66268c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f66269d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f66270e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f66271f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f66272g;

    /* renamed from: h  reason: collision with root package name */
    public final Bitmap.Config f66273h;

    /* renamed from: i  reason: collision with root package name */
    public final Bitmap.Config f66274i;

    /* renamed from: j  reason: collision with root package name */
    public final w3.b f66275j;

    /* renamed from: k  reason: collision with root package name */
    public final ColorSpace f66276k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f66277l;

    public d(e eVar) {
        this.f66266a = eVar.l();
        this.f66267b = eVar.k();
        this.f66268c = eVar.h();
        this.f66269d = eVar.n();
        this.f66270e = eVar.m();
        this.f66271f = eVar.g();
        this.f66272g = eVar.j();
        this.f66273h = eVar.c();
        this.f66274i = eVar.b();
        this.f66275j = eVar.f();
        eVar.d();
        this.f66276k = eVar.e();
        this.f66277l = eVar.i();
    }

    public static d a() {
        return f66265m;
    }

    public static e b() {
        return new e();
    }

    protected f.a c() {
        return k2.f.b(this).a("minDecodeIntervalMs", this.f66266a).a("maxDimensionPx", this.f66267b).d("decodePreviewFrame", this.f66268c).d("useLastFrameForPreview", this.f66269d).d("useEncodedImageForPreview", this.f66270e).d("decodeAllFrames", this.f66271f).d("forceStaticImage", this.f66272g).c("bitmapConfigName", this.f66273h.name()).c("animatedBitmapConfigName", this.f66274i.name()).c("customImageDecoder", this.f66275j).c("bitmapTransformation", null).c("colorSpace", this.f66276k);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f66266a != dVar.f66266a || this.f66267b != dVar.f66267b || this.f66268c != dVar.f66268c || this.f66269d != dVar.f66269d || this.f66270e != dVar.f66270e || this.f66271f != dVar.f66271f || this.f66272g != dVar.f66272g) {
            return false;
        }
        boolean z10 = this.f66277l;
        if (!z10 && this.f66273h != dVar.f66273h) {
            return false;
        }
        if ((z10 || this.f66274i == dVar.f66274i) && this.f66275j == dVar.f66275j && this.f66276k == dVar.f66276k) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12 = (((((((((((this.f66266a * 31) + this.f66267b) * 31) + (this.f66268c ? 1 : 0)) * 31) + (this.f66269d ? 1 : 0)) * 31) + (this.f66270e ? 1 : 0)) * 31) + (this.f66271f ? 1 : 0)) * 31) + (this.f66272g ? 1 : 0);
        if (!this.f66277l) {
            i12 = (i12 * 31) + this.f66273h.ordinal();
        }
        int i13 = 0;
        if (!this.f66277l) {
            int i14 = i12 * 31;
            Bitmap.Config config = this.f66274i;
            if (config != null) {
                i11 = config.ordinal();
            } else {
                i11 = 0;
            }
            i12 = i14 + i11;
        }
        int i15 = i12 * 31;
        w3.b bVar = this.f66275j;
        if (bVar != null) {
            i10 = bVar.hashCode();
        } else {
            i10 = 0;
        }
        int i16 = (i15 + i10) * 961;
        ColorSpace colorSpace = this.f66276k;
        if (colorSpace != null) {
            i13 = colorSpace.hashCode();
        }
        return i16 + i13;
    }

    public String toString() {
        return "ImageDecodeOptions{" + c().toString() + "}";
    }
}
