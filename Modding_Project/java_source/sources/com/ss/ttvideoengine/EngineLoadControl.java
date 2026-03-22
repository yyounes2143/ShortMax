package com.ss.ttvideoengine;

import com.ss.ttm.player.LoadControl;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class EngineLoadControl extends LoadControl {
    private static final int CACHE_AUDIO_DURATION_MS = 40;
    private static final int CACHE_VIDEO_DURATION_MS = 30;
    private int mAudioTrackCacheDurationMs;
    private int mRebufferingCount = 0;
    private int mRebufferingDurationInitMs;
    private int mRebufferingDurationMaxMs;
    private float mRebufferingIncFactor;
    private int mRebufferingIncType;
    private int mStartupDurationNonpreloadedMs;
    private int mStartupDurationPreloadedMs;
    private TTVideoEngine mVideoEngine;
    private int mVideoTrackCacheDurationMs;

    public EngineLoadControl(int i10, int i11, int i12, int i13, float f10, int i14, TTVideoEngine tTVideoEngine) {
        this.mStartupDurationPreloadedMs = i10;
        this.mStartupDurationNonpreloadedMs = i11;
        this.mRebufferingDurationInitMs = i12;
        this.mRebufferingDurationMaxMs = i13;
        this.mRebufferingIncFactor = f10;
        this.mRebufferingIncType = i14;
        this.mVideoEngine = tTVideoEngine;
    }

    @Override // com.ss.ttm.player.LoadControl
    protected int onCodecStackSelected(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return -1;
            }
            return this.mAudioTrackCacheDurationMs;
        }
        return this.mVideoTrackCacheDurationMs;
    }

    @Override // com.ss.ttm.player.LoadControl
    protected int onFilterStackSelected(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return -1;
            }
            return this.mAudioTrackCacheDurationMs;
        }
        return this.mVideoTrackCacheDurationMs;
    }

    @Override // com.ss.ttm.player.LoadControl
    protected int onTrackSelected(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return -1;
            }
            return this.mAudioTrackCacheDurationMs;
        }
        return this.mVideoTrackCacheDurationMs;
    }

    @Override // com.ss.ttm.player.LoadControl
    protected boolean shouldStartPlayback(long j10, float f10, boolean z10) {
        boolean z11;
        boolean z12;
        int i10;
        int i11;
        String str;
        String str2;
        long min;
        if (z10) {
            int i12 = this.mRebufferingIncType;
            if (i12 == 0) {
                str = ", now buf ";
                str2 = ", need buf ";
                int i13 = this.mRebufferingDurationInitMs;
                min = Math.min(i13 + (this.mRebufferingCount * this.mRebufferingIncFactor * i13), this.mRebufferingDurationMaxMs);
            } else if (i12 == 1) {
                str = ", now buf ";
                str2 = ", need buf ";
                min = (long) Math.min(this.mRebufferingDurationInitMs * ((this.mRebufferingIncFactor * Math.log1p(this.mRebufferingCount)) + 1.0d), this.mRebufferingDurationMaxMs);
            } else {
                min = this.mRebufferingDurationInitMs;
                str = ", now buf ";
                str2 = ", need buf ";
            }
            if (j10 >= min) {
                z11 = true;
                this.mRebufferingCount++;
                TTVideoEngineLog.d("defaultlc", " parameters:  sdp " + this.mStartupDurationPreloadedMs + " sdnp " + this.mStartupDurationNonpreloadedMs + " rdi " + this.mRebufferingDurationInitMs + " rdm " + this.mRebufferingDurationMaxMs + " rif " + this.mRebufferingIncFactor + " rit " + this.mRebufferingIncType);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" buffer end:  rebuf count ");
                sb2.append(this.mRebufferingCount);
                sb2.append(str2);
                sb2.append(min);
                sb2.append(str);
                sb2.append(j10);
                TTVideoEngineLog.d("defaultlc", sb2.toString());
            } else {
                return false;
            }
        } else {
            z11 = true;
            if (this.mVideoEngine.getLongOption(461) > 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (z12) {
                i10 = this.mStartupDurationPreloadedMs;
            } else {
                i10 = this.mStartupDurationNonpreloadedMs;
            }
            if (j10 < i10) {
                z11 = false;
            }
            if (z11) {
                TTVideoEngineLog.d("defaultlc", " parameters:  sdp " + this.mStartupDurationPreloadedMs + " sdnp " + this.mStartupDurationNonpreloadedMs + " rdi " + this.mRebufferingDurationInitMs + " rdm " + this.mRebufferingDurationMaxMs + " rif " + this.mRebufferingIncFactor + " rit " + this.mRebufferingIncType);
                StringBuilder sb3 = new StringBuilder();
                sb3.append(" start up:    preloaded ");
                sb3.append(z12);
                sb3.append(", need buf ");
                if (z12) {
                    i11 = this.mStartupDurationPreloadedMs;
                } else {
                    i11 = this.mStartupDurationNonpreloadedMs;
                }
                sb3.append(i11);
                sb3.append(", now buf ");
                sb3.append(j10);
                TTVideoEngineLog.d("defaultlc", sb3.toString());
            }
        }
        return z11;
    }
}
