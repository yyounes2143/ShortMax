package com.startshorts.androidplayer.utils.exposure;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.utils.exposure.ExposureLayout;
import ik.a;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExposureLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ExposureLayout extends ConstraintLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i f48192a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExposureLayout(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48192a = c.b(new Function0() { // from class: ik.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                a r10;
                r10 = ExposureLayout.r(ExposureLayout.this);
                return r10;
            }
        });
    }

    private final a getMExposureHandler() {
        return (a) this.f48192a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a r(ExposureLayout exposureLayout) {
        return new a(exposureLayout);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getMExposureHandler().a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getMExposureHandler().b();
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z10) {
        super.onVisibilityAggregated(z10);
        getMExposureHandler().c(z10);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        getMExposureHandler().d(z10);
    }

    public final void setExposureCallback(@NotNull ik.c callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        getMExposureHandler().e(callback);
    }

    public final void setIsLog(boolean z10) {
        getMExposureHandler().f(z10);
    }

    public final void setShowRatio(float f10) {
        getMExposureHandler().g(f10);
    }

    public final void setTimeLimit(int i10) {
        getMExposureHandler().h(i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExposureLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48192a = c.b(new Function0() { // from class: ik.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                a r10;
                r10 = ExposureLayout.r(ExposureLayout.this);
                return r10;
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExposureLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48192a = c.b(new Function0() { // from class: ik.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                a r10;
                r10 = ExposureLayout.r(ExposureLayout.this);
                return r10;
            }
        });
    }
}
