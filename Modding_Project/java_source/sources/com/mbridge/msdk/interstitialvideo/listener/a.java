package com.mbridge.msdk.interstitialvideo.listener;

import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.interstitialvideo.out.InterstitialVideoListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
/* compiled from: DecoratorInterstitialListener.java */
/* loaded from: classes5.dex */
public class a implements InterVideoOutListener {

    /* renamed from: a  reason: collision with root package name */
    private InterstitialVideoListener f27678a;

    /* renamed from: b  reason: collision with root package name */
    private String f27679b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27680c;

    public a(InterstitialVideoListener interstitialVideoListener) {
        this.f27678a = interstitialVideoListener;
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdClose(mBridgeIds, rewardInfo);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onAdCloseWithIVReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdCloseWithIVReward(mBridgeIds, rewardInfo);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onAdShow(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdShow(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onEndcardShow(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onEndcardShow(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onLoadSuccess(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onLoadSuccess(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onShowFail(c cVar, MBridgeIds mBridgeIds, String str) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onShowFail(mBridgeIds, str);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onVideoAdClicked(boolean z10, MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoAdClicked(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onVideoComplete(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoComplete(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoLoadFail(mBridgeIds, str);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f27678a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoLoadSuccess(mBridgeIds);
        }
    }

    public a(InterstitialVideoListener interstitialVideoListener, String str, boolean z10) {
        this.f27678a = interstitialVideoListener;
        this.f27679b = str;
        this.f27680c = z10;
    }
}
