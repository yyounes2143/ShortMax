package coil.request;

import android.view.View;
import androidx.annotation.MainThread;
import gt.e1;
import gt.g;
import gt.k0;
import gt.q0;
import kotlin.Metadata;
import kotlinx.coroutines.r;
import m0.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.i;
/* compiled from: ViewTargetRequestManager.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewTargetRequestManager implements View.OnAttachStateChangeListener {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final View f4092a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private o f4093b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private r f4094c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ViewTargetRequestDelegate f4095d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4096e;

    public ViewTargetRequestManager(@NotNull View view) {
        this.f4092a = view;
    }

    public final synchronized void a() {
        r d10;
        try {
            r rVar = this.f4094c;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            d10 = g.d(e1.f52533a, q0.c().m(), null, new ViewTargetRequestManager$dispose$1(this, null), 2, null);
            this.f4094c = d10;
            this.f4093b = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @NotNull
    public final synchronized o b(@NotNull k0<? extends m0.g> k0Var) {
        o oVar = this.f4093b;
        if (oVar != null && i.r() && this.f4096e) {
            this.f4096e = false;
            oVar.a(k0Var);
            return oVar;
        }
        r rVar = this.f4094c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f4094c = null;
        o oVar2 = new o(this.f4092a, k0Var);
        this.f4093b = oVar2;
        return oVar2;
    }

    @MainThread
    public final void c(@Nullable ViewTargetRequestDelegate viewTargetRequestDelegate) {
        ViewTargetRequestDelegate viewTargetRequestDelegate2 = this.f4095d;
        if (viewTargetRequestDelegate2 != null) {
            viewTargetRequestDelegate2.d();
        }
        this.f4095d = viewTargetRequestDelegate;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public void onViewAttachedToWindow(@NotNull View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f4095d;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.f4096e = true;
        viewTargetRequestDelegate.e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public void onViewDetachedFromWindow(@NotNull View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f4095d;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.d();
        }
    }
}
