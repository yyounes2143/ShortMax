package com.ss.ttvideoengine.log;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.ss.ttvideoengine.EngineGlobalConfig;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes6.dex */
public class HeadsetStateMonitor {
    private static final int MASK_WIRED = 1;
    private static final int MASK_WIRELESS = 2;
    private static final int STATE_NOTHING_CONNECTED = 0;
    private static final int STATE_UNINITIALIZED = 65280;
    private static final String TAG = "HeadsetStateMonitor";
    private static HeadsetStateMonitor sInstance;
    private final Context mContext;
    private HeadsetReceiver mHeadsetReceiver;
    private volatile boolean mIsStarted;
    private final List<HeadsetStateChangedListener> mChangeListener = new ArrayList();
    private volatile int mHeadsetState = 65280;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* loaded from: classes6.dex */
    public interface HeadsetStateChangedListener {
        void onHeadsetStateChanged(boolean z10, boolean z11);
    }

    private HeadsetStateMonitor(Context context) {
        this.mContext = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: addListenerInternal */
    public void lambda$addStateChangedListener$1(HeadsetStateChangedListener headsetStateChangedListener) {
        if (headsetStateChangedListener != null && !this.mChangeListener.contains(headsetStateChangedListener)) {
            this.mChangeListener.add(headsetStateChangedListener);
        }
        TTVideoEngineLog.d(TAG, "listener: " + this.mChangeListener.size());
    }

    private int getHeadsetState(Context context) {
        AudioDeviceInfo[] devices;
        if (TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 4L) && !this.mIsStarted) {
            return 1;
        }
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                TTVideoEngineLog.e(TAG, "AudioManager is null");
                return 65280;
            } else if (Build.VERSION.SDK_INT == 25) {
                boolean isWiredHeadsetOn = audioManager.isWiredHeadsetOn();
                if (audioManager.isBluetoothScoOn() || audioManager.isBluetoothA2dpOn()) {
                    return (isWiredHeadsetOn ? 1 : 0) | 2;
                }
                return isWiredHeadsetOn ? 1 : 0;
            } else {
                int i10 = 0;
                for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                    if (audioDeviceInfo.getType() == 3 || audioDeviceInfo.getType() == 4) {
                        i10 |= 1;
                        TTVideoEngineLog.d(TAG, "wired device: " + ((Object) audioDeviceInfo.getProductName()));
                    }
                    if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 7) {
                        i10 |= 2;
                        TTVideoEngineLog.d(TAG, "bluetooth device: " + ((Object) audioDeviceInfo.getProductName()));
                    }
                }
                return i10;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            return 65280;
        }
    }

    public static HeadsetStateMonitor getInstance(Context context) {
        if (sInstance == null) {
            synchronized (HeadsetStateMonitor.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new HeadsetStateMonitor(context);
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    private /* synthetic */ void lambda$start$0() {
        this.mHeadsetState = getHeadsetState(this.mContext);
    }

    private void notifyStateChanged(boolean z10) {
        boolean z11;
        if (this.mChangeListener.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.mChangeListener.size(); i10++) {
            try {
                HeadsetStateChangedListener headsetStateChangedListener = this.mChangeListener.get(i10);
                if (headsetStateChangedListener != null) {
                    if (!isWiredConnected() && !isWirelessConnected()) {
                        z11 = false;
                        headsetStateChangedListener.onHeadsetStateChanged(z11, z10);
                    }
                    z11 = true;
                    headsetStateChangedListener.onHeadsetStateChanged(z11, z10);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConnected(int i10) {
        boolean z10;
        TTVideoEngineLog.d(TAG, "onConnected, " + i10);
        if (this.mHeadsetState == 65280) {
            this.mHeadsetState = getHeadsetState(this.mContext);
        }
        int i11 = this.mHeadsetState | i10;
        if (i11 == this.mHeadsetState) {
            return;
        }
        this.mHeadsetState = i11;
        if (i10 == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        notifyStateChanged(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDisconnected(int i10) {
        TTVideoEngineLog.d(TAG, "onDisconnected");
        if (this.mHeadsetState == 65280) {
            this.mHeadsetState = getHeadsetState(this.mContext);
        }
        int i11 = (~i10) & this.mHeadsetState;
        if (i11 == this.mHeadsetState) {
            return;
        }
        this.mHeadsetState = i11;
        notifyStateChanged(isWirelessConnected());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removeListenerInternal */
    public void lambda$removeStateChangedListener$2(HeadsetStateChangedListener headsetStateChangedListener) {
        if (headsetStateChangedListener != null) {
            this.mChangeListener.remove(headsetStateChangedListener);
        }
        TTVideoEngineLog.d(TAG, "listener: " + this.mChangeListener.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void runOnThread(Handler handler, Runnable runnable) {
        if (Looper.myLooper() == handler.getLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    public boolean isWiredConnected() {
        return false;
    }

    public boolean isWirelessConnected() {
        return false;
    }

    public void start() {
    }

    public void stop() {
    }

    private void registerBroadcastReceiver(Context context) {
    }

    private void unregisterBroadcastReceiver(Context context) {
    }

    public void addStateChangedListener(HeadsetStateChangedListener headsetStateChangedListener) {
    }

    public void removeStateChangedListener(HeadsetStateChangedListener headsetStateChangedListener) {
    }

    /* loaded from: classes6.dex */
    private class HeadsetReceiver extends BroadcastReceiver {
        private HeadsetReceiver() {
        }

        private /* synthetic */ void lambda$onReceive$0() {
            HeadsetStateMonitor.this.onConnected(1);
        }

        private /* synthetic */ void lambda$onReceive$1() {
            HeadsetStateMonitor.this.onDisconnected(1);
        }

        private /* synthetic */ void lambda$onReceive$2() {
            HeadsetStateMonitor.this.onConnected(2);
        }

        private /* synthetic */ void lambda$onReceive$3() {
            HeadsetStateMonitor.this.onDisconnected(2);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
        }
    }
}
