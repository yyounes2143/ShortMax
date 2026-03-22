package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.u1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p5.t3;
/* compiled from: BaseMediaSource.java */
/* loaded from: classes4.dex */
public abstract class a implements o {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<o.c> f18213a = new ArrayList<>(1);

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<o.c> f18214b = new HashSet<>(1);

    /* renamed from: c  reason: collision with root package name */
    private final p.a f18215c = new p.a();

    /* renamed from: d  reason: collision with root package name */
    private final h.a f18216d = new h.a();
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Looper f18217e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private u1 f18218f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private t3 f18219g;

    @Override // com.google.android.exoplayer2.source.o
    public final void d(o.c cVar) {
        this.f18213a.remove(cVar);
        if (this.f18213a.isEmpty()) {
            this.f18217e = null;
            this.f18218f = null;
            this.f18219g = null;
            this.f18214b.clear();
            y();
            return;
        }
        k(cVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void e(p pVar) {
        this.f18215c.w(pVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void g(o.c cVar, @Nullable a7.y yVar, t3 t3Var) {
        boolean z10;
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f18217e;
        if (looper != null && looper != myLooper) {
            z10 = false;
        } else {
            z10 = true;
        }
        b7.a.a(z10);
        this.f18219g = t3Var;
        u1 u1Var = this.f18218f;
        this.f18213a.add(cVar);
        if (this.f18217e == null) {
            this.f18217e = myLooper;
            this.f18214b.add(cVar);
            w(yVar);
        } else if (u1Var != null) {
            j(cVar);
            cVar.a(this, u1Var);
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void h(Handler handler, p pVar) {
        b7.a.e(handler);
        b7.a.e(pVar);
        this.f18215c.f(handler, pVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void j(o.c cVar) {
        b7.a.e(this.f18217e);
        boolean isEmpty = this.f18214b.isEmpty();
        this.f18214b.add(cVar);
        if (isEmpty) {
            t();
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void k(o.c cVar) {
        boolean isEmpty = this.f18214b.isEmpty();
        this.f18214b.remove(cVar);
        if (!isEmpty && this.f18214b.isEmpty()) {
            s();
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void m(Handler handler, com.google.android.exoplayer2.drm.h hVar) {
        b7.a.e(handler);
        b7.a.e(hVar);
        this.f18216d.g(handler, hVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public final void n(com.google.android.exoplayer2.drm.h hVar) {
        this.f18216d.t(hVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h.a o(int i10, @Nullable o.b bVar) {
        return this.f18216d.u(i10, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h.a p(@Nullable o.b bVar) {
        return this.f18216d.u(0, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final p.a q(int i10, @Nullable o.b bVar, long j10) {
        return this.f18215c.x(i10, bVar, j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final p.a r(@Nullable o.b bVar) {
        return this.f18215c.x(0, bVar, 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final t3 u() {
        return (t3) b7.a.i(this.f18219g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean v() {
        return !this.f18214b.isEmpty();
    }

    protected abstract void w(@Nullable a7.y yVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void x(u1 u1Var) {
        this.f18218f = u1Var;
        Iterator<o.c> it = this.f18213a.iterator();
        while (it.hasNext()) {
            it.next().a(this, u1Var);
        }
    }

    protected abstract void y();

    protected void s() {
    }

    protected void t() {
    }
}
