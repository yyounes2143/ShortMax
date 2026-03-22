package com.ss.ttvideoengine;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.TransportInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import com.adjust.sdk.Constants;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class TTNetWorkListener extends BroadcastReceiver {
    public static final int ACCESS_STRENGTH_EXCELLENT = 4;
    public static final int ACCESS_STRENGTH_GOOD = 3;
    public static final int ACCESS_STRENGTH_MEDIUM = 2;
    public static final int ACCESS_STRENGTH_UNKNOWN = 10;
    public static final int ACCESS_STRENGTH_WEAK = 1;
    public static final int ACCESS_TYPE_2G = 2;
    public static final int ACCESS_TYPE_3G = 3;
    public static final int ACCESS_TYPE_4G = 1;
    public static final int ACCESS_TYPE_5G = 4;
    public static final int ACCESS_TYPE_DISCONNECT = -1;
    public static final int ACCESS_TYPE_MOBILE = 6;
    public static final int ACCESS_TYPE_UNKNOWN = 1000;
    public static final int ACCESS_TYPE_WIFI = 0;
    public static final int CALLBACK_NETWORK_TYPE = 0;
    public static final int CALLBACK_SIGNAL_STRENGTH = 1;
    public static final int NETWORK_LISTENER_KEY_LEVEL_CODE_MAP = 5;
    public static final int NETWORK_LISTENER_KEY_NET_LEVEL_MAX_COUNT = 1;
    public static final int NETWORK_LISTENER_KEY_RTT_CODE_MAP = 3;
    public static final int NETWORK_LISTENER_KEY_SIG_CODE_MAP = 4;
    public static final int NETWORK_LISTENER_KEY_TIMER_TASK_INTERVAL = 2;
    private static final String TAG = "TTNetWorkListener";
    private static TTNetWorkListener mInst;
    private Thread mThread;
    private int mCurrentAccessType = 1000;
    private int mCurrentAccessStrength = 10;
    private Lock mLock = new ReentrantLock();
    private ArrayList<WeakReference<TTNetworkStateCallback>> mListeners = new ArrayList<>();
    private int mInited = 0;
    private TTPhoneStateListener mPhoneStateListener = null;
    private boolean mIsWifiSensitiveMode = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class MyThread extends Thread {
        private WeakReference<Context> mContextRef;
        private WeakReference<TTNetWorkListener> mTTNetworkListener;

        public MyThread(Context context, TTNetWorkListener tTNetWorkListener) {
            this.mContextRef = new WeakReference<>(context.getApplicationContext());
            this.mTTNetworkListener = new WeakReference<>(tTNetWorkListener);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (Looper.myLooper() == null) {
                Looper.prepare();
            }
            int sensitiveScene = TTVideoEngineUtils.getSensitiveScene();
            if (sensitiveScene == 1 || sensitiveScene == 2 || sensitiveScene == 3) {
                TTNetWorkListener.getInstance().mIsWifiSensitiveMode = true;
                TTVideoEngineLog.i(TTNetWorkListener.TAG, "is wifi sensitive mode:" + sensitiveScene);
            }
            TTNetWorkListener.getInstance().registerListener(this.mContextRef.get());
            Looper.loop();
            TTNetWorkListener tTNetWorkListener = this.mTTNetworkListener.get();
            if (tTNetWorkListener != null) {
                tTNetWorkListener.unregisterListener(this.mContextRef.get());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class TTPhoneStateListener extends PhoneStateListener {
        private WeakReference<TTNetWorkListener> mHandler;
        private TelephonyManager mTelephonyManager;

        public TTPhoneStateListener(Context context, TTNetWorkListener tTNetWorkListener) {
            this.mTelephonyManager = null;
            this.mHandler = null;
            if (tTNetWorkListener != null) {
                this.mHandler = new WeakReference<>(tTNetWorkListener);
            }
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
                if (telephonyManager == null) {
                    return;
                }
                this.mTelephonyManager = telephonyManager;
            } catch (Exception unused) {
                TTVideoEngineLog.e(TTNetWorkListener.TAG, "create telephonyManager failed");
                this.mTelephonyManager = null;
            }
        }

        private void listenCompact(Context context, PhoneStateListener phoneStateListener, int i10) {
            TelephonyManager telephonyManager = this.mTelephonyManager;
            if (telephonyManager != null && context != null) {
                if (Build.VERSION.SDK_INT >= 31) {
                    if (context.checkSelfPermission("android.permission.READ_PHONE_STATE") == 0) {
                        this.mTelephonyManager.listen(phoneStateListener, i10);
                        return;
                    }
                    return;
                }
                telephonyManager.listen(phoneStateListener, i10);
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onDataConnectionStateChanged(int i10, int i11) {
            WeakReference<TTNetWorkListener> weakReference;
            TTNetWorkListener tTNetWorkListener;
            super.onDataConnectionStateChanged(i10, i11);
            TTVideoEngineLog.d(TTNetWorkListener.TAG, "data connection state changed, state: " + i10 + ", networkType: " + i11);
            if (i10 == 2 && (weakReference = this.mHandler) != null && (tTNetWorkListener = weakReference.get()) != null && tTNetWorkListener.mCurrentAccessType != 0) {
                tTNetWorkListener._handleNetworkChange(i11);
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            TTNetWorkListener tTNetWorkListener;
            int i10;
            super.onSignalStrengthsChanged(signalStrength);
            if (signalStrength != null) {
                WeakReference<TTNetWorkListener> weakReference = this.mHandler;
                if (weakReference != null) {
                    tTNetWorkListener = weakReference.get();
                } else {
                    tTNetWorkListener = null;
                }
                if (tTNetWorkListener != null && tTNetWorkListener.mCurrentAccessType == 0) {
                    return;
                }
                try {
                    i10 = signalStrength.getLevel();
                    if (i10 == 0) {
                        i10 = 1;
                    }
                } catch (Exception unused) {
                    TTVideoEngineLog.e(TTNetWorkListener.TAG, "failed to get signalStrength");
                    i10 = -1;
                }
                if (tTNetWorkListener != null) {
                    tTNetWorkListener._handleSigStrengthChange(i10);
                }
            }
        }

        public void register(Context context) {
            if (this.mTelephonyManager != null) {
                try {
                    TTVideoEngineLog.d(TTNetWorkListener.TAG, "start listen signal strength");
                    listenCompact(context, this, 256);
                } catch (Exception unused) {
                    TTVideoEngineLog.e(TTNetWorkListener.TAG, "listen signal strength failed");
                }
                listenCompact(context, this, 64);
            }
        }

        public void unregister(Context context) {
            if (this.mTelephonyManager != null) {
                listenCompact(context, this, 0);
            }
        }
    }

    private TTNetWorkListener() {
    }

    private void _handleNetworkChange(Context context) {
        updateAccessType(getNetworkType(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _handleSigStrengthChange(int i10) {
        if (i10 != this.mCurrentAccessStrength) {
            this.mLock.lock();
            int i11 = this.mCurrentAccessStrength;
            this.mCurrentAccessStrength = i10;
            TTVideoEngineLog.i(TAG, "strength changed, from: " + i11 + " to: " + this.mCurrentAccessStrength + " callback list size: " + this.mListeners.size());
            Iterator<WeakReference<TTNetworkStateCallback>> it = this.mListeners.iterator();
            while (it.hasNext()) {
                TTNetworkStateCallback tTNetworkStateCallback = it.next().get();
                if (tTNetworkStateCallback == null) {
                    it.remove();
                } else {
                    tTNetworkStateCallback.onAccessChanged(1, i11, this.mCurrentAccessStrength);
                }
            }
            this.mLock.unlock();
        }
    }

    private static int convertNetworkType(int i10) {
        if (i10 != 20) {
            switch (i10) {
                case 1:
                case 2:
                case 7:
                case 11:
                case 16:
                    return 2;
                case 3:
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    return 3;
                case 13:
                    return 1;
                default:
                    return 6;
            }
        }
        return 4;
    }

    public static synchronized TTNetWorkListener getInstance() {
        TTNetWorkListener tTNetWorkListener;
        synchronized (TTNetWorkListener.class) {
            try {
                if (mInst == null) {
                    mInst = new TTNetWorkListener();
                }
                tTNetWorkListener = mInst;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tTNetWorkListener;
    }

    private int getNetworkType(Context context) {
        NetworkInfo.State state;
        if (context == null) {
            return 1000;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            TTVideoEngineLog.d(TAG, "disconnect");
            return -1;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                if (networkInfo == null || (state = networkInfo.getState()) == null || (state != NetworkInfo.State.CONNECTED && state != NetworkInfo.State.CONNECTING)) {
                    NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
                    if (networkInfo2 != null) {
                        NetworkInfo.State state2 = networkInfo2.getState();
                        int subtype = activeNetworkInfo.getSubtype();
                        TTVideoEngineLog.d(TAG, "state: " + state2 + ", subtype: " + subtype);
                        if (state2 != null && (state2 == NetworkInfo.State.CONNECTED || state2 == NetworkInfo.State.CONNECTING)) {
                            return convertNetworkType(subtype);
                        }
                    }
                    return 1000;
                }
                TTVideoEngineLog.d(TAG, "wifi");
                return 0;
            }
            TTVideoEngineLog.d(TAG, "disconnect 1");
            return -1;
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, e10.toString());
            return 1000;
        }
    }

    private int getRssi(Context context, ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        TransportInfo transportInfo;
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        WifiInfo wifiInfo = null;
        if (networkInfo != null && networkInfo.isConnected() && context.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", context.getPackageName()) == 0) {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (Build.VERSION.SDK_INT >= 29 && (networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork())) != null) {
                transportInfo = networkCapabilities.getTransportInfo();
                wifiInfo = (WifiInfo) transportInfo;
            }
            if (wifiInfo == null && wifiManager != null) {
                wifiInfo = wifiManager.getConnectionInfo();
            }
        }
        if (wifiInfo != null) {
            return wifiInfo.getRssi();
        }
        return -1;
    }

    private int getWIFISignalStrength(Context context, Intent intent) {
        int i10;
        if (context == null) {
            return 10;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return 10;
            }
            if (intent != null) {
                i10 = intent.getIntExtra("newRssi", -70);
            } else if (!this.mIsWifiSensitiveMode) {
                i10 = getRssi(context, connectivityManager);
            } else {
                i10 = -1;
            }
            int calculateSignalLevel = WifiManager.calculateSignalLevel(i10, 4);
            TTVideoEngineLog.d(TAG, "wifi dbm:" + i10 + ", level:" + calculateSignalLevel);
            return calculateSignalLevel + 1;
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, e10.toString());
            return 10;
        }
    }

    private void updateAccessType(int i10) {
        if (i10 != this.mCurrentAccessType) {
            this.mLock.lock();
            int i11 = this.mCurrentAccessType;
            this.mCurrentAccessType = i10;
            TTVideoEngineLog.d(TAG, "access changed, from: " + i11 + " to: " + this.mCurrentAccessType + " callback list size: " + this.mListeners.size());
            Iterator<WeakReference<TTNetworkStateCallback>> it = this.mListeners.iterator();
            while (it.hasNext()) {
                TTNetworkStateCallback tTNetworkStateCallback = it.next().get();
                if (tTNetworkStateCallback == null) {
                    it.remove();
                } else {
                    tTNetworkStateCallback.onAccessChanged(0, i11, this.mCurrentAccessType);
                }
            }
            this.mLock.unlock();
        }
    }

    public int getCurrentAccessStrength() {
        return this.mCurrentAccessStrength;
    }

    public int getCurrentAccessType() {
        return this.mCurrentAccessType;
    }

    public String getSignalStrength() {
        if (this.mCurrentAccessType == 1000) {
            return "unknown";
        }
        int i10 = this.mCurrentAccessStrength;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return "unknown";
                    }
                    return "excellent";
                }
                return "good";
            }
            return Constants.MEDIUM;
        }
        return "weak";
    }

    public synchronized void init(Context context) {
        if (this.mInited != 0) {
            return;
        }
        this.mInited = 1;
        MyThread myThread = new MyThread(context, this);
        this.mThread = myThread;
        myThread.start();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!isInitialStickyBroadcast() && intent != null) {
            if ("android.net.wifi.RSSI_CHANGED".equals(intent.getAction()) && this.mCurrentAccessType == 0) {
                if (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 32L)) {
                    _handleSigStrengthChange(getWIFISignalStrength(context, intent));
                }
            } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            } else {
                TTVideoEngineLog.d(TAG, "network broadcast:" + intent.getAction());
                _handleNetworkChange(context);
            }
        }
    }

    public void registerListener(Context context) {
        try {
            TTVideoEngineLog.d(TAG, "enter start listen");
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addAction("android.net.wifi.RSSI_CHANGED");
            context.registerReceiver(this, intentFilter);
            updateAccessType(getNetworkType(context));
            if (this.mCurrentAccessType == 0) {
                this.mCurrentAccessStrength = getWIFISignalStrength(context, null);
            }
            TTPhoneStateListener tTPhoneStateListener = new TTPhoneStateListener(context, this);
            this.mPhoneStateListener = tTPhoneStateListener;
            if (!this.mIsWifiSensitiveMode) {
                tTPhoneStateListener.register(context);
            }
            this.mInited = 1;
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
            TTVideoEngineLog.d(TAG, "start listen network state failed");
        }
    }

    public void setIntValue(int i10, int i11) {
        if (i10 != 1) {
            if (i10 == 2) {
                PortraitNetworkScore.getInstance().setIntOption(3, i11);
                return;
            }
            return;
        }
        PortraitNetworkScore.getInstance().setIntOption(2, i11);
    }

    public void setStringValue(int i10, String str) {
        if (i10 == 3 || i10 == 4 || i10 == 5) {
            PortraitNetworkScore.getInstance().setStringOption(i10, str);
        }
    }

    public void startListen(WeakReference<TTNetworkStateCallback> weakReference) {
        if (weakReference == null) {
            return;
        }
        this.mLock.lock();
        this.mListeners.add(weakReference);
        this.mLock.unlock();
    }

    public void stopListen(WeakReference<TTNetworkStateCallback> weakReference) {
        if (weakReference == null) {
            return;
        }
        this.mLock.lock();
        this.mListeners.remove(weakReference);
        this.mLock.unlock();
    }

    public void unregisterListener(Context context) {
        if (context != null && this.mPhoneStateListener != null) {
            try {
                context.unregisterReceiver(this);
                this.mPhoneStateListener.unregister(context);
            } catch (Exception unused) {
                TTVideoEngineLog.e(TAG, "Receiver has been unregistered!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _handleNetworkChange(int i10) {
        int convertNetworkType = convertNetworkType(i10);
        TTVideoEngineLog.d(TAG, "network change to: " + convertNetworkType);
        updateAccessType(convertNetworkType);
    }
}
