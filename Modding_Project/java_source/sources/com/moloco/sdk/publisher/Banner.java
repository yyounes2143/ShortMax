package com.moloco.sdk.publisher;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes6.dex */
public abstract class Banner extends FrameLayout implements AdLoad, Destroyable {
    public static final int $stable = 8;
    @NotNull
    private final kt.e<Boolean> _isViewShown;
    @Nullable
    private BannerAdShowListener adShowListener;
    @NotNull
    private final kt.i<Boolean> isViewShown;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Banner(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        setTag("MolocoBannerView");
        kt.e<Boolean> a10 = o.a(Boolean.FALSE);
        this._isViewShown = a10;
        this.isViewShown = kotlinx.coroutines.flow.c.d(a10);
    }

    @Nullable
    public BannerAdShowListener getAdShowListener() {
        return this.adShowListener;
    }

    @NotNull
    public kt.i<Boolean> isViewShown() {
        return this.isViewShown;
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NotNull View changedView, int i10) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        this._isViewShown.setValue(Boolean.valueOf(changedView.isShown()));
    }

    public void setAdShowListener(@Nullable BannerAdShowListener bannerAdShowListener) {
        this.adShowListener = bannerAdShowListener;
    }
}
