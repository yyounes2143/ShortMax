package com.moloco.sdk.internal.publisher;

import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.FullscreenAd;
import com.moloco.sdk.publisher.MolocoAdKt;
import com.moloco.sdk.publisher.RewardedInterstitialAd;
import com.moloco.sdk.publisher.RewardedInterstitialAdShowListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class p implements RewardedInterstitialAd, m0, FullscreenAd<RewardedInterstitialAdShowListener> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final u<RewardedInterstitialAdShowListener> f32944a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f32945b;

    /* JADX WARN: Multi-variable type inference failed */
    public p(@NotNull u<? super RewardedInterstitialAdShowListener> fullscreenAd, @NotNull String adUnitId) {
        Intrinsics.checkNotNullParameter(fullscreenAd, "fullscreenAd");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        this.f32944a = fullscreenAd;
        this.f32945b = adUnitId;
    }

    public static final com.moloco.sdk.internal.ortb.model.r a(p pVar) {
        return pVar.f32944a.q();
    }

    public static final Unit b(RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener, p pVar, boolean z10) {
        rewardedInterstitialAdShowListener.onRewardedVideoCompleted(MolocoAdKt.createAdInfo$default(pVar.f32945b, null, 2, null));
        return Unit.f60915a;
    }

    public static final Boolean c(p pVar) {
        return pVar.f32944a.v();
    }

    @Override // com.moloco.sdk.publisher.FullscreenAd
    /* renamed from: d */
    public void show(@Nullable RewardedInterstitialAdShowListener rewardedInterstitialAdShowListener) {
        boolean z10;
        RewardedInterstitialAdShowListener c10 = r.c(rewardedInterstitialAdShowListener, new Function0() { // from class: com.moloco.sdk.internal.publisher.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.a(p.this);
            }
        });
        if (this.f32944a.p() == com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i.f33712a) {
            z10 = true;
        } else {
            z10 = false;
        }
        final RewardedInterstitialAdShowListener d10 = r.d(c10, z10, new Function0() { // from class: com.moloco.sdk.internal.publisher.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.c(p.this);
            }
        });
        this.f32944a.l(new Function1() { // from class: com.moloco.sdk.internal.publisher.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return p.b(RewardedInterstitialAdShowListener.this, this, ((Boolean) obj).booleanValue());
            }
        });
        this.f32944a.show(d10);
    }

    @Override // com.moloco.sdk.publisher.Destroyable
    public void destroy() {
        this.f32944a.destroy();
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public boolean isLoaded() {
        return this.f32944a.isLoaded();
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public void load(@NotNull String bidResponseJson, @Nullable AdLoad.Listener listener) {
        Intrinsics.checkNotNullParameter(bidResponseJson, "bidResponseJson");
        this.f32944a.load(bidResponseJson, listener);
    }

    @Override // com.moloco.sdk.internal.publisher.m0
    public void setCreateAdObjectStartTime(long j10) {
        this.f32944a.setCreateAdObjectStartTime(j10);
    }
}
