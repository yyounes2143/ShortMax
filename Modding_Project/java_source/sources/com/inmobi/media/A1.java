package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.AudioStatus;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiAudio;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.ads.listeners.AudioAdEventListener;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public abstract class A1 extends PublisherCallbacks {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<InMobiAudio> f23448a;

    public A1(InMobiAudio audio) {
        Intrinsics.checkNotNullParameter(audio, "audio");
        this.f23448a = new WeakReference<>(audio);
    }

    @NotNull
    public final WeakReference<InMobiAudio> a() {
        return this.f23448a;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdClicked(@NotNull Map<Object, ? extends Object> params) {
        AudioAdEventListener mPubListener$media_release;
        Intrinsics.checkNotNullParameter(params, "params");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onAdClicked(inMobiAudio, params);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDismissed() {
        AudioAdEventListener mPubListener$media_release;
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onAdDismissed(inMobiAudio);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayFailed() {
        AudioAdEventListener mPubListener$media_release;
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onAdDisplayFailed(inMobiAudio);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayed(@NotNull AdMetaInfo info) {
        AudioAdEventListener mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onAdDisplayed(inMobiAudio);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchSuccessful(AdMetaInfo info) {
        AudioAdEventListener mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onAdFetchSuccessful(inMobiAudio, info);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdImpression(@Nullable Yd yd2) {
        AudioAdEventListener audioAdEventListener;
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null) {
            audioAdEventListener = inMobiAudio.getMPubListener$media_release();
        } else {
            audioAdEventListener = null;
        }
        if (audioAdEventListener == null) {
            if (yd2 != null) {
                yd2.c();
                return;
            }
            return;
        }
        audioAdEventListener.onAdImpression(inMobiAudio);
        if (yd2 != null) {
            yd2.d();
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadFailed(@NotNull InMobiAdRequestStatus status) {
        AudioAdEventListener mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "status");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onAdLoadFailed(inMobiAudio, status);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadSucceeded(@NotNull AdMetaInfo info) {
        AudioAdEventListener mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onAdLoadSucceeded(inMobiAudio, info);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAudioStatusChanged(@NotNull D1 item) {
        AudioAdEventListener mPubListener$media_release;
        AudioStatus audioStatus;
        Intrinsics.checkNotNullParameter(item, "audioStatusInternal");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
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
            mPubListener$media_release.onAudioStatusChanged(inMobiAudio, audioStatus);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreated(@NotNull byte[] request) {
        AudioAdEventListener mPubListener$media_release;
        Intrinsics.checkNotNullParameter(request, "request");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onRequestPayloadCreated(request);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreationFailed(@NotNull InMobiAdRequestStatus reason) {
        AudioAdEventListener mPubListener$media_release;
        Intrinsics.checkNotNullParameter(reason, "reason");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onRequestPayloadCreationFailed(reason);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRewardsUnlocked(@NotNull Map<Object, ? extends Object> rewards) {
        AudioAdEventListener mPubListener$media_release;
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onRewardsUnlocked(inMobiAudio, rewards);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onUserLeftApplication() {
        AudioAdEventListener mPubListener$media_release;
        InMobiAudio inMobiAudio = this.f23448a.get();
        if (inMobiAudio != null && (mPubListener$media_release = inMobiAudio.getMPubListener$media_release()) != null) {
            mPubListener$media_release.onUserLeftApplication(inMobiAudio);
        }
    }

    public final void a(@NotNull WeakReference<InMobiAudio> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.f23448a = weakReference;
    }
}
