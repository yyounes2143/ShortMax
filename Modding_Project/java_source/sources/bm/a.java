package bm;

import android.content.Context;
import android.graphics.drawable.Drawable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.rendering.model.CacheType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdaptiveRenderingBannerAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends xq.e {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private AdView f2672a;

    @Override // xq.b
    public void d() {
        AdView adView = this.f2672a;
        if (adView != null) {
            adView.g0();
        }
        this.f2672a = null;
    }

    @Override // xq.p
    public void i(@Nullable RendererConfiguration rendererConfiguration) {
        super.i(rendererConfiguration);
        AdView adView = this.f2672a;
        if (adView != null && rendererConfiguration != null) {
            Context context = adView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "adView.context");
            Drawable watermarkDrawable = rendererConfiguration.getWatermarkDrawable(context);
            if (watermarkDrawable != null) {
                adView.setWatermark(watermarkDrawable);
            }
        }
    }

    @Override // xq.b
    /* renamed from: j */
    public void b(@NotNull ContextProvider contextProvider, @NotNull xq.f callback, @NotNull xq.g requestParams, @NotNull xq.k unifiedMediationParams, @NotNull NetworkAdUnit networkAdUnit) throws Throwable {
        VisibilitySource visibilitySource;
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        Intrinsics.checkNotNullParameter(networkAdUnit, "networkAdUnit");
        Context applicationContext = contextProvider.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "contextProvider.getApplicationContext()");
        u uVar = new u(unifiedMediationParams);
        if (!uVar.X(callback)) {
            return;
        }
        if (uVar.W() != null) {
            if (uVar.W().c() == CacheType.FullLoad) {
                visibilitySource = VisibilitySource.BidMachine;
            } else {
                visibilitySource = VisibilitySource.All;
            }
            callback.setVisibilitySource(visibilitySource);
            AdView adView = new AdView(applicationContext, uVar.W());
            adView.setAdViewListener(new b(callback));
            this.f2672a = adView;
            adView.t0();
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }
}
