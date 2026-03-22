package com.ss.ttvideoengine.utils;

import android.content.Context;
import com.ss.ttvideoengine.log.HeadsetStateMonitor;
/* loaded from: classes6.dex */
public class PlayDurationManager implements IPlayDurationManager {
    private static final String TAG = "PlayDurationManager";
    private final HeadsetStateMonitor mHeadsetMonitor;
    private final HeadsetStateMonitor.HeadsetStateChangedListener mHeadsetStateChangedListener;
    private volatile boolean mIsPlaying;
    private final PlayDuration mTotalPlayDuration;
    private final PlayDuration mWiredPlayDuration;
    private final PlayDuration mWirelessPlayDuration;

    public PlayDurationManager(HeadsetStateMonitor headsetStateMonitor) {
        HeadsetStateMonitor.HeadsetStateChangedListener headsetStateChangedListener = new HeadsetStateMonitor.HeadsetStateChangedListener() { // from class: com.ss.ttvideoengine.utils.PlayDurationManager.1
            @Override // com.ss.ttvideoengine.log.HeadsetStateMonitor.HeadsetStateChangedListener
            public void onHeadsetStateChanged(boolean z10, boolean z11) {
                TTVideoEngineLog.d(PlayDurationManager.TAG, "onHeadsetStateChanged: " + z10 + ", " + z11);
                if (!z10) {
                    PlayDurationManager.this.mWiredPlayDuration.stop();
                    PlayDurationManager.this.mWirelessPlayDuration.stop();
                } else if (z11 && PlayDurationManager.this.mIsPlaying) {
                    PlayDurationManager.this.mWirelessPlayDuration.start();
                    PlayDurationManager.this.mWiredPlayDuration.stop();
                } else if (!z11 && PlayDurationManager.this.mIsPlaying) {
                    PlayDurationManager.this.mWiredPlayDuration.start();
                    PlayDurationManager.this.mWirelessPlayDuration.stop();
                }
                TTVideoEngineLog.d(PlayDurationManager.TAG, String.format("wiredDuration: %s, wirelessDuration: %s", Integer.valueOf(PlayDurationManager.this.mWiredPlayDuration.getPlayedDuration()), Integer.valueOf(PlayDurationManager.this.mWirelessPlayDuration.getPlayedDuration())));
            }
        };
        this.mHeadsetStateChangedListener = headsetStateChangedListener;
        this.mHeadsetMonitor = headsetStateMonitor;
        this.mTotalPlayDuration = new PlayDuration();
        this.mWiredPlayDuration = new PlayDuration();
        this.mWirelessPlayDuration = new PlayDuration();
        headsetStateMonitor.addStateChangedListener(headsetStateChangedListener);
    }

    @Override // com.ss.ttvideoengine.utils.IPlayDurationManager
    public void clear() {
        this.mTotalPlayDuration.clear();
        this.mWiredPlayDuration.clear();
        this.mWirelessPlayDuration.clear();
    }

    @Override // com.ss.ttvideoengine.utils.IPlayDurationManager
    public int getPlayedDuration() {
        return this.mTotalPlayDuration.getPlayedDuration();
    }

    @Override // com.ss.ttvideoengine.utils.IPlayDurationManager
    public long getWiredPlayedDuration() {
        return this.mWiredPlayDuration.getPlayedDuration();
    }

    @Override // com.ss.ttvideoengine.utils.IPlayDurationManager
    public long getWirelessPlayedDuration(Context context) {
        return this.mWirelessPlayDuration.getPlayedDuration();
    }

    @Override // com.ss.ttvideoengine.utils.IPlayDurationManager
    public void release() {
        this.mHeadsetMonitor.removeStateChangedListener(this.mHeadsetStateChangedListener);
    }

    @Override // com.ss.ttvideoengine.utils.IPlayDurationManager
    public void reset() {
        this.mTotalPlayDuration.reset();
        this.mWiredPlayDuration.reset();
        this.mWirelessPlayDuration.reset();
    }

    @Override // com.ss.ttvideoengine.utils.IPlayDurationManager
    public void start() {
        if (this.mIsPlaying) {
            TTVideoEngineLog.i(TAG, "Already started");
            return;
        }
        this.mIsPlaying = true;
        this.mTotalPlayDuration.start();
        if (this.mHeadsetMonitor.isWiredConnected()) {
            this.mWiredPlayDuration.start();
        } else if (this.mHeadsetMonitor.isWirelessConnected()) {
            this.mWirelessPlayDuration.start();
        }
        TTVideoEngineLog.d(TAG, "start play");
    }

    @Override // com.ss.ttvideoengine.utils.IPlayDurationManager
    public void stop() {
        if (!this.mIsPlaying) {
            TTVideoEngineLog.i(TAG, "Already stopped");
            return;
        }
        this.mIsPlaying = false;
        this.mTotalPlayDuration.stop();
        if (this.mHeadsetMonitor.isWiredConnected()) {
            this.mWiredPlayDuration.stop();
        }
        if (this.mHeadsetMonitor.isWirelessConnected()) {
            this.mWirelessPlayDuration.stop();
        }
        TTVideoEngineLog.d(TAG, String.format("stop: play duration: %s, wiredDuration: %s, wirelessDuration: %s", Integer.valueOf(this.mTotalPlayDuration.getPlayedDuration()), Integer.valueOf(this.mWiredPlayDuration.getPlayedDuration()), Integer.valueOf(this.mWirelessPlayDuration.getPlayedDuration())));
    }
}
