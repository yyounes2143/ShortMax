package com.ss.ttm.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import com.ss.ttm.utils.AVLogger;
import com.ss.ttm.utils.Util;
@Keep
/* loaded from: classes6.dex */
public final class VsyncTimeHelper {
    private static final double DEFAULT_REFRESH_RATE = 16.0d;
    private static final long NANOS_PER_SECOND = 1000000000;
    private static final long TIME_UNSET = -9223372036854775807L;
    private final DefaultDisplayListener displayListener;
    private long vsyncDurationNs;
    private final UIVSyncSampler vsyncSampler;
    private final WindowManager windowManager;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class UIVSyncSampler implements Choreographer.FrameCallback, Handler.Callback {
        private static final String BUNDLE_TIMESTAMP = "time";
        private static final String BUNDLE_VSYNC_DURATION = "vsync";
        private static final UIVSyncSampler INSTANCE = new UIVSyncSampler();
        private static final int MSG_ADD_OBSERVER = 0;
        private static final int MSG_REMOVE_OBSERVER = 1;
        private static final int MSG_UPDATE_VSYNC_DURATION = 4;
        private static final int MSG_VSYNC_COMING = 2;
        private static final String TAG = "UIVSyncSampler";
        private Bundle bundle;
        private Choreographer choreographer;
        private final HandlerThread choreographerOwnerThread;
        private int currentUIFps;
        private final Handler handler;
        private int lowestUIFps;
        private final Handler mainHandler;
        private int observerCount;
        private long uiVsyncDurationNs;
        private long vsyncSampleCount;
        public volatile long sampledVsyncTimeNs = -9223372036854775807L;
        public volatile long lastSampledVsyncTimeNs = -9223372036854775807L;
        public volatile int skipedFrameCount = 0;

        private UIVSyncSampler() {
            HandlerThread handlerThread = new HandlerThread("Vsync:Handler");
            this.choreographerOwnerThread = handlerThread;
            handlerThread.start();
            this.handler = new Handler(handlerThread.getLooper(), this);
            this.bundle = new Bundle();
            Handler handler = new Handler(Looper.getMainLooper());
            this.mainHandler = handler;
            handler.post(new Runnable() { // from class: com.ss.ttm.player.VsyncTimeHelper.UIVSyncSampler.1
                @Override // java.lang.Runnable
                public void run() {
                    UIVSyncSampler.this.choreographer = Choreographer.getInstance();
                    if (UIVSyncSampler.this.observerCount > 0) {
                        UIVSyncSampler.this.choreographer.postFrameCallback(UIVSyncSampler.INSTANCE);
                    }
                }
            });
        }

        private void addObserverInternal() {
            Choreographer choreographer;
            this.observerCount++;
            AVLogger.d(TAG, "add observer cnt = " + this.observerCount);
            if (this.observerCount == 1 && (choreographer = this.choreographer) != null) {
                choreographer.postFrameCallback(this);
            }
        }

        public static UIVSyncSampler getInstance() {
            return INSTANCE;
        }

        private void recordUIFps(long j10) {
            int i10;
            if (this.uiVsyncDurationNs == 0) {
                return;
            }
            this.vsyncSampleCount++;
            this.sampledVsyncTimeNs = j10;
            if (this.lastSampledVsyncTimeNs == -9223372036854775807L) {
                this.lastSampledVsyncTimeNs = this.sampledVsyncTimeNs;
                return;
            }
            long j11 = this.sampledVsyncTimeNs - this.lastSampledVsyncTimeNs;
            if (j11 <= 0) {
                AVLogger.d(TAG, "vsync abnormal reset");
                this.lastSampledVsyncTimeNs = -9223372036854775807L;
                return;
            }
            long j12 = this.uiVsyncDurationNs;
            if (j11 - j12 > 0) {
                i10 = Math.round(((float) (j11 - j12)) / ((float) j12));
            } else {
                i10 = 0;
            }
            this.skipedFrameCount += i10;
            int i11 = (int) (1000000000 / j11);
            this.currentUIFps = i11;
            int i12 = this.lowestUIFps;
            if (i12 != 0) {
                i11 = Math.min(i12, i11);
            }
            this.lowestUIFps = i11;
            this.lastSampledVsyncTimeNs = this.sampledVsyncTimeNs;
            AVLogger.d(TAG, "vsync diff = " + (((float) j11) * 1.0E-6f) + ", skipped frame = " + i10 + ", total = " + this.skipedFrameCount + ", fps = " + this.currentUIFps + ", lowest fps = " + this.lowestUIFps);
        }

        private void removeObserverInternal() {
            Choreographer choreographer;
            this.observerCount--;
            AVLogger.d(TAG, "remove observer cnt = " + this.observerCount);
            if (this.observerCount == 0 && (choreographer = this.choreographer) != null) {
                choreographer.removeFrameCallback(this);
                this.sampledVsyncTimeNs = -9223372036854775807L;
                this.lastSampledVsyncTimeNs = -9223372036854775807L;
                this.skipedFrameCount = 0;
                this.currentUIFps = 0;
                this.lowestUIFps = 0;
                this.vsyncSampleCount = 0L;
            }
        }

        private void updateUIVsyncDurationNs(long j10) {
            this.uiVsyncDurationNs = j10;
            AVLogger.d(TAG, "refresh rate = " + this.uiVsyncDurationNs);
        }

        public void addObserver() {
            this.handler.sendEmptyMessage(0);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            Message obtainMessage = this.handler.obtainMessage(2);
            this.bundle.putLong("time", j10);
            obtainMessage.setData(this.bundle);
            obtainMessage.sendToTarget();
            this.choreographer.postFrameCallback(this);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 4) {
                            return false;
                        }
                        updateUIVsyncDurationNs(message.getData().getLong(BUNDLE_VSYNC_DURATION));
                        return true;
                    }
                    recordUIFps(message.getData().getLong("time"));
                    return true;
                }
                removeObserverInternal();
                return true;
            }
            addObserverInternal();
            return true;
        }

        public void removeObserver() {
            this.handler.sendEmptyMessage(1);
        }

        public void updateVsyncDuration(long j10) {
            this.bundle.putLong(BUNDLE_VSYNC_DURATION, j10);
            Message obtainMessage = this.handler.obtainMessage(4);
            obtainMessage.setData(this.bundle);
            obtainMessage.sendToTarget();
        }
    }

    @CalledByNative
    public VsyncTimeHelper(TTPlayer tTPlayer) {
        this(tTPlayer != null ? tTPlayer.getContext() : null);
    }

    @TargetApi(17)
    private DefaultDisplayListener maybeBuildDefaultDisplayListenerV17(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager == null) {
            return null;
        }
        return new DefaultDisplayListener(displayManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDefaultDisplayRefreshRateParams() {
        Display defaultDisplay = this.windowManager.getDefaultDisplay();
        if (defaultDisplay != null) {
            this.vsyncDurationNs = (long) (1.0E9d / defaultDisplay.getRefreshRate());
        } else {
            this.vsyncDurationNs = 62500000L;
        }
        this.vsyncSampler.updateVsyncDuration(this.vsyncDurationNs);
    }

    @CalledByNative
    public void disable() {
        if (this.windowManager != null) {
            DefaultDisplayListener defaultDisplayListener = this.displayListener;
            if (defaultDisplayListener != null) {
                defaultDisplayListener.unregister();
            }
            this.vsyncSampler.removeObserver();
        }
    }

    @CalledByNative
    public void enable() {
        if (this.windowManager != null) {
            this.vsyncSampler.addObserver();
            DefaultDisplayListener defaultDisplayListener = this.displayListener;
            if (defaultDisplayListener != null) {
                defaultDisplayListener.register();
            }
            updateDefaultDisplayRefreshRateParams();
        }
    }

    @CalledByNative
    public int getLowestUIFps() {
        return this.vsyncSampler.lowestUIFps;
    }

    @CalledByNative
    public int getUIFps() {
        return this.vsyncSampler.currentUIFps;
    }

    @CalledByNative
    public long getVsyncDurationNs() {
        return this.vsyncDurationNs;
    }

    public VsyncTimeHelper(Context context) {
        if (context != null) {
            context = context.getApplicationContext();
            this.windowManager = (WindowManager) context.getSystemService("window");
        } else {
            this.windowManager = null;
        }
        if (this.windowManager != null) {
            this.displayListener = Util.SDK_INT >= 17 ? maybeBuildDefaultDisplayListenerV17(context) : null;
            this.vsyncSampler = UIVSyncSampler.getInstance();
        } else {
            this.displayListener = null;
            this.vsyncSampler = null;
        }
        this.vsyncDurationNs = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(17)
    /* loaded from: classes6.dex */
    public final class DefaultDisplayListener implements DisplayManager.DisplayListener {
        private final DisplayManager displayManager;

        public DefaultDisplayListener(DisplayManager displayManager) {
            this.displayManager = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            if (i10 == 0) {
                VsyncTimeHelper.this.updateDefaultDisplayRefreshRateParams();
            }
        }

        public void register() {
            this.displayManager.registerDisplayListener(this, null);
        }

        public void unregister() {
            this.displayManager.unregisterDisplayListener(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i10) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i10) {
        }
    }
}
