package t3;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import androidx.annotation.RequiresApi;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.core.DownsampleMode;
import com.facebook.imagepipeline.producers.LocalExifThumbnailProducer;
import com.facebook.imagepipeline.producers.b1;
import com.facebook.imagepipeline.producers.g1;
import com.facebook.imagepipeline.producers.i1;
import com.facebook.imagepipeline.producers.l1;
import com.facebook.imagepipeline.producers.m1;
import com.facebook.imagepipeline.producers.n1;
import com.facebook.imagepipeline.producers.p1;
import com.facebook.imagepipeline.producers.r1;
import com.facebook.imagepipeline.producers.s1;
import com.facebook.imagepipeline.producers.u0;
import com.facebook.imagepipeline.producers.v0;
import com.facebook.imagepipeline.producers.w0;
import com.facebook.imagepipeline.producers.y0;
import com.facebook.imagepipeline.producers.z0;
/* compiled from: ProducerFactory.java */
/* loaded from: classes3.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    protected ContentResolver f67049a;

    /* renamed from: b  reason: collision with root package name */
    protected Resources f67050b;

    /* renamed from: c  reason: collision with root package name */
    protected AssetManager f67051c;

    /* renamed from: d  reason: collision with root package name */
    protected final n2.a f67052d;

    /* renamed from: e  reason: collision with root package name */
    protected final w3.b f67053e;

    /* renamed from: f  reason: collision with root package name */
    protected final w3.d f67054f;

    /* renamed from: g  reason: collision with root package name */
    protected final DownsampleMode f67055g;

    /* renamed from: h  reason: collision with root package name */
    protected final boolean f67056h;

    /* renamed from: i  reason: collision with root package name */
    protected final boolean f67057i;

    /* renamed from: j  reason: collision with root package name */
    protected final o f67058j;

    /* renamed from: k  reason: collision with root package name */
    protected final n2.g f67059k;

    /* renamed from: l  reason: collision with root package name */
    protected final k2.k<c> f67060l;

    /* renamed from: m  reason: collision with root package name */
    protected final r3.w<f2.a, PooledByteBuffer> f67061m;

    /* renamed from: n  reason: collision with root package name */
    protected final r3.w<f2.a, y3.e> f67062n;

    /* renamed from: o  reason: collision with root package name */
    protected final r3.j f67063o;

    /* renamed from: p  reason: collision with root package name */
    protected final r3.d<f2.a> f67064p;

    /* renamed from: q  reason: collision with root package name */
    protected final r3.d<f2.a> f67065q;

    /* renamed from: r  reason: collision with root package name */
    protected final q3.d f67066r;

    /* renamed from: s  reason: collision with root package name */
    protected final int f67067s;

    /* renamed from: t  reason: collision with root package name */
    protected final int f67068t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f67069u;

    /* renamed from: v  reason: collision with root package name */
    protected final a f67070v;

    /* renamed from: w  reason: collision with root package name */
    protected final int f67071w;

    /* renamed from: x  reason: collision with root package name */
    protected final boolean f67072x;

    public z(Context context, n2.a aVar, w3.b bVar, w3.d dVar, DownsampleMode downsampleMode, boolean z10, boolean z11, o oVar, n2.g gVar, r3.w<f2.a, y3.e> wVar, r3.w<f2.a, PooledByteBuffer> wVar2, k2.k<c> kVar, r3.j jVar, q3.d dVar2, int i10, int i11, boolean z12, int i12, a aVar2, boolean z13, int i13) {
        this.f67049a = context.getApplicationContext().getContentResolver();
        this.f67050b = context.getApplicationContext().getResources();
        this.f67051c = context.getApplicationContext().getAssets();
        this.f67052d = aVar;
        this.f67053e = bVar;
        this.f67054f = dVar;
        this.f67055g = downsampleMode;
        this.f67056h = z10;
        this.f67057i = z11;
        this.f67058j = oVar;
        this.f67059k = gVar;
        this.f67062n = wVar;
        this.f67061m = wVar2;
        this.f67060l = kVar;
        this.f67063o = jVar;
        this.f67066r = dVar2;
        this.f67064p = new r3.d<>(i13);
        this.f67065q = new r3.d<>(i13);
        this.f67067s = i10;
        this.f67068t = i11;
        this.f67069u = z12;
        this.f67071w = i12;
        this.f67070v = aVar2;
        this.f67072x = z13;
    }

    public static com.facebook.imagepipeline.producers.a a(b1<y3.k> b1Var) {
        return new com.facebook.imagepipeline.producers.a(b1Var);
    }

    public static com.facebook.imagepipeline.producers.l h(b1<y3.k> b1Var, b1<y3.k> b1Var2) {
        return new com.facebook.imagepipeline.producers.l(b1Var, b1Var2);
    }

    public y0 A(b1<o2.a<y3.e>> b1Var) {
        return new y0(this.f67062n, this.f67063o, b1Var);
    }

    public z0 B(b1<o2.a<y3.e>> b1Var) {
        return new z0(b1Var, this.f67066r, this.f67058j.b());
    }

    public g1 C() {
        return new g1(this.f67058j.c(), this.f67059k, this.f67049a);
    }

    public i1 D(b1<y3.k> b1Var, boolean z10, g4.d dVar) {
        return new i1(this.f67058j.b(), this.f67059k, b1Var, z10, dVar);
    }

    public <T> l1<T> E(b1<T> b1Var) {
        return new l1<>(b1Var);
    }

    public <T> p1<T> F(b1<T> b1Var) {
        return new p1<>(5, this.f67058j.a(), b1Var);
    }

    public r1 G(s1<y3.k>[] s1VarArr) {
        return new r1(s1VarArr);
    }

    public <T> b1<T> b(b1<T> b1Var, n1 n1Var) {
        return new m1(b1Var, n1Var);
    }

    public com.facebook.imagepipeline.producers.g c(b1<o2.a<y3.e>> b1Var) {
        return new com.facebook.imagepipeline.producers.g(this.f67062n, this.f67063o, b1Var);
    }

    public com.facebook.imagepipeline.producers.h d(b1<o2.a<y3.e>> b1Var) {
        return new com.facebook.imagepipeline.producers.h(this.f67063o, b1Var);
    }

    public com.facebook.imagepipeline.producers.i e(b1<o2.a<y3.e>> b1Var) {
        return new com.facebook.imagepipeline.producers.i(this.f67062n, this.f67063o, b1Var);
    }

    public com.facebook.imagepipeline.producers.j f(b1<o2.a<y3.e>> b1Var) {
        return new com.facebook.imagepipeline.producers.j(b1Var, this.f67067s, this.f67068t, this.f67069u);
    }

    public com.facebook.imagepipeline.producers.k g(b1<o2.a<y3.e>> b1Var) {
        return new com.facebook.imagepipeline.producers.k(this.f67061m, this.f67060l, this.f67063o, this.f67064p, this.f67065q, b1Var);
    }

    public com.facebook.imagepipeline.producers.p i() {
        return new com.facebook.imagepipeline.producers.p(this.f67059k);
    }

    public com.facebook.imagepipeline.producers.q j(b1<y3.k> b1Var) {
        return new com.facebook.imagepipeline.producers.q(this.f67052d, this.f67058j.g(), this.f67053e, this.f67054f, this.f67055g, this.f67056h, this.f67057i, b1Var, this.f67071w, this.f67070v, null, k2.l.f60584b);
    }

    public com.facebook.imagepipeline.producers.t k(b1<o2.a<y3.e>> b1Var) {
        return new com.facebook.imagepipeline.producers.t(b1Var, this.f67058j.f());
    }

    public com.facebook.imagepipeline.producers.v l(b1<y3.k> b1Var) {
        return new com.facebook.imagepipeline.producers.v(this.f67060l, this.f67063o, b1Var);
    }

    public com.facebook.imagepipeline.producers.w m(b1<y3.k> b1Var) {
        return new com.facebook.imagepipeline.producers.w(this.f67060l, this.f67063o, b1Var);
    }

    public com.facebook.imagepipeline.producers.y n(b1<y3.k> b1Var) {
        return new com.facebook.imagepipeline.producers.y(this.f67063o, this.f67072x, b1Var);
    }

    public b1<y3.k> o(b1<y3.k> b1Var) {
        return new com.facebook.imagepipeline.producers.z(this.f67061m, this.f67063o, b1Var);
    }

    public com.facebook.imagepipeline.producers.a0 p(b1<y3.k> b1Var) {
        return new com.facebook.imagepipeline.producers.a0(this.f67060l, this.f67063o, this.f67064p, this.f67065q, b1Var);
    }

    public com.facebook.imagepipeline.producers.g0 q() {
        return new com.facebook.imagepipeline.producers.g0(this.f67058j.c(), this.f67059k, this.f67051c);
    }

    public com.facebook.imagepipeline.producers.h0 r() {
        return new com.facebook.imagepipeline.producers.h0(this.f67058j.c(), this.f67059k, this.f67049a);
    }

    public com.facebook.imagepipeline.producers.i0 s() {
        return new com.facebook.imagepipeline.producers.i0(this.f67058j.c(), this.f67059k, this.f67049a);
    }

    public LocalExifThumbnailProducer t() {
        return new LocalExifThumbnailProducer(this.f67058j.d(), this.f67059k, this.f67049a);
    }

    public com.facebook.imagepipeline.producers.l0 u() {
        return new com.facebook.imagepipeline.producers.l0(this.f67058j.c(), this.f67059k);
    }

    public com.facebook.imagepipeline.producers.m0 v() {
        return new com.facebook.imagepipeline.producers.m0(this.f67058j.c(), this.f67059k, this.f67050b);
    }

    @RequiresApi(29)
    public com.facebook.imagepipeline.producers.q0 w() {
        return new com.facebook.imagepipeline.producers.q0(this.f67058j.b(), this.f67049a);
    }

    public com.facebook.imagepipeline.producers.r0 x() {
        return new com.facebook.imagepipeline.producers.r0(this.f67058j.c(), this.f67049a);
    }

    public b1<y3.k> y(v0 v0Var) {
        return new u0(this.f67059k, this.f67052d, v0Var);
    }

    public w0 z(b1<y3.k> b1Var) {
        return new w0(this.f67060l, this.f67063o, this.f67059k, this.f67052d, b1Var);
    }
}
