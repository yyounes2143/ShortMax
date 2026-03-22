package com.hades.aar.admanager.view.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.hades.aar.admanager.view.nativead.DetachableContainer;
import ga.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class DetachableContainer extends FrameLayout {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Function0<Unit> f21736a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Function2<? super View, ? super Integer, Unit> f21737b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetachableContainer(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(DetachableContainer detachableContainer) {
        Function0<Unit> function0;
        a aVar = a.f52235a;
        aVar.d("DetachableContainer", "DetachableContainer onDetachedFromWindow -> parent = " + detachableContainer.getParent());
        if (detachableContainer.getParent() == null && (function0 = detachableContainer.f21736a) != null) {
            function0.invoke();
        }
    }

    public final void b(@NotNull View adView) {
        DetachableContainer detachableContainer;
        Intrinsics.checkNotNullParameter(adView, "adView");
        ViewParent parent = adView.getParent();
        ViewGroup viewGroup = null;
        if (parent instanceof DetachableContainer) {
            detachableContainer = (DetachableContainer) parent;
        } else {
            detachableContainer = null;
        }
        if (detachableContainer != null) {
            detachableContainer.removeView(adView);
            ViewParent parent2 = detachableContainer.getParent();
            if (parent2 instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent2;
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
        } else {
            ViewParent parent3 = adView.getParent();
            if (parent3 instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent3;
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        adView.setLayoutParams(layoutParams);
        addView(adView);
    }

    @Nullable
    public final Function0<Unit> getOnDetachFromParent() {
        return this.f21736a;
    }

    @Nullable
    public final Function2<View, Integer, Unit> getOnVisibilityChangeListener() {
        return this.f21737b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        postDelayed(new Runnable() { // from class: ia.a
            @Override // java.lang.Runnable
            public final void run() {
                DetachableContainer.c(DetachableContainer.this);
            }
        }, 1000L);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        Function2<? super View, ? super Integer, Unit> function2 = this.f21737b;
        if (function2 != null) {
            function2.invoke(this, Integer.valueOf(i10));
        }
    }

    public final void setOnDetachFromParent(@Nullable Function0<Unit> function0) {
        this.f21736a = function0;
    }

    public final void setOnVisibilityChangeListener(@Nullable Function2<? super View, ? super Integer, Unit> function2) {
        this.f21737b = function2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetachableContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DetachableContainer(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetachableContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
