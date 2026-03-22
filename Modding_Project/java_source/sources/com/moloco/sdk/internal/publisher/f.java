package com.moloco.sdk.internal.publisher;

import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.FullscreenAd;
import com.moloco.sdk.publisher.InterstitialAd;
import com.moloco.sdk.publisher.InterstitialAdShowListener;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class f implements InterstitialAd, m0, FullscreenAd<InterstitialAdShowListener> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final u<InterstitialAdShowListener> f32638a;

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull u<? super InterstitialAdShowListener> fullscreenAd) {
        Intrinsics.checkNotNullParameter(fullscreenAd, "fullscreenAd");
        this.f32638a = fullscreenAd;
    }

    @Override // com.moloco.sdk.publisher.FullscreenAd
    /* renamed from: a */
    public void show(@Nullable InterstitialAdShowListener interstitialAdShowListener) {
        this.f32638a.show(h.c(interstitialAdShowListener));
    }

    @Override // com.moloco.sdk.publisher.Destroyable
    public void destroy() {
        this.f32638a.destroy();
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public boolean isLoaded() {
        return this.f32638a.isLoaded();
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public void load(@NotNull String bidResponseJson, @Nullable AdLoad.Listener listener) {
        Intrinsics.checkNotNullParameter(bidResponseJson, "bidResponseJson");
        this.f32638a.load(bidResponseJson, listener);
    }

    @Override // com.moloco.sdk.internal.publisher.m0
    public void setCreateAdObjectStartTime(long j10) {
        this.f32638a.setCreateAdObjectStartTime(j10);
    }
}
