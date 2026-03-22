package androidx.compose.material.ripple;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RippleHostView.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class RippleHostView extends View {
    private static final long MinimumRippleStateChangeTime = 5;
    private static final long ResetRippleDelayDuration = 50;
    @Nullable
    private Boolean bounded;
    @Nullable
    private Long lastRippleStateChangeTimeMillis;
    @Nullable
    private Function0<Unit> onInvalidateRipple;
    @Nullable
    private Runnable resetRippleRunnable;
    @Nullable
    private UnprojectedRipple ripple;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final int[] PressedState = {16842919, 16842910};
    @NotNull
    private static final int[] RestingState = new int[0];

    /* compiled from: RippleHostView.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleHostView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void createRipple(boolean z10) {
        UnprojectedRipple unprojectedRipple = new UnprojectedRipple(z10);
        setBackground(unprojectedRipple);
        this.ripple = unprojectedRipple;
    }

    private final void setRippleState(boolean z10) {
        long j10;
        int[] iArr;
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        Runnable runnable = this.resetRippleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
            runnable.run();
        }
        Long l10 = this.lastRippleStateChangeTimeMillis;
        if (l10 != null) {
            j10 = l10.longValue();
        } else {
            j10 = 0;
        }
        long j11 = currentAnimationTimeMillis - j10;
        if (!z10 && j11 < MinimumRippleStateChangeTime) {
            Runnable runnable2 = new Runnable() { // from class: androidx.compose.material.ripple.a
                @Override // java.lang.Runnable
                public final void run() {
                    RippleHostView.m1285setRippleState$lambda2(RippleHostView.this);
                }
            };
            this.resetRippleRunnable = runnable2;
            postDelayed(runnable2, ResetRippleDelayDuration);
        } else {
            if (z10) {
                iArr = PressedState;
            } else {
                iArr = RestingState;
            }
            UnprojectedRipple unprojectedRipple = this.ripple;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(iArr);
            }
        }
        this.lastRippleStateChangeTimeMillis = Long.valueOf(currentAnimationTimeMillis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setRippleState$lambda-2  reason: not valid java name */
    public static final void m1285setRippleState$lambda2(RippleHostView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UnprojectedRipple unprojectedRipple = this$0.ripple;
        if (unprojectedRipple != null) {
            unprojectedRipple.setState(RestingState);
        }
        this$0.resetRippleRunnable = null;
    }

    /* renamed from: addRipple-KOepWvA  reason: not valid java name */
    public final void m1286addRippleKOepWvA(@NotNull PressInteraction.Press interaction, boolean z10, long j10, int i10, long j11, float f10, @NotNull Function0<Unit> onInvalidateRipple) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(onInvalidateRipple, "onInvalidateRipple");
        if (this.ripple == null || !Intrinsics.areEqual(Boolean.valueOf(z10), this.bounded)) {
            createRipple(z10);
            this.bounded = Boolean.valueOf(z10);
        }
        UnprojectedRipple unprojectedRipple = this.ripple;
        Intrinsics.checkNotNull(unprojectedRipple);
        this.onInvalidateRipple = onInvalidateRipple;
        m1287updateRipplePropertiesbiQXAtU(j10, i10, j11, f10);
        if (z10) {
            unprojectedRipple.setHotspot(Offset.m1606getXimpl(interaction.m367getPressPositionF1C5BW0()), Offset.m1607getYimpl(interaction.m367getPressPositionF1C5BW0()));
        } else {
            unprojectedRipple.setHotspot(unprojectedRipple.getBounds().centerX(), unprojectedRipple.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void disposeRipple() {
        this.onInvalidateRipple = null;
        Runnable runnable = this.resetRippleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
            Runnable runnable2 = this.resetRippleRunnable;
            Intrinsics.checkNotNull(runnable2);
            runnable2.run();
        } else {
            UnprojectedRipple unprojectedRipple = this.ripple;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(RestingState);
            }
        }
        UnprojectedRipple unprojectedRipple2 = this.ripple;
        if (unprojectedRipple2 == null) {
            return;
        }
        unprojectedRipple2.setVisible(false, false);
        unscheduleDrawable(unprojectedRipple2);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NotNull Drawable who) {
        Intrinsics.checkNotNullParameter(who, "who");
        Function0<Unit> function0 = this.onInvalidateRipple;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public final void removeRipple() {
        setRippleState(false);
    }

    /* renamed from: updateRippleProperties-biQXAtU  reason: not valid java name */
    public final void m1287updateRipplePropertiesbiQXAtU(long j10, int i10, long j11, float f10) {
        UnprojectedRipple unprojectedRipple = this.ripple;
        if (unprojectedRipple == null) {
            return;
        }
        unprojectedRipple.trySetRadius(i10);
        unprojectedRipple.m1294setColorDxMtmZc(j11, f10);
        Rect androidRect = RectHelper_androidKt.toAndroidRect(SizeKt.m1696toRectuvyYCjk(j10));
        setLeft(androidRect.left);
        setTop(androidRect.top);
        setRight(androidRect.right);
        setBottom(androidRect.bottom);
        unprojectedRipple.setBounds(androidRect);
    }

    @Override // android.view.View
    public void refreshDrawableState() {
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
    }
}
