package vp;

import android.content.Context;
import android.view.View;
import io.bidmachine.rendering.internal.view.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sq.m;
import tp.s;
import up.c;
@Metadata
/* loaded from: classes8.dex */
public final class a extends up.a {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final b f69368r;

    @Metadata
    /* renamed from: vp.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private final class C0953a implements b.d {
        public C0953a() {
        }

        @Override // io.bidmachine.rendering.internal.view.b.d
        public void a() {
            a.this.r().a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.a adElementParams, @NotNull c adFormListener, @NotNull jq.b eventCallback, @Nullable io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(context, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        b bVar = new b(context);
        bVar.setListener(new C0953a());
        this.f69368r = bVar;
    }

    @Override // up.a
    @NotNull
    public View D() {
        return this.f69368r;
    }

    @Override // up.a
    protected void F() {
        this.f69368r.h();
    }

    @Override // tp.b0, tp.a0
    public void a(@Nullable String str) {
        Integer d10 = m.d(str);
        if (d10 == null) {
            s.c("Can't obtain time to start", new Object[0]);
            return;
        }
        this.f69368r.setDuration(d10.intValue());
        this.f69368r.n();
    }

    @Override // tp.f
    public void c() {
        z().a(this);
    }

    @Override // up.a, tp.f
    public void d() {
        this.f69368r.m();
        super.d();
    }

    @Override // up.a, tp.f
    public void f() {
        super.f();
        this.f69368r.o();
    }
}
