package tp;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.rendering.internal.view.e;
import io.bidmachine.util.ViewUtilsKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final rq.c f67628a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final c0 f67629b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ViewGroup f67630c;

    public g(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.c adPhaseParams) {
        c0 c0Var;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adPhaseParams, "adPhaseParams");
        this.f67628a = adPhaseParams;
        rq.f c10 = adPhaseParams.c();
        if (c10 != null) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            c0Var = a.a(c10, applicationContext, repository);
        } else {
            c0Var = null;
        }
        this.f67629b = c0Var;
    }

    @MainThread
    public final void a() {
        ViewGroup viewGroup = this.f67630c;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            ViewUtilsKt.k(viewGroup);
        }
        this.f67630c = null;
    }

    @MainThread
    @VisibleForTesting
    public final void b(@NotNull Context context, @NotNull ViewGroup rootContainer, @NotNull io.bidmachine.rendering.internal.view.e elementsContainer, @NotNull List<? extends f> adElements, @NotNull f adElement) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rootContainer, "rootContainer");
        Intrinsics.checkNotNullParameter(elementsContainer, "elementsContainer");
        Intrinsics.checkNotNullParameter(adElements, "adElements");
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        View j10 = adElement.j();
        if (j10 == null) {
            return;
        }
        rq.s g10 = adElement.h().g();
        int n10 = g10.n(context);
        int c10 = g10.c(context);
        if (n10 <= 0) {
            n10 = -1;
        }
        if (c10 <= 0) {
            c10 = -1;
        }
        e.a aVar = new e.a(n10, c10);
        aVar.d(context, g10, adElements);
        elementsContainer.addView(j10, aVar);
        try {
            adElement.c(rootContainer);
        } catch (Throwable th2) {
            s.h(th2);
        }
    }

    @MainThread
    public final boolean c(@NotNull ViewGroup rootContainer, @NotNull List<? extends f> ads, @NotNull List<? extends f> controls) {
        Intrinsics.checkNotNullParameter(rootContainer, "rootContainer");
        Intrinsics.checkNotNullParameter(ads, "ads");
        Intrinsics.checkNotNullParameter(controls, "controls");
        Context context = rootContainer.getContext();
        a();
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(sq.j.f());
        c0 c0Var = this.f67629b;
        if (c0Var != null) {
            c0.h(c0Var, frameLayout, null, null, 6, null);
        } else {
            ViewUtilsKt.l(frameLayout, this.f67628a.d());
        }
        this.f67630c = frameLayout;
        io.bidmachine.rendering.internal.view.e eVar = new io.bidmachine.rendering.internal.view.e(context);
        for (f fVar : ads) {
            Intrinsics.checkNotNullExpressionValue(context, "context");
            b(context, rootContainer, eVar, ads, fVar);
        }
        ViewGroup viewGroup = this.f67630c;
        if (viewGroup != null) {
            viewGroup.addView(eVar, yq.t.b());
        }
        io.bidmachine.rendering.internal.view.e eVar2 = new io.bidmachine.rendering.internal.view.e(context);
        for (f fVar2 : controls) {
            Intrinsics.checkNotNullExpressionValue(context, "context");
            b(context, rootContainer, eVar2, controls, fVar2);
        }
        ViewGroup viewGroup2 = this.f67630c;
        if (viewGroup2 != null) {
            viewGroup2.addView(eVar2, yq.t.b());
        }
        rootContainer.addView(this.f67630c, 0, yq.t.b());
        return true;
    }

    @NotNull
    public final rq.c d() {
        return this.f67628a;
    }

    @Nullable
    public final ViewGroup e() {
        return this.f67630c;
    }
}
