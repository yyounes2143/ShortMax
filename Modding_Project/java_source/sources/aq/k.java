package aq;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.VisibleForTesting;
import aq.k;
import io.bidmachine.rendering.measurer.VideoMeasurer;
import io.bidmachine.rendering.model.MediaSource;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import lq.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.k0;
import rq.l0;
import rq.p0;
import rq.t;
import tp.r;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public final class k extends up.a {
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final VideoMeasurer f2036r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private bq.b f2037s;

    @Metadata
    @VisibleForTesting
    /* loaded from: classes8.dex */
    public final class a implements bq.d {
        public a() {
        }

        @Override // bq.d
        public void a(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            k.this.H();
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.D0();
            }
            k.this.r().b();
        }

        @Override // bq.d
        public void b(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.c0();
            }
            k.this.r().f();
        }

        @Override // bq.d
        public void c(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.b0();
            }
            k.this.r().i();
        }

        @Override // bq.d
        public void d(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.T(player.n());
            }
            k.this.z().a(k.this);
        }

        @Override // bq.d
        public void e(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.z0((float) player.g(), player.getVolume());
            }
            k.this.r().j();
        }

        @Override // bq.d
        public void f(@NotNull bq.b player, @NotNull t error) {
            Intrinsics.checkNotNullParameter(player, "player");
            Intrinsics.checkNotNullParameter(error, "error");
            k.this.c0(error);
        }

        @Override // bq.d
        public void g(@NotNull bq.b player, @NotNull t error) {
            Intrinsics.checkNotNullParameter(player, "player");
            Intrinsics.checkNotNullParameter(error, "error");
            k.this.Y(error);
        }

        @Override // bq.d
        public void h(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.n0();
            }
            k.this.r().d();
        }

        @Override // bq.d
        public void i(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.m0();
            }
            k.this.r().c();
        }

        @Override // bq.d
        public void j(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.e0();
            }
            k.this.r().g();
        }

        @Override // bq.d
        public void k(@NotNull bq.b player) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.d0();
            }
            k.this.r().a();
        }

        @Override // bq.d
        public void l(@NotNull bq.b player, boolean z10) {
            Integer num;
            Intrinsics.checkNotNullParameter(player, "player");
            View j10 = k.this.j();
            if (j10 != null) {
                num = Integer.valueOf(j10.getId());
            } else {
                num = null;
            }
            if (z10) {
                k.this.r().b(num);
            } else {
                k.this.r().a(num);
            }
        }

        @Override // bq.d
        public void m(@NotNull bq.b player, long j10) {
            Intrinsics.checkNotNullParameter(player, "player");
            k.this.r().a(player.g(), j10);
        }

        @Override // bq.d
        public void n(@NotNull bq.b player, float f10) {
            Intrinsics.checkNotNullParameter(player, "player");
            VideoMeasurer videoMeasurer = k.this.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.F0(f10);
            }
        }
    }

    @Metadata
    @VisibleForTesting
    /* loaded from: classes8.dex */
    public final class b implements a.InterfaceC0869a<Uri> {
        public b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(k this$0, Uri uri) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(uri, "$uri");
            try {
                bq.b bVar = this$0.f2037s;
                if (bVar != null) {
                    bVar.a(uri);
                    bVar.prepare();
                }
            } catch (Throwable th2) {
                s.h(th2);
                this$0.Y(t.f66124b.a(th2));
            }
        }

        @Override // lq.a.InterfaceC0869a
        public void a(@NotNull t error) {
            Intrinsics.checkNotNullParameter(error, "error");
            k.this.Y(error);
        }

        @Override // lq.a.InterfaceC0869a
        /* renamed from: c */
        public void onSuccess(@NotNull final Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            final k kVar = k.this;
            sq.j.k(new Runnable() { // from class: aq.l
                @Override // java.lang.Runnable
                public final void run() {
                    k.b.d(k.this, uri);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.a adElementParams, @NotNull up.c adFormListener, @NotNull jq.b eventCallback, @Nullable io.bidmachine.rendering.internal.detector.brokencreative.a aVar, @Nullable VideoMeasurer videoMeasurer) {
        super(context, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.f2036r = videoMeasurer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(k this$0, ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewGroup, "$viewGroup");
        bq.b bVar = this$0.f2037s;
        VideoMeasurer videoMeasurer = this$0.f2036r;
        if (videoMeasurer != null && bVar != null) {
            videoMeasurer.w(bVar.n(), viewGroup);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(k this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bq.b bVar = this$0.f2037s;
        if (bVar != null) {
            bVar.b(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(k this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            bq.b a10 = bq.c.a(this$0.B(), str);
            a10.d(new a());
            VideoMeasurer videoMeasurer = this$0.f2036r;
            if (videoMeasurer != null) {
                videoMeasurer.A0(a10.n());
            }
            this$0.f2037s = a10;
        } catch (Throwable th2) {
            s.h(th2);
            this$0.Y(t.f66124b.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(t tVar) {
        VideoMeasurer videoMeasurer = this.f2036r;
        if (videoMeasurer != null) {
            videoMeasurer.a(tVar);
        }
        z().d(this, tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(k this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bq.b bVar = this$0.f2037s;
        if (bVar != null) {
            bVar.a(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(t tVar) {
        VideoMeasurer videoMeasurer = this.f2036r;
        if (videoMeasurer != null) {
            videoMeasurer.a(tVar);
        }
        z().b(this, tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(k this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bq.b bVar = this$0.f2037s;
        if (bVar != null) {
            bVar.a();
        }
        this$0.f2037s = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(k this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(k this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bq.b bVar = this$0.f2037s;
        if (bVar != null) {
            bVar.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(k this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bq.b bVar = this$0.f2037s;
        if (bVar != null) {
            bVar.play();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(k this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bq.b bVar = this$0.f2037s;
        if (bVar != null) {
            bVar.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(k this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bq.b bVar = this$0.f2037s;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // up.a
    @Nullable
    public View D() {
        bq.b bVar = this.f2037s;
        if (bVar != null) {
            return bVar.n();
        }
        return null;
    }

    @Override // up.a
    public void E() {
        super.E();
        VideoMeasurer videoMeasurer = this.f2036r;
        if (videoMeasurer != null) {
            videoMeasurer.onClicked();
        }
    }

    @Override // up.a
    protected void F() {
        Unit unit;
        VideoMeasurer videoMeasurer = this.f2036r;
        if (videoMeasurer != null) {
            videoMeasurer.R(new r() { // from class: aq.g
                @Override // yq.m
                public final void s() {
                    k.f0(k.this);
                }
            });
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            S();
        }
    }

    @Override // up.a
    public void H() {
        super.H();
        VideoMeasurer videoMeasurer = this.f2036r;
        if (videoMeasurer != null) {
            videoMeasurer.onShown();
        }
    }

    @VisibleForTesting
    public final void S() {
        sq.j.k(new r() { // from class: aq.j
            @Override // yq.m
            public final void s() {
                k.e0(k.this);
            }
        });
    }

    @Override // tp.b0, tp.u
    public void a(@Nullable final Integer num) {
        sq.j.k(new r() { // from class: aq.d
            @Override // yq.m
            public final void s() {
                k.a0(k.this, num);
            }
        });
    }

    @Override // tp.b0, tp.u
    public void b(@Nullable final Integer num) {
        sq.j.k(new r() { // from class: aq.c
            @Override // yq.m
            public final void s() {
                k.V(k.this, num);
            }
        });
    }

    @Override // tp.f
    public void c() {
        final String e10;
        k0 l10 = h().l();
        String str = null;
        l0 a10 = l10 != null ? l10.a() : null;
        if (a10 != null) {
            if (a10 instanceof p0) {
                str = ((p0) a10).a();
            } else {
                x("Invalid resource type (" + a10.getClass().getSimpleName() + "), it should be UrlResourceSource");
            }
        } else {
            str = h().m();
        }
        MediaSource d10 = MediaSource.f58545b.d(str);
        if (d10 == null) {
            Y(new t("Invalid adm url (" + str + ')'));
            return;
        }
        if (d10.a() == MediaSource.DeliveryType.STREAM) {
            e10 = "exo";
        } else {
            e10 = h().e("player");
        }
        sq.j.k(new Runnable() { // from class: aq.a
            @Override // java.lang.Runnable
            public final void run() {
                k.W(k.this, e10);
            }
        });
        C().c(d10, new b());
    }

    @Override // up.a, tp.f
    public void d() {
        sq.j.k(new r() { // from class: aq.i
            @Override // yq.m
            public final void s() {
                k.h0(k.this);
            }
        });
    }

    @Override // tp.b0, tp.z
    public void e() {
        sq.j.k(new r() { // from class: aq.b
            @Override // yq.m
            public final void s() {
                k.j0(k.this);
            }
        });
    }

    @Override // up.a, tp.f
    public void f() {
        super.f();
        sq.j.k(new r() { // from class: aq.h
            @Override // yq.m
            public final void s() {
                k.g0(k.this);
            }
        });
    }

    @Override // tp.b0, tp.w
    public void k() {
        sq.j.k(new r() { // from class: aq.e
            @Override // yq.m
            public final void s() {
                k.i0(k.this);
            }
        });
    }

    @Override // tp.b0, tp.j
    public void b() {
        e();
    }

    @Override // tp.f
    public void c(@NotNull final ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        sq.j.k(new r() { // from class: aq.f
            @Override // yq.m
            public final void s() {
                k.U(k.this, viewGroup);
            }
        });
    }
}
