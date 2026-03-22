package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.AudioStatus;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.banner.AudioListener;
import com.inmobi.ads.controllers.PublisherCallbacks;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public class O1 extends PublisherCallbacks {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<InMobiBanner> f23922a;

    public O1(InMobiBanner banner) {
        Intrinsics.checkNotNullParameter(banner, "banner");
        this.f23922a = new WeakReference<>(banner);
    }

    @NotNull
    public final WeakReference<InMobiBanner> a() {
        return this.f23922a;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public byte getType() {
        return (byte) 1;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdClicked(@NotNull Map<Object, ? extends Object> params) {
        H1 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(params, "params");
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner != null && (mPubListener$media_release = inMobiBanner.getMPubListener$media_release()) != null) {
            mPubListener$media_release.a(inMobiBanner, params);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDismissed() {
        InMobiBanner ad2 = this.f23922a.get();
        if (ad2 == null) {
            return;
        }
        H1 mPubListener$media_release = ad2.getMPubListener$media_release();
        if (mPubListener$media_release != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            ((I1) mPubListener$media_release).f23725a.onAdDismissed(ad2);
        }
        ad2.scheduleRefresh$media_release();
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayed(@NotNull AdMetaInfo info) {
        H1 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiBanner ad2 = this.f23922a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            ((I1) mPubListener$media_release).f23725a.onAdDisplayed(ad2);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchFailed(InMobiAdRequestStatus status) {
        H1 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "status");
        InMobiBanner ad2 = this.f23922a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            Intrinsics.checkNotNullParameter(status, "status");
            ((I1) mPubListener$media_release).f23725a.onAdFetchFailed(ad2, status);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchSuccessful(AdMetaInfo info) {
        H1 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner != null && (mPubListener$media_release = inMobiBanner.getMPubListener$media_release()) != null) {
            mPubListener$media_release.a(inMobiBanner, info);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdImpression(@Nullable Yd yd2) {
        H1 h12;
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner != null) {
            h12 = inMobiBanner.getMPubListener$media_release();
        } else {
            h12 = null;
        }
        if (h12 == null) {
            if (yd2 != null) {
                yd2.c();
                return;
            }
            return;
        }
        h12.a(inMobiBanner);
        if (yd2 != null) {
            yd2.d();
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadFailed(@NotNull InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullExpressionValue(O1.class.getSimpleName(), "getSimpleName(...)");
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner == null) {
            return;
        }
        H1 mPubListener$media_release = inMobiBanner.getMPubListener$media_release();
        if (mPubListener$media_release != null) {
            mPubListener$media_release.a(inMobiBanner, status);
        }
        inMobiBanner.scheduleRefresh$media_release();
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadSucceeded(@NotNull AdMetaInfo info) {
        R1 mAdManager$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner != null && (mAdManager$media_release = inMobiBanner.getMAdManager$media_release()) != null) {
            if (!mAdManager$media_release.B() && mAdManager$media_release.x()) {
                inMobiBanner.swapAdUnitsAndDisplayAd$media_release();
                H1 mPubListener$media_release = inMobiBanner.getMPubListener$media_release();
                if (mPubListener$media_release != null) {
                    mPubListener$media_release.b(inMobiBanner, info);
                }
                inMobiBanner.scheduleRefresh$media_release();
            } else if (mAdManager$media_release.B()) {
                S0 j10 = mAdManager$media_release.j();
                if (j10 != null) {
                    j10.b((short) 2173);
                }
            } else {
                S0 j11 = mAdManager$media_release.j();
                if (j11 != null) {
                    j11.b((short) 2174);
                }
            }
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAudioStatusChanged(@NotNull D1 item) {
        AudioStatus audioStatus;
        Intrinsics.checkNotNullParameter(item, "audioStatusInternal");
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner == null) {
            return;
        }
        inMobiBanner.setAudioStatusInternal$media_release(item);
        AudioListener mAudioListener$media_release = inMobiBanner.getMAudioListener$media_release();
        if (mAudioListener$media_release != null) {
            D1.f23554b.getClass();
            Intrinsics.checkNotNullParameter(item, "item");
            int ordinal = item.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    audioStatus = AudioStatus.COMPLETED;
                } else {
                    audioStatus = AudioStatus.PAUSED;
                }
            } else {
                audioStatus = AudioStatus.PLAYING;
            }
            mAudioListener$media_release.onAudioStatusChanged(inMobiBanner, audioStatus);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onImraidLog(@NotNull String log) {
        H1 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(log, "log");
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner == null || (mPubListener$media_release = inMobiBanner.getMPubListener$media_release()) == null) {
            return;
        }
        mPubListener$media_release.a(inMobiBanner, log);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreated(@NotNull byte[] request) {
        H1 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(request, "request");
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner != null && (mPubListener$media_release = inMobiBanner.getMPubListener$media_release()) != null) {
            ((I1) mPubListener$media_release).f23725a.onRequestPayloadCreated(request);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreationFailed(@NotNull InMobiAdRequestStatus status) {
        H1 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "reason");
        InMobiBanner inMobiBanner = this.f23922a.get();
        if (inMobiBanner != null && (mPubListener$media_release = inMobiBanner.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(status, "status");
            ((I1) mPubListener$media_release).f23725a.onRequestPayloadCreationFailed(status);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRewardsUnlocked(@NotNull Map<Object, ? extends Object> rewards) {
        H1 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InMobiBanner ad2 = this.f23922a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            Intrinsics.checkNotNullParameter(rewards, "rewards");
            ((I1) mPubListener$media_release).f23725a.onRewardsUnlocked(ad2, rewards);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onUserLeftApplication() {
        H1 mPubListener$media_release;
        InMobiBanner ad2 = this.f23922a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            ((I1) mPubListener$media_release).f23725a.onUserLeftApplication(ad2);
        }
    }

    public final void a(@NotNull WeakReference<InMobiBanner> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.f23922a = weakReference;
    }
}
