package com.startshorts.androidplayer.ui.view.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import com.airbnb.lottie.LottieAnimationView;
import com.hades.aar.pagestate.State;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.pagestate.SGrayLoadingView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import la.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SGrayLoadingView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SGrayLoadingView extends BaseConstraintLayout implements b {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f47502c = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private LottieAnimationView f47503b;

    /* compiled from: SGrayLoadingView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SGrayLoadingView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(SGrayLoadingView sGrayLoadingView) {
        LottieAnimationView lottieAnimationView = sGrayLoadingView.f47503b;
        if (lottieAnimationView != null) {
            lottieAnimationView.z();
        }
    }

    @Override // la.b
    public void b() {
        LottieAnimationView lottieAnimationView = this.f47503b;
        if (lottieAnimationView != null) {
            lottieAnimationView.y();
        }
    }

    @Override // la.b
    public void d() {
        LottieAnimationView lottieAnimationView = this.f47503b;
        if (lottieAnimationView != null) {
            lottieAnimationView.m();
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_gray_loading;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "SGrayLoadingView";
    }

    @Override // la.b
    @NotNull
    public State m() {
        return State.LOADING;
    }

    @Override // la.b
    public void onPause() {
        LottieAnimationView lottieAnimationView = this.f47503b;
        if (lottieAnimationView != null) {
            lottieAnimationView.x();
        }
    }

    @Override // la.b
    public void onResume() {
        LottieAnimationView lottieAnimationView = this.f47503b;
        if (lottieAnimationView != null) {
            lottieAnimationView.post(new Runnable() { // from class: rj.b
                @Override // java.lang.Runnable
                public final void run() {
                    SGrayLoadingView.w(SGrayLoadingView.this);
                }
            });
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47503b = (LottieAnimationView) findViewById(R$id.animation_view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SGrayLoadingView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SGrayLoadingView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
