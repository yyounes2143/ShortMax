package androidx.compose.foundation.layout;

import android.graphics.Insets;
import android.os.CancellationSignal;
import android.view.View;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowInsetsConnection.android.kt */
@RequiresApi(30)
@Metadata
/* loaded from: classes.dex */
public final class WindowInsetsNestedScrollConnection implements NestedScrollConnection, WindowInsetsAnimationControlListener {
    @Nullable
    private WindowInsetsAnimationController animationController;
    @Nullable
    private r animationJob;
    @NotNull
    private final CancellationSignal cancellationSignal;
    @Nullable
    private gt.i<? super WindowInsetsAnimationController> continuation;
    @NotNull
    private final Density density;
    private boolean isControllerRequested;
    private float partialConsumption;
    @NotNull
    private final SideCalculator sideCalculator;
    @NotNull
    private final View view;
    @NotNull
    private final AndroidWindowInsets windowInsets;

    public WindowInsetsNestedScrollConnection(@NotNull AndroidWindowInsets windowInsets, @NotNull View view, @NotNull SideCalculator sideCalculator, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(sideCalculator, "sideCalculator");
        Intrinsics.checkNotNullParameter(density, "density");
        this.windowInsets = windowInsets;
        this.view = view;
        this.sideCalculator = sideCalculator;
        this.density = density;
        this.cancellationSignal = new CancellationSignal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void adjustInsets(float f10) {
        Insets currentInsets;
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (windowInsetsAnimationController != null) {
            currentInsets = windowInsetsAnimationController.getCurrentInsets();
            Intrinsics.checkNotNullExpressionValue(currentInsets, "it.currentInsets");
            windowInsetsAnimationController.setInsetsAndAlpha(this.sideCalculator.adjustInsets(currentInsets, bt.a.c(f10)), 1.0f, 0.0f);
        }
    }

    private final void animationEnded() {
        boolean isReady;
        WindowInsetsAnimationController windowInsetsAnimationController;
        WindowInsetsAnimationController windowInsetsAnimationController2 = this.animationController;
        if (windowInsetsAnimationController2 != null) {
            isReady = windowInsetsAnimationController2.isReady();
            if (isReady && (windowInsetsAnimationController = this.animationController) != null) {
                windowInsetsAnimationController.finish(this.windowInsets.isVisible());
            }
        }
        this.animationController = null;
        gt.i<? super WindowInsetsAnimationController> iVar = this.continuation;
        if (iVar != null) {
            iVar.e(null, new Function1<Throwable, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$animationEnded$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                    invoke2(th2);
                    return Unit.f60915a;
                }
            });
        }
        this.continuation = null;
        r rVar = this.animationJob;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.animationJob = null;
        this.partialConsumption = 0.0f;
        this.isControllerRequested = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b3  */
    /* renamed from: fling-huYlsQE  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m507flinghuYlsQE(long r26, float r28, boolean r29, rs.c<? super androidx.compose.ui.unit.Velocity> r30) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection.m507flinghuYlsQE(long, float, boolean, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getAnimationController(rs.c<? super WindowInsetsAnimationController> cVar) {
        Object obj = this.animationController;
        if (obj == null) {
            kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar.H();
            this.continuation = eVar;
            requestAnimationController();
            obj = eVar.B();
            if (obj == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(cVar);
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestAnimationController() {
        WindowInsetsController windowInsetsController;
        if (!this.isControllerRequested) {
            this.isControllerRequested = true;
            windowInsetsController = this.view.getWindowInsetsController();
            if (windowInsetsController != null) {
                windowInsetsController.controlWindowInsetsAnimation(this.windowInsets.getType$foundation_layout_release(), -1L, null, this.cancellationSignal, e.a(this));
            }
        }
    }

    /* renamed from: scroll-8S9VItk  reason: not valid java name */
    private final long m508scroll8S9VItk(long j10, float f10) {
        Insets hiddenStateInsets;
        Insets shownStateInsets;
        Insets currentInsets;
        int i10;
        r rVar = this.animationJob;
        boolean z10 = true;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            this.animationJob = null;
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (f10 != 0.0f) {
            boolean isVisible = this.windowInsets.isVisible();
            int i11 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
            if (i11 <= 0) {
                z10 = false;
            }
            if (isVisible != z10 || windowInsetsAnimationController != null) {
                if (windowInsetsAnimationController == null) {
                    this.partialConsumption = 0.0f;
                    requestAnimationController();
                    return this.sideCalculator.mo469consumedOffsetsMKHz9U(j10);
                }
                SideCalculator sideCalculator = this.sideCalculator;
                hiddenStateInsets = windowInsetsAnimationController.getHiddenStateInsets();
                Intrinsics.checkNotNullExpressionValue(hiddenStateInsets, "animationController.hiddenStateInsets");
                int valueOf = sideCalculator.valueOf(hiddenStateInsets);
                SideCalculator sideCalculator2 = this.sideCalculator;
                shownStateInsets = windowInsetsAnimationController.getShownStateInsets();
                Intrinsics.checkNotNullExpressionValue(shownStateInsets, "animationController.shownStateInsets");
                int valueOf2 = sideCalculator2.valueOf(shownStateInsets);
                currentInsets = windowInsetsAnimationController.getCurrentInsets();
                Intrinsics.checkNotNullExpressionValue(currentInsets, "animationController.currentInsets");
                int valueOf3 = this.sideCalculator.valueOf(currentInsets);
                if (i11 > 0) {
                    i10 = valueOf2;
                } else {
                    i10 = valueOf;
                }
                if (valueOf3 == i10) {
                    this.partialConsumption = 0.0f;
                    return Offset.Companion.m1622getZeroF1C5BW0();
                }
                float f11 = valueOf3 + f10 + this.partialConsumption;
                int n10 = kotlin.ranges.e.n(bt.a.c(f11), valueOf, valueOf2);
                this.partialConsumption = f11 - bt.a.c(f11);
                if (n10 != valueOf3) {
                    windowInsetsAnimationController.setInsetsAndAlpha(this.sideCalculator.adjustInsets(currentInsets, n10), 1.0f, 0.0f);
                }
                return this.sideCalculator.mo469consumedOffsetsMKHz9U(j10);
            }
        }
        return Offset.Companion.m1622getZeroF1C5BW0();
    }

    public final void dispose() {
        Insets currentInsets;
        Insets hiddenStateInsets;
        gt.i<? super WindowInsetsAnimationController> iVar = this.continuation;
        if (iVar != null) {
            iVar.e(null, new Function1<Throwable, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$dispose$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                    invoke2(th2);
                    return Unit.f60915a;
                }
            });
        }
        r rVar = this.animationJob;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (windowInsetsAnimationController != null) {
            currentInsets = windowInsetsAnimationController.getCurrentInsets();
            hiddenStateInsets = windowInsetsAnimationController.getHiddenStateInsets();
            windowInsetsAnimationController.finish(!Intrinsics.areEqual(currentInsets, hiddenStateInsets));
        }
    }

    @NotNull
    public final Density getDensity() {
        return this.density;
    }

    @NotNull
    public final SideCalculator getSideCalculator() {
        return this.sideCalculator;
    }

    @NotNull
    public final View getView() {
        return this.view;
    }

    @NotNull
    public final AndroidWindowInsets getWindowInsets() {
        return this.windowInsets;
    }

    public void onCancelled(@Nullable WindowInsetsAnimationController windowInsetsAnimationController) {
        animationEnded();
    }

    public void onFinished(@NotNull WindowInsetsAnimationController controller) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        animationEnded();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    /* renamed from: onPostFling-RZ2iAVY */
    public Object mo347onPostFlingRZ2iAVY(long j10, long j11, @NotNull rs.c<? super Velocity> cVar) {
        return m507flinghuYlsQE(j11, this.sideCalculator.showMotion(Velocity.m4274getXimpl(j11), Velocity.m4275getYimpl(j11)), true, cVar);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public long mo348onPostScrollDzOQY0M(long j10, long j11, int i10) {
        return m508scroll8S9VItk(j11, this.sideCalculator.showMotion(Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11)));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    /* renamed from: onPreFling-QWom1Mo  reason: not valid java name */
    public Object mo509onPreFlingQWom1Mo(long j10, @NotNull rs.c<? super Velocity> cVar) {
        return m507flinghuYlsQE(j10, this.sideCalculator.hideMotion(Velocity.m4274getXimpl(j10), Velocity.m4275getYimpl(j10)), false, cVar);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk  reason: not valid java name */
    public long mo510onPreScrollOzD1aCk(long j10, int i10) {
        return m508scroll8S9VItk(j10, this.sideCalculator.hideMotion(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10)));
    }

    public void onReady(@NotNull WindowInsetsAnimationController controller, int i10) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        this.animationController = controller;
        this.isControllerRequested = false;
        gt.i<? super WindowInsetsAnimationController> iVar = this.continuation;
        if (iVar != null) {
            iVar.e(controller, new Function1<Throwable, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$onReady$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                    invoke2(th2);
                    return Unit.f60915a;
                }
            });
        }
        this.continuation = null;
    }
}
