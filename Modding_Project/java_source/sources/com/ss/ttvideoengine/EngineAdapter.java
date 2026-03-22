package com.ss.ttvideoengine;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.vodsetting.SettingsListener;
import com.bytedance.vodsetting.SettingsManager;
import com.pandora.ttlicense2.LicenseLogger;
import com.ss.ttvideoengine.EngineAdapter;
import com.ss.ttvideoengine.log.AppLogTOBVer2;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class EngineAdapter {
    private static final int GET_DEVICE_ID_INTERVAL = 100;
    private static final int GET_DEVICE_ID_TIMEOUT = 2000;
    private static final String TAG = "EngineAdapter";
    private static boolean mInitSyncLicenseIdOnce = false;
    private static DeviceIdListener sDeviceIdListener;
    private static ScheduledExecutorService sGetDidExecutor;
    private static boolean sSettingEnable;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ss.ttvideoengine.EngineAdapter$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static class AnonymousClass1 implements LicenseLogger.EventListener {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onLicenseAddSuccess$0() {
            SettingsHelper.helper().config();
        }

        @Override // com.pandora.ttlicense2.LicenseLogger.EventListener
        public void onLicenseAddSuccess(String str) {
            EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.c
                @Override // java.lang.Runnable
                public final void run() {
                    EngineAdapter.AnonymousClass1.lambda$onLicenseAddSuccess$0();
                }
            });
        }
    }

    /* loaded from: classes6.dex */
    public interface DeviceIdListener {
        void onDeviceIdUpdate(String str);
    }

    private static synchronized boolean checkDeviceId() {
        synchronized (EngineAdapter.class) {
            try {
                String deviceId = AppInfo.getDeviceId();
                if (!TextUtils.isEmpty(deviceId)) {
                    DeviceIdListener deviceIdListener = sDeviceIdListener;
                    if (deviceIdListener != null) {
                        deviceIdListener.onDeviceIdUpdate(deviceId);
                    }
                    updateSettingsWithDid();
                    closeDeviceIdExecutor();
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static synchronized void closeDeviceIdExecutor() {
        synchronized (EngineAdapter.class) {
            if (sGetDidExecutor != null) {
                TTVideoEngineLog.d(TAG, "closeDeviceIdExecutor");
                sGetDidExecutor.shutdownNow();
                sGetDidExecutor = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void initDefaultEventUploader() {
        boolean isAppLogVer2Exist = AppLogTOBVer2.isAppLogVer2Exist();
        TTVideoEngineLog.d(TAG, "_setDefaultEventUploader hasAppLogLib = " + isAppLogVer2Exist);
        if (isAppLogVer2Exist) {
            TTVideoEngine.setVideoEventUploader(AppLogTOBVer2.instance());
            DataLoaderHelper.getDataLoader().setUploader(AppLogTOBVer2.instance());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void initSettings(Context context) {
        if (!TextUtils.equals(BaseAppInfo.mRegion, "china") && !TextUtils.equals(BaseAppInfo.mRegion, AppInfo.APP_REGION_MYA)) {
            if (TextUtils.equals(BaseAppInfo.mRegion, AppInfo.APP_REGION_SINGAPORE)) {
                SettingsHelper.helper().setRegionHost(117, nc.a.e());
            } else {
                throw new IllegalArgumentException("Unsupported SDK region! Engine:CN TTSDK:GLOBAL");
            }
        } else {
            SettingsHelper.helper().setRegionHost(116, nc.a.e());
        }
        SettingsHelper.helper().setContext(context.getApplicationContext());
        SettingsHelper.helper().addListener(new SettingsListener() { // from class: com.ss.ttvideoengine.b
            @Override // com.bytedance.vodsetting.SettingsListener
            public final void onNotify(String str, int i10) {
                EngineAdapter.lambda$initSettings$0(str, i10);
            }
        });
        loadSettings();
        if (!mInitSyncLicenseIdOnce) {
            mInitSyncLicenseIdOnce = true;
            LicenseLogger.init(context);
            LicenseLogger.getInstance().addEventListener(new AnonymousClass1());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initSettings$0(String str, int i10) {
        int i11;
        if (TextUtils.equals("vod", str)) {
            int maxRetryTimeOut = InfoWrapper.maxRetryTimeOut();
            TTVideoEngineLog.d(TAG, "set maxRetryTimeOut " + maxRetryTimeOut);
            TTHTTPNetwork.setMaxRetryTimeOut(maxRetryTimeOut);
            if (maxRetryTimeOut > 0) {
                i11 = 1;
            } else {
                i11 = 0;
            }
            TTHTTPNetwork.isRetryWhenFail(i11);
            StrategyManager.instance().updateSettings();
            InfoWrapper.printSettings();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startDeviceIdExecutor$1(long j10) {
        TTVideoEngineLog.d(TAG, "deviceId executor check");
        if (!checkDeviceId() && System.currentTimeMillis() - j10 > 2000) {
            TTVideoEngineLog.d(TAG, "deviceId executor timeout");
            SettingsHelper.helper().config().load(SettingsHelper.MODULE_ALL);
            closeDeviceIdExecutor();
        }
    }

    private static void loadSettings() {
        SettingsHelper.helper().setEnableNotLoad(1);
        if (!AppLogTOBVer2.isAppLogVer2Exist()) {
            TTVideoEngineLog.d(TAG, "applog not exist");
            SettingsHelper.helper().config().load(SettingsHelper.MODULE_ALL);
        } else if (!TextUtils.isEmpty(AppInfo.getDeviceId())) {
            TTVideoEngineLog.d(TAG, "deviceId exist");
            updateSettingsWithDid();
        } else {
            JSONObject jsonObject = SettingsHelper.helper().getJsonObject(SettingsHelper.MODULE_VOD);
            if (jsonObject == null || jsonObject.length() == 0) {
                TTVideoEngineLog.d(TAG, "settings no cache");
                SettingsHelper.helper().config().load(SettingsHelper.MODULE_ALL);
            }
            startDeviceIdExecutor();
        }
    }

    public static void setsDeviceIdListener(DeviceIdListener deviceIdListener) {
        sDeviceIdListener = deviceIdListener;
    }

    private static synchronized void startDeviceIdExecutor() {
        synchronized (EngineAdapter.class) {
            final long currentTimeMillis = System.currentTimeMillis();
            if (sGetDidExecutor != null) {
                return;
            }
            ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            sGetDidExecutor = newSingleThreadScheduledExecutor;
            newSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.ss.ttvideoengine.a
                @Override // java.lang.Runnable
                public final void run() {
                    EngineAdapter.lambda$startDeviceIdExecutor$1(currentTimeMillis);
                }
            }, 0L, 100L, TimeUnit.MILLISECONDS);
        }
    }

    public static void updateDeviceId() {
        TTVideoEngineLog.d(TAG, "updateDeviceId:" + AppInfo.getDeviceId());
        checkDeviceId();
    }

    private static synchronized void updateSettingsWithDid() {
        synchronized (EngineAdapter.class) {
            if (sSettingEnable) {
                return;
            }
            sSettingEnable = true;
            SettingsHelper.helper().config().load(SettingsHelper.MODULE_ALL);
            SettingsManager.shareSettings().refresh();
        }
    }
}
