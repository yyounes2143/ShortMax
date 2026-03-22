package com.ss.ttvideoengine;

import androidx.annotation.NonNull;
import com.ss.ttm.player.LoadControl;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class DynamicLoadControl extends LoadControl {
    private static final int CACHE_AUDIO_DURATION_MS = 40;
    private static final int CACHE_VIDEO_DURATION_MS = 30;
    private int mAudioTrackCacheDurationMs;
    private float mBeta;
    private int mCostTimeMaxMs;
    private float mGamma;
    protected MediaPlayer mMediaPlayer;
    private int mRebufferingDurationInitMs;
    private int mRebufferingDurationMaxMs;
    private float mRebufferingIncFactor;
    private int mRebufferingIncType;
    private int mRebufferingTimeEarlyMs;
    private int mStartupDurationMaxMs;
    private int mStartupDurationMinMs;
    private TTVideoEngine mVideoEngine;
    private int mVideoTrackCacheDurationMs;
    private int mRebufferingCount = 0;
    private long mNeedBuffer = 2000;
    private boolean mFirstCallBack = true;
    private boolean mIfStartup = true;
    private int mCaseType = 0;
    private int mCallbackCount = 0;

    public DynamicLoadControl(int i10, int i11, int i12, int i13, float f10, float f11, int i14, int i15, float f12, int i16, @NonNull TTVideoEngine tTVideoEngine) {
        this.mStartupDurationMinMs = i10;
        this.mStartupDurationMaxMs = i11;
        this.mRebufferingTimeEarlyMs = i12;
        this.mCostTimeMaxMs = i13;
        this.mBeta = f10;
        this.mGamma = f11;
        this.mRebufferingDurationInitMs = i14;
        this.mRebufferingDurationMaxMs = i15;
        this.mRebufferingIncFactor = f12;
        this.mRebufferingIncType = i16;
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
        String str;
        String str2;
        long j11;
        boolean z11;
        double d10;
        int i10;
        int i11;
        long min;
        int i12;
        if (z10) {
            int i13 = this.mRebufferingIncType;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        min = this.mRebufferingDurationInitMs;
                    } else {
                        int i14 = this.mRebufferingDurationMaxMs;
                        min = (long) (((i14 + i12) / 2.0d) - ((((i14 + i12) / 2.0d) - this.mRebufferingDurationInitMs) * Math.cos((this.mRebufferingIncFactor * 6.283185307179586d) * this.mRebufferingCount)));
                    }
                } else {
                    min = (long) Math.min(this.mRebufferingDurationInitMs * ((this.mRebufferingIncFactor * Math.log1p(this.mRebufferingCount)) + 1.0d), this.mRebufferingDurationMaxMs);
                }
            } else {
                int i15 = this.mRebufferingDurationInitMs;
                min = Math.min(i15 + (this.mRebufferingCount * this.mRebufferingIncFactor * i15), this.mRebufferingDurationMaxMs);
            }
            if (j10 >= min) {
                this.mRebufferingCount++;
                TTVideoEngineLog.d("dynamiclc", " parameters:  rdi " + this.mRebufferingDurationInitMs + ", rdm " + this.mRebufferingDurationMaxMs + ", rif " + this.mRebufferingIncFactor + ", rit " + this.mRebufferingIncType);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" buffer end:  rebuf count ");
                sb2.append(this.mRebufferingCount);
                sb2.append(", need buf ");
                sb2.append(min);
                sb2.append(", now buf ");
                sb2.append(j10);
                TTVideoEngineLog.d("dynamiclc", sb2.toString());
                return true;
            }
            return false;
        }
        if (!this.mFirstCallBack) {
            str = ", now buf ";
            str2 = ", need buf ";
            j11 = this.mNeedBuffer;
        } else {
            if (PortraitNetworkScore.getInstance().getLastTargetBitrate() >= 0.0d) {
                d10 = PortraitNetworkScore.getInstance().getLastTargetBitrate() * 1024.0d * 1024.0d;
            } else {
                d10 = -1.0d;
            }
            long j12 = (long) d10;
            MediaPlayer mediaPlayer = this.mVideoEngine.getMediaPlayer();
            long j13 = -1;
            if (mediaPlayer != null) {
                j13 = mediaPlayer.getLongOption(171, -1L);
            }
            if (this.mIfStartup) {
                str = ", now buf ";
                str2 = ", need buf ";
                j13 = (long) (j13 * (this.mBeta + (this.mGamma * Math.exp(1.0d - ((this.mRebufferingTimeEarlyMs * 1.0d) / 1000.0d)))));
            } else {
                str = ", now buf ";
                str2 = ", need buf ";
            }
            float f11 = (((float) j12) * 1.0f) / ((float) j13);
            float f12 = (((float) (this.mRebufferingTimeEarlyMs - j10)) * 1.0f) / (i10 + this.mCostTimeMaxMs);
            TTVideoEngineLog.d("dynamiclc", " targetBitrate: " + j12 + ", videoBitrate: " + j13 + ", rate: " + f11 + ", threshold: " + f12);
            int i16 = this.mRebufferingTimeEarlyMs;
            if (j10 >= i16) {
                j11 = this.mStartupDurationMinMs;
                i11 = 1;
            } else if (j12 > 0 && j13 > 0) {
                if (f11 >= 1.0f) {
                    j11 = this.mStartupDurationMinMs;
                    i11 = 2;
                } else if (f11 < 1.0f && f11 >= f12) {
                    j11 = Math.min(Math.max((1.0f - f11) * i16, this.mStartupDurationMinMs), this.mStartupDurationMaxMs);
                    i11 = 3;
                } else {
                    j11 = Math.min(Math.max((1.0f - f12) * i16, this.mStartupDurationMinMs), this.mStartupDurationMaxMs);
                    i11 = 4;
                }
            } else {
                j11 = Math.min(Math.max((1.0f - f12) * i16, this.mStartupDurationMinMs), this.mStartupDurationMaxMs);
                i11 = 5;
            }
            this.mNeedBuffer = j11;
            this.mCaseType = i11;
            this.mFirstCallBack = false;
        }
        if (j10 >= j11) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.mCallbackCount++;
        if (z11) {
            TTVideoEngineLog.d("dynamiclc", " parameters:  D_min " + this.mStartupDurationMinMs + ", D_max " + this.mStartupDurationMaxMs + ", T_min " + this.mRebufferingTimeEarlyMs + ", C_max " + this.mCostTimeMaxMs);
            TTVideoEngineLog.d("dynamiclc", " start up: ifstartup " + this.mIfStartup + ", case " + this.mCaseType + str2 + j11 + str + j10 + ", callback count " + this.mCallbackCount);
            this.mFirstCallBack = true;
            this.mIfStartup = false;
            this.mCallbackCount = 0;
            return z11;
        }
        return z11;
    }
}
