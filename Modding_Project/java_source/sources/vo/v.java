package vo;

import androidx.annotation.Nullable;
import cn.b0;
import java.io.IOException;
/* compiled from: TrackFragment.java */
/* loaded from: classes8.dex */
final class v {

    /* renamed from: a  reason: collision with root package name */
    public c f69340a;

    /* renamed from: b  reason: collision with root package name */
    public long f69341b;

    /* renamed from: c  reason: collision with root package name */
    public long f69342c;

    /* renamed from: d  reason: collision with root package name */
    public long f69343d;

    /* renamed from: e  reason: collision with root package name */
    public int f69344e;

    /* renamed from: f  reason: collision with root package name */
    public int f69345f;

    /* renamed from: l  reason: collision with root package name */
    public boolean f69351l;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public u f69353n;

    /* renamed from: p  reason: collision with root package name */
    public boolean f69355p;

    /* renamed from: q  reason: collision with root package name */
    public long f69356q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f69357r;

    /* renamed from: g  reason: collision with root package name */
    public long[] f69346g = new long[0];

    /* renamed from: h  reason: collision with root package name */
    public int[] f69347h = new int[0];

    /* renamed from: i  reason: collision with root package name */
    public int[] f69348i = new int[0];

    /* renamed from: j  reason: collision with root package name */
    public long[] f69349j = new long[0];

    /* renamed from: k  reason: collision with root package name */
    public boolean[] f69350k = new boolean[0];

    /* renamed from: m  reason: collision with root package name */
    public boolean[] f69352m = new boolean[0];

    /* renamed from: o  reason: collision with root package name */
    public final b0 f69354o = new b0();

    public void a(ao.q qVar) throws IOException {
        qVar.readFully(this.f69354o.e(), 0, this.f69354o.g());
        this.f69354o.W(0);
        this.f69355p = false;
    }

    public void b(b0 b0Var) {
        b0Var.l(this.f69354o.e(), 0, this.f69354o.g());
        this.f69354o.W(0);
        this.f69355p = false;
    }

    public long c(int i10) {
        return this.f69349j[i10];
    }

    public void d(int i10) {
        this.f69354o.S(i10);
        this.f69351l = true;
        this.f69355p = true;
    }

    public void e(int i10, int i11) {
        this.f69344e = i10;
        this.f69345f = i11;
        if (this.f69347h.length < i10) {
            this.f69346g = new long[i10];
            this.f69347h = new int[i10];
        }
        if (this.f69348i.length < i11) {
            int i12 = (i11 * 125) / 100;
            this.f69348i = new int[i12];
            this.f69349j = new long[i12];
            this.f69350k = new boolean[i12];
            this.f69352m = new boolean[i12];
        }
    }

    public void f() {
        this.f69344e = 0;
        this.f69356q = 0L;
        this.f69357r = false;
        this.f69351l = false;
        this.f69355p = false;
        this.f69353n = null;
    }

    public boolean g(int i10) {
        if (this.f69351l && this.f69352m[i10]) {
            return true;
        }
        return false;
    }
}
