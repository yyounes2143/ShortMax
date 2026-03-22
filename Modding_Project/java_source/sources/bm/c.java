package bm;

import android.content.Context;
import android.graphics.drawable.Drawable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdaptiveRenderingFullscreenAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c extends xq.h {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private rp.m f2676a;

    @Override // xq.b
    public void d() {
        rp.m mVar = this.f2676a;
        if (mVar != null) {
            mVar.K();
        }
        this.f2676a = null;
    }

    @Override // xq.h
    public void k(@NotNull ContextProvider contextProvider, @NotNull xq.i callback, @Nullable RendererConfiguration rendererConfiguration) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        rp.m mVar = this.f2676a;
        if (mVar == null) {
            callback.onAdShowFailed(fr.a.i("AdaptiveRendering fullscreen object is null"));
        } else if (!mVar.V()) {
            callback.onAdShowFailed(fr.a.i("AdaptiveRendering fullscreen object not loaded"));
        } else if (mVar.U()) {
            callback.onAdShowFailed(fr.a.i("AdaptiveRendering fullscreen object already is finished"));
        } else {
            if (rendererConfiguration != null) {
                Context applicationContext = contextProvider.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "contextProvider.applicationContext");
                Drawable watermarkDrawable = rendererConfiguration.getWatermarkDrawable(applicationContext);
                if (watermarkDrawable != null) {
                    mVar.a0(watermarkDrawable);
                }
            }
            Context applicationContext2 = contextProvider.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "contextProvider.getApplicationContext()");
            mVar.b0(applicationContext2);
        }
    }

    @Override // xq.b
    /* renamed from: l */
    public void b(@NotNull ContextProvider contextProvider, @NotNull xq.i callback, @NotNull xq.j requestParams, @NotNull xq.k unifiedMediationParams, @NotNull NetworkAdUnit networkAdUnit) throws Throwable {
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
            rp.m mVar = new rp.m(applicationContext, uVar.W());
            mVar.Z(new d(applicationContext, callback));
            this.f2676a = mVar;
            mVar.W();
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }
}
