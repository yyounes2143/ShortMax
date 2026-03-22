package io.bidmachine.rendering.internal.view;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import fq.q;
import fq.r;
import io.bidmachine.rendering.model.PrivacySheetParams;
import rq.n;
import rq.t;
import sq.h;
import sq.j;
import tp.k;
import tp.s;
/* loaded from: classes8.dex */
public class f extends FrameLayout {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final h f58497a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.view.d f58498b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final q f58499c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private d f58500d;

    /* loaded from: classes8.dex */
    private final class b implements r {
        private b() {
        }

        @Override // fq.r
        public void c(@NonNull q qVar, @NonNull t tVar) {
            s.b(f.this.f58497a, "onAdPhaseFailToLoad (%s) - %s", qVar, tVar);
            qVar.a();
        }

        @Override // fq.r
        public void d(@NonNull q qVar) {
            s.g(f.this.f58497a, "onAdPhaseLoaded (%s)", qVar);
            if (qVar.c(f.this)) {
                qVar.d(new c());
                f.this.o();
            }
        }
    }

    /* loaded from: classes8.dex */
    private final class c implements fq.s {
        private c() {
        }

        @Override // fq.s
        public void a() {
            f.this.f58498b.j();
        }

        @Override // fq.s
        public void b(@NonNull PrivacySheetParams privacySheetParams) {
        }

        @Override // fq.s
        public void c() {
            f.this.f58498b.d();
        }

        @Override // fq.s
        public void e() {
            f.this.e();
        }

        @Override // fq.s
        public void a(@NonNull n nVar) {
            f.this.j(nVar);
        }

        @Override // fq.s
        public void b() {
            f.this.e();
        }

        @Override // fq.s
        public void d() {
        }
    }

    /* loaded from: classes8.dex */
    public interface d {
        void a();

        void a(@NonNull n nVar);

        void b();
    }

    public f(@NonNull Context context, @Nullable rq.c cVar, @NonNull eq.c cVar2) {
        super(context);
        this.f58497a = new h("PlaceholderView");
        rq.c b10 = cVar == null ? k.b() : cVar;
        h hVar = new h("PlaceholderViewAdPhaseController");
        this.f58499c = new io.bidmachine.rendering.internal.controller.h(context, b10, hVar, new io.bidmachine.rendering.internal.state.c(hVar.toString(), io.bidmachine.rendering.internal.h.j()), new b(), cVar2);
        io.bidmachine.rendering.internal.view.d dVar = new io.bidmachine.rendering.internal.view.d(context);
        this.f58498b = dVar;
        addView(dVar, yq.t.b());
        dVar.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(n nVar) {
        d dVar = this.f58500d;
        if (dVar != null) {
            dVar.a(nVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(@NonNull final n nVar) {
        s.g(this.f58497a, "notifyBrokenCreativeEvent", new Object[0]);
        j.k(new Runnable() { // from class: oq.c
            @Override // java.lang.Runnable
            public final void run() {
                io.bidmachine.rendering.internal.view.f.this.g(nVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        d dVar = this.f58500d;
        if (dVar != null) {
            dVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        d dVar = this.f58500d;
        if (dVar != null) {
            dVar.b();
        }
    }

    private void n() {
        s.g(this.f58497a, "notifyPlaceholderClosed", new Object[0]);
        j.k(new Runnable() { // from class: oq.d
            @Override // java.lang.Runnable
            public final void run() {
                io.bidmachine.rendering.internal.view.f.this.k();
            }
        });
    }

    @VisibleForTesting
    void e() {
        n();
    }

    public void i() {
        this.f58500d = null;
        this.f58499c.a();
        j.k(new Runnable() { // from class: oq.f
            @Override // java.lang.Runnable
            public final void run() {
                io.bidmachine.rendering.internal.view.f.this.removeAllViews();
            }
        });
    }

    public void m() {
        s.g(this.f58497a, "load", new Object[0]);
        this.f58499c.c();
    }

    @VisibleForTesting
    void o() {
        s.g(this.f58497a, "notifyPlaceholderLoaded", new Object[0]);
        j.k(new Runnable() { // from class: oq.e
            @Override // java.lang.Runnable
            public final void run() {
                io.bidmachine.rendering.internal.view.f.this.l();
            }
        });
    }

    public void p() {
        this.f58499c.onShown();
    }

    public void q() {
        this.f58499c.a(true);
    }

    public void r() {
        this.f58499c.d();
    }

    public void setListener(@Nullable d dVar) {
        this.f58500d = dVar;
    }
}
