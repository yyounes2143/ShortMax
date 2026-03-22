package io.bidmachine.media3.exoplayer.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import hn.b2;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.source.s;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: BaseMediaSource.java */
/* loaded from: classes8.dex */
public abstract class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<r.c> f56725a = new ArrayList<>(1);

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<r.c> f56726b = new HashSet<>(1);

    /* renamed from: c  reason: collision with root package name */
    private final s.a f56727c = new s.a();

    /* renamed from: d  reason: collision with root package name */
    private final h.a f56728d = new h.a();
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Looper f56729e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private zm.a0 f56730f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private b2 f56731g;

    protected abstract void A();

    @Override // io.bidmachine.media3.exoplayer.source.r
    public final void e(r.c cVar) {
        cn.a.e(this.f56729e);
        boolean isEmpty = this.f56726b.isEmpty();
        this.f56726b.add(cVar);
        if (isEmpty) {
            v();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public final void g(Handler handler, io.bidmachine.media3.exoplayer.drm.h hVar) {
        cn.a.e(handler);
        cn.a.e(hVar);
        this.f56728d.g(handler, hVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public final void h(s sVar) {
        this.f56727c.E(sVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public final void i(io.bidmachine.media3.exoplayer.drm.h hVar) {
        this.f56728d.t(hVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public final void k(r.c cVar) {
        this.f56725a.remove(cVar);
        if (this.f56725a.isEmpty()) {
            this.f56729e = null;
            this.f56730f = null;
            this.f56731g = null;
            this.f56726b.clear();
            A();
            return;
        }
        n(cVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public final void l(r.c cVar, @Nullable en.o oVar, b2 b2Var) {
        boolean z10;
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f56729e;
        if (looper != null && looper != myLooper) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.a(z10);
        this.f56731g = b2Var;
        zm.a0 a0Var = this.f56730f;
        this.f56725a.add(cVar);
        if (this.f56729e == null) {
            this.f56729e = myLooper;
            this.f56726b.add(cVar);
            y(oVar);
        } else if (a0Var != null) {
            e(cVar);
            cVar.a(this, a0Var);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public final void n(r.c cVar) {
        boolean isEmpty = this.f56726b.isEmpty();
        this.f56726b.remove(cVar);
        if (!isEmpty && this.f56726b.isEmpty()) {
            u();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public final void p(Handler handler, s sVar) {
        cn.a.e(handler);
        cn.a.e(sVar);
        this.f56727c.h(handler, sVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h.a q(int i10, @Nullable r.b bVar) {
        return this.f56728d.u(i10, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h.a r(@Nullable r.b bVar) {
        return this.f56728d.u(0, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s.a s(int i10, @Nullable r.b bVar) {
        return this.f56727c.H(i10, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s.a t(@Nullable r.b bVar) {
        return this.f56727c.H(0, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final b2 w() {
        return (b2) cn.a.i(this.f56731g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean x() {
        return !this.f56726b.isEmpty();
    }

    protected abstract void y(@Nullable en.o oVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void z(zm.a0 a0Var) {
        this.f56730f = a0Var;
        Iterator<r.c> it = this.f56725a.iterator();
        while (it.hasNext()) {
            it.next().a(this, a0Var);
        }
    }

    protected void u() {
    }

    protected void v() {
    }
}
