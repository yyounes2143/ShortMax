package tp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.rendering.model.GradientType;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.rendering.model.ScaleType;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import lq.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.e0;
import rq.f0;
import rq.i0;
import rq.j0;
import rq.l0;
import rq.m0;
import rq.p0;
import rq.r0;
@Metadata
/* loaded from: classes8.dex */
public final class c0 {
    @NotNull

    /* renamed from: a */
    private final Context f67617a;
    @NotNull

    /* renamed from: b */
    private final lq.a f67618b;
    @NotNull

    /* renamed from: c */
    private final rq.f f67619c;
    @NotNull

    /* renamed from: d */
    private final AtomicBoolean f67620d;

    @Metadata
    /* loaded from: classes8.dex */
    public final class a implements a.InterfaceC0869a<Bitmap> {

        /* renamed from: a */
        private final boolean f67621a;
        @Nullable

        /* renamed from: b */
        private final ScaleType f67622b;
        @Nullable

        /* renamed from: c */
        private final Integer f67623c;
        @Nullable

        /* renamed from: d */
        private final rq.j f67624d;
        @NotNull

        /* renamed from: e */
        private final WeakReference<View> f67625e;

        /* renamed from: f */
        final /* synthetic */ c0 f67626f;

        public a(@NotNull c0 c0Var, View view, @Nullable boolean z10, @Nullable ScaleType scaleType, @Nullable Integer num, rq.j jVar) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.f67626f = c0Var;
            this.f67621a = z10;
            this.f67622b = scaleType;
            this.f67623c = num;
            this.f67624d = jVar;
            this.f67625e = new WeakReference<>(view);
        }

        @Override // lq.a.InterfaceC0869a
        public void a(@NotNull rq.t error) {
            Intrinsics.checkNotNullParameter(error, "error");
        }

        @Override // lq.a.InterfaceC0869a
        /* renamed from: b */
        public void onSuccess(@NotNull Bitmap successType) {
            Intrinsics.checkNotNullParameter(successType, "successType");
            c0 c0Var = this.f67626f;
            try {
                View view = this.f67625e.get();
                if (view == null) {
                    return;
                }
                Intrinsics.checkNotNullExpressionValue(view, "weakView.get() ?: return");
                c0Var.c(view, this.f67621a, successType, this.f67622b, this.f67623c, this.f67624d);
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
    }

    public c0(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.f background) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(background, "background");
        this.f67617a = context;
        this.f67618b = repository;
        this.f67619c = background;
        this.f67620d = new AtomicBoolean(false);
    }

    public static /* synthetic */ void h(c0 c0Var, View view, Integer num, rq.j jVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            jVar = null;
        }
        c0Var.a(view, num, jVar);
    }

    public static /* synthetic */ void i(c0 c0Var, View view, boolean z10, Bitmap bitmap, ScaleType scaleType, Integer num, rq.j jVar, int i10, Object obj) {
        ScaleType scaleType2;
        Integer num2;
        rq.j jVar2;
        if ((i10 & 8) != 0) {
            scaleType2 = null;
        } else {
            scaleType2 = scaleType;
        }
        if ((i10 & 16) != 0) {
            num2 = null;
        } else {
            num2 = num;
        }
        if ((i10 & 32) != 0) {
            jVar2 = null;
        } else {
            jVar2 = jVar;
        }
        c0Var.c(view, z10, bitmap, scaleType2, num2, jVar2);
    }

    public final void a(@NotNull View view, @Nullable Integer num, @Nullable rq.j jVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        i0 b10 = this.f67619c.b();
        if (b10 != null) {
            try {
                j0 a10 = b10.a();
                if (a10 instanceof e0) {
                    i(this, view, false, k.f67634a.e(((e0) a10).a()), null, num, jVar, 8, null);
                } else if (a10 instanceof rq.q) {
                    e(view, false, ((rq.q) a10).a(), num, jVar);
                } else if (a10 instanceof rq.b0) {
                    g(view, false, ((rq.b0) a10).a(), num, jVar);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
        rq.g c10 = this.f67619c.c();
        if (c10 != null) {
            try {
                if (c10 instanceof rq.p) {
                    e(view, true, ((rq.p) c10).a(), num, jVar);
                } else if (c10 instanceof rq.a0) {
                    g(view, true, ((rq.a0) c10).a(), num, jVar);
                }
                Unit unit2 = Unit.f60915a;
            } catch (Throwable unused2) {
            }
        }
    }

    @VisibleForTesting
    public final void b(@NotNull View view, boolean z10, int i10, @Nullable Integer num, @Nullable rq.j jVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        io.bidmachine.rendering.internal.j jVar2 = new io.bidmachine.rendering.internal.j();
        jVar2.j(i10);
        if (num != null) {
            jVar2.e(num.intValue());
        }
        if (jVar != null) {
            io.bidmachine.rendering.internal.j.i(jVar2, jVar.b(), jVar.a(), 0.0f, 0.0f, 12, null);
            view.setPadding(jVar.b(), jVar.b() - yq.s.j(this.f67617a, 2.0f), jVar.b(), jVar.b() + yq.s.j(this.f67617a, 2.0f));
        }
        d(view, z10, jVar2);
    }

    @VisibleForTesting
    public final void c(@NotNull View view, boolean z10, @Nullable Bitmap bitmap, @Nullable ScaleType scaleType, @Nullable Integer num, @Nullable rq.j jVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (bitmap == null) {
            return;
        }
        ImageView.ScaleType a10 = m0.a(scaleType);
        x xVar = new x(bitmap);
        xVar.e(a10);
        if (num != null && num.intValue() > 0) {
            xVar.i(num.intValue());
        }
        if (jVar != null) {
            xVar.a(jVar.b());
            xVar.c(jVar.a());
            view.setPadding(jVar.b(), jVar.b() - yq.s.j(this.f67617a, 2.0f), jVar.b(), jVar.b() + yq.s.j(this.f67617a, 2.0f));
        }
        d(view, z10, xVar);
    }

    @VisibleForTesting
    public final void d(@NotNull View view, boolean z10, @NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        if (!this.f67620d.compareAndSet(false, z10)) {
            return;
        }
        drawable.setAlpha((int) yq.s.m(Float.valueOf(this.f67619c.a()), 255.0f));
        drawable.setBounds(0, 0, view.getWidth(), view.getHeight());
        view.setBackground(drawable);
    }

    @VisibleForTesting
    public final void e(@NotNull View view, boolean z10, @NotNull rq.o color, @Nullable Integer num, @Nullable rq.j jVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(color, "color");
        rq.r a10 = color.a();
        if (a10 instanceof f0) {
            b(view, z10, ((f0) a10).a(), num, jVar);
        } else if (a10 instanceof rq.x) {
            f(view, z10, ((rq.x) a10).a(), num, jVar);
        }
    }

    @VisibleForTesting
    public final void f(@NotNull View view, boolean z10, @NotNull rq.w gradient, @Nullable Integer num, @Nullable rq.j jVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(gradient, "gradient");
        int drawableGradientType = gradient.c().toDrawableGradientType();
        io.bidmachine.rendering.internal.j jVar2 = new io.bidmachine.rendering.internal.j(gradient.b().toDrawableGradientOrientation(), CollectionsKt.c1(gradient.a()));
        jVar2.m(drawableGradientType);
        if (gradient.c() == GradientType.Radial) {
            io.bidmachine.rendering.internal.j.h(jVar2, 0.0f, 2, 1, null);
        }
        if (num != null) {
            jVar2.e(num.intValue());
        }
        if (jVar != null) {
            io.bidmachine.rendering.internal.j.i(jVar2, jVar.b(), jVar.a(), 0.0f, 0.0f, 12, null);
            view.setPadding(jVar.b(), jVar.b() - yq.s.j(this.f67617a, 2.0f), jVar.b(), jVar.b() + yq.s.j(this.f67617a, 2.0f));
        }
        d(view, z10, jVar2);
    }

    @VisibleForTesting
    public final void g(@NotNull View view, boolean z10, @NotNull rq.z image, @Nullable Integer num, @Nullable rq.j jVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(image, "image");
        l0 a10 = image.a().a();
        if (a10 instanceof rq.i) {
            c(view, z10, k.c(((rq.i) a10).a()), image.b(), num, jVar);
        } else if (a10 instanceof p0) {
            MediaSource d10 = MediaSource.f58545b.d(((p0) a10).a());
            if (d10 != null) {
                this.f67618b.b(d10, new a(this, view, z10, image.b(), num, jVar));
            }
        } else if (!(a10 instanceof rq.y)) {
            boolean z11 = a10 instanceof r0;
        }
    }
}
