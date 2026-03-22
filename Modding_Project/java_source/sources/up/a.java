package up;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import io.bidmachine.rendering.model.AdElementType;
import io.bidmachine.util.ViewUtilsKt;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.e;
import rq.g0;
import rq.h0;
import sq.j;
import sq.n;
import tp.b0;
import tp.c0;
import tp.f;
import tp.h;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public abstract class a extends b0 implements f, View.OnClickListener, n {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final C0943a f68566p = new C0943a(null);
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private static final AdElementType[] f68567q = {AdElementType.Image, AdElementType.Label};
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final lq.a f68568c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final rq.a f68569d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final c f68570e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.detector.brokencreative.a f68571f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Context f68572g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final e f68573h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final c0 f68574i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final AtomicBoolean f68575j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private ViewGroup f68576k;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f68577l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f68578m;

    /* renamed from: n  reason: collision with root package name */
    private volatile boolean f68579n;

    /* renamed from: o  reason: collision with root package name */
    private volatile boolean f68580o;

    @Metadata
    /* renamed from: up.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0943a {
        public /* synthetic */ C0943a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0943a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.a adElementParams, @NotNull c adFormListener, @NotNull jq.b eventCallback, @Nullable io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(eventCallback);
        c0 c0Var;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.f68568c = repository;
        this.f68569d = adElementParams;
        this.f68570e = adFormListener;
        this.f68571f = aVar;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.f68572g = applicationContext;
        e c10 = adElementParams.c();
        this.f68573h = c10;
        rq.f a10 = c10.a();
        if (a10 != null) {
            c0Var = tp.a.a(a10, applicationContext, repository);
        } else {
            c0Var = null;
        }
        this.f68574i = c0Var;
        this.f68575j = new AtomicBoolean(false);
        this.f68578m = true;
        this.f68580o = this.f68578m;
    }

    @NotNull
    public final e A() {
        return this.f68573h;
    }

    @NotNull
    public final Context B() {
        return this.f68572g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final lq.a C() {
        return this.f68568c;
    }

    @Nullable
    public abstract View D();

    @CallSuper
    public void E() {
        int i10;
        jq.b r10 = r();
        View D = D();
        if (D != null) {
            i10 = D.getId();
        } else {
            i10 = -1;
        }
        r10.a(i10);
    }

    @CallSuper
    public final void G() {
        this.f68577l = false;
        y();
    }

    @CallSuper
    public void H() {
        this.f68577l = true;
        y();
    }

    @Override // tp.b0, tp.f
    @CallSuper
    public void a() {
        super.a();
        io.bidmachine.rendering.internal.detector.brokencreative.a aVar = this.f68571f;
        if (aVar != null) {
            aVar.g();
        }
        F();
    }

    public void d() {
        H();
    }

    public void f() {
        G();
    }

    @Override // tp.f
    @NotNull
    public final rq.a h() {
        return this.f68569d;
    }

    @Override // tp.f
    public boolean i() {
        return this.f68580o;
    }

    @Override // tp.f
    @Nullable
    public View j() {
        ViewGroup viewGroup = this.f68576k;
        if (viewGroup == null) {
            return D();
        }
        return viewGroup;
    }

    @Override // tp.f
    public void m() {
        E();
    }

    @Override // sq.n
    public void o() {
        this.f68579n = false;
        p(this.f68578m);
    }

    @Override // android.view.View.OnClickListener
    @CallSuper
    public void onClick(@Nullable View view) {
        E();
    }

    @Override // sq.n
    public void p(boolean z10) {
        this.f68578m = z10;
        if (!this.f68579n) {
            if (z10) {
                ViewUtilsKt.o(j());
            } else {
                ViewUtilsKt.i(j());
            }
            this.f68580o = z10;
            y();
        }
    }

    @Override // sq.n
    public void q(boolean z10) {
        p(z10);
        this.f68579n = true;
    }

    @Override // tp.b0
    @NotNull
    public String s() {
        return this.f68569d.j();
    }

    public final void t() {
        io.bidmachine.rendering.internal.detector.brokencreative.a aVar = this.f68571f;
        if (aVar != null) {
            aVar.m();
        }
    }

    @NotNull
    public String toString() {
        return "type - " + this.f68569d.a() + ", name - " + this.f68569d.j();
    }

    public final boolean u() {
        View D = D();
        if (D == null) {
            return false;
        }
        g0 m10 = this.f68573h.m();
        if (m10 != null && !m10.e()) {
            FrameLayout frameLayout = new FrameLayout(this.f68572g);
            frameLayout.setId(j.f());
            h0.a(frameLayout, m10);
            frameLayout.addView(D, new FrameLayout.LayoutParams(-1, -1));
            this.f68576k = frameLayout;
        }
        View j10 = j();
        if (j10 == null) {
            return false;
        }
        j10.setId(j.f());
        j10.setTag(this.f68569d.j());
        Boolean f10 = this.f68573h.f();
        if (f10 != null && f10.booleanValue()) {
            j10.setOnClickListener(this);
        }
        Boolean t10 = this.f68573h.t();
        if (t10 != null) {
            p(t10.booleanValue());
        }
        if (D instanceof h) {
            ((h) D).a(this.f68573h);
            return true;
        }
        w(D, this.f68574i);
        return true;
    }

    public final void v(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        io.bidmachine.rendering.internal.detector.brokencreative.a aVar = this.f68571f;
        if (aVar != null) {
            aVar.a(view);
        }
        this.f68570e.c(this);
    }

    protected void w(@NotNull View view, @Nullable c0 c0Var) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (c0Var != null) {
            c0.h(c0Var, view, null, null, 6, null);
            return;
        }
        Integer b10 = this.f68573h.b();
        if (b10 != null && !kotlin.collections.n.f0(f68567q, this.f68569d.a())) {
            ViewUtilsKt.l(view, b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void x(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        s.b(s(), message, new Object[0]);
    }

    public final void y() {
        View D = D();
        if (D == null) {
            return;
        }
        if (this.f68580o && this.f68577l) {
            if (!this.f68575j.compareAndSet(false, true)) {
                return;
            }
            v(D);
        } else if (!this.f68575j.compareAndSet(true, false)) {
        } else {
            t();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final c z() {
        return this.f68570e;
    }

    protected void F() {
    }
}
