package com.bytedance.sdk.openadsdk.api.init;

import android.app.Application;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutManager;
import android.os.Build;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.WebView;
import androidx.core.content.pm.m0;
import androidx.core.content.pm.x0;
import com.bytedance.sdk.component.jFA.Pfn;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.component.oJ;
import com.bytedance.sdk.component.so.kkU;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.ZYk;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.component.utils.so;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.api.bidding.PAGBiddingRequest;
import com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.factory.SDKTypeConfig;
import com.bytedance.sdk.openadsdk.cFZ.ZYk;
import com.bytedance.sdk.openadsdk.cY.oJ;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.awB;
import com.bytedance.sdk.openadsdk.core.nke;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.settings.jFA;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.BTZ;
import com.bytedance.sdk.openadsdk.ex.oJ.ex;
import com.bytedance.sdk.openadsdk.jr.ZYk.cFZ;
import com.bytedance.sdk.openadsdk.multipro.tB;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.Ry;
import com.bytedance.sdk.openadsdk.utils.eZI;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PAGSdk {
    public static final int INIT_LOCAL_FAIL_CODE = 4000;
    private static long oJ;

    /* loaded from: classes3.dex */
    public interface PAGInitCallback {
        void fail(int i10, String str);

        void success();
    }

    static {
        try {
            oJ.oJ(new oJ.InterfaceC0177oJ() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.1
                @Override // com.bytedance.sdk.component.oJ.InterfaceC0177oJ
                public ExecutorService getExecutorService() {
                    return ofl.Pfn();
                }

                @Override // com.bytedance.sdk.component.oJ.InterfaceC0177oJ
                public HandlerThread getSafeHandlerThread(String str, int i10) {
                    return so.oJ(str, i10);
                }
            });
            ofl.oJ(new com.bytedance.sdk.component.so.so("tt_init_memory_data") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(false);
                    PAGInitHelper.initAPM();
                    PAGInitHelper.initMemoryData();
                }
            });
            WcQ.oJ(System.currentTimeMillis());
            WcQ.ZYk();
            ba.setWebViewProvider(new ba.tB() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.3
                @Override // com.bytedance.sdk.component.jFA.ba.tB
                public WebView createWebView(Context context, AttributeSet attributeSet, int i10) {
                    if (!(context instanceof MutableContextWrapper)) {
                        context = context.getApplicationContext();
                    }
                    try {
                        if (i10 == 0) {
                            return new Pfn(context, attributeSet);
                        }
                        return new Pfn(context, attributeSet, i10);
                    } catch (Exception unused) {
                        if (i10 == 0) {
                            return new Pfn(context, attributeSet);
                        }
                        return new Pfn(context, attributeSet, i10);
                    }
                }
            });
        } catch (Throwable th2) {
            Log.i("TTAD.PAGSdk", th2.getMessage());
        }
        oJ = 0L;
    }

    private static void Pfn(Context context, InitConfig initConfig) {
        if (!jFA.oJ()) {
            return;
        }
        com.bytedance.sdk.component.so.ba.tB(-1);
        com.bytedance.sdk.component.so.Pfn.oJ(new kkU() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.7
            @Override // com.bytedance.sdk.component.so.kkU
            public com.bytedance.sdk.component.so.jFA createThreadFactory(int i10, String str) {
                return new com.bytedance.sdk.component.so.jFA(i10, str) { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.7.1
                    @Override // com.bytedance.sdk.component.so.jFA, java.util.concurrent.ThreadFactory
                    public Thread newThread(Runnable runnable) {
                        if (com.bytedance.sdk.component.so.jFA.sCrashHappened) {
                            return null;
                        }
                        int Dex = PiB.ib().Dex();
                        if (Dex >= -524288 && Dex < 0) {
                            Thread thread = new Thread(this.oJ, runnable, this.ZYk, Dex);
                            if (thread.isDaemon()) {
                                thread.setDaemon(false);
                            }
                            int i11 = this.tB;
                            if (i11 > 10 || i11 <= 0) {
                                this.tB = 5;
                            }
                            thread.setPriority(this.tB);
                            return thread;
                        }
                        return super.newThread(runnable);
                    }
                };
            }
        });
        tB.oJ(context);
        ZYk.tB();
        WcQ.ZYk.set(true);
        try {
            com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().oJ(new com.bytedance.sdk.openadsdk.jFA.oJ());
        } catch (Exception e10) {
            QSm.tB("TTAD.PAGSdk", e10.getMessage());
        }
        tB(initConfig);
        tB(context, initConfig);
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(context, null);
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(2);
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(initConfig.isSupportMultiProcess());
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ba());
    }

    public static void addPAGInitCallback(PAGInitCallback pAGInitCallback) {
        if (pAGInitCallback == null || WcQ.ex() != 0) {
            return;
        }
        PAGInitHelper.CALLBACK_LIST.add(pAGInitCallback);
    }

    private static void ba(final Context context, final InitConfig initConfig) {
        SystemClock.elapsedRealtime();
        ofl.oJ(new com.bytedance.sdk.component.so.so("init_sync") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.8
            @Override // java.lang.Runnable
            public void run() {
                WcQ.oJ(initConfig.getData());
                com.bytedance.sdk.openadsdk.oq.oJ.oJ(context, initConfig.getAppId());
                com.bytedance.sdk.openadsdk.oq.oJ.oJ();
                com.bytedance.sdk.openadsdk.si.tB.oJ();
                com.bytedance.sdk.openadsdk.si.tB.ZYk();
                new eZI();
                com.bytedance.sdk.component.adexpress.oJ.ZYk.ba.oJ(com.bytedance.sdk.openadsdk.utils.QSm.oJ() * 10);
                ex.oJ(context, initConfig.isSupportMultiProcess());
                awB.oJ().ZYk();
                com.bytedance.sdk.openadsdk.core.jFA.tB.oJ();
                com.bytedance.sdk.openadsdk.cY.oJ.oJ(new oJ.InterfaceC0193oJ() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.8.1
                    public void onGdprChanged(int i10) {
                        PAGConfig.setGDPRConsent(i10);
                    }
                });
                PiB.ex = PiB.tB(context);
                cFZ.ZYk();
                com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ(si.ex().NO());
                com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ(CacheDirFactory.getICacheDir(0));
                com.bytedance.sdk.openadsdk.core.settings.ba ex = si.ex();
                if (!ex.nQI()) {
                    synchronized (ex) {
                        try {
                            if (!ex.nQI()) {
                                ex.ZYk();
                                ex.tb();
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                DeviceUtils.dLZ();
                PAGInitHelper.maybeAsyncInitTask(context);
                PAGSdk.getBiddingToken();
                com.bytedance.sdk.component.so.ba.oJ(true);
                com.bytedance.sdk.component.so.ba.oJ(new com.bytedance.sdk.openadsdk.awB.ZYk.oJ());
                DeviceUtils.oJ(context);
                DeviceUtils.dLZ(context);
                DeviceUtils.BTZ(context);
                com.bytedance.sdk.openadsdk.awB.oJ.oJ();
                com.bytedance.sdk.openadsdk.core.settings.ex.oJ();
                com.bytedance.sdk.openadsdk.awB.tB.ex();
                HyG.jFA(context);
                com.bytedance.sdk.openadsdk.ex.tB.oJ();
                PAGSdk.tB();
                com.bytedance.sdk.openadsdk.core.jFA.tB.ZYk();
                com.bytedance.sdk.openadsdk.core.ex.oJ.oJ().ZYk();
                com.bytedance.sdk.component.so.tB.tB.oJ(WcQ.ZYk());
                com.bytedance.sdk.component.utils.ZYk.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.8.2
                    @Override // com.bytedance.sdk.component.utils.ZYk.oJ
                    public ExecutorService getAsyncStartActivityThreadPool() {
                        return ofl.jFA();
                    }

                    @Override // com.bytedance.sdk.component.utils.ZYk.oJ
                    public boolean isEnableAsyncStartActivity() {
                        if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("start_activity_async", 0) != 1) {
                            return false;
                        }
                        return true;
                    }

                    @Override // com.bytedance.sdk.component.utils.ZYk.oJ
                    public boolean isStartActivityBySubThread() {
                        if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("start_act_asy", 0) != 1) {
                            return false;
                        }
                        return true;
                    }
                });
                HyG.tB();
            }
        });
    }

    public static void closeMultiWebViewFileLock() {
        tB.oJ();
    }

    private static void ex(Context context, InitConfig initConfig) {
        if (!TextUtils.isEmpty(initConfig.getPackageName())) {
            cY.oJ(initConfig.getPackageName());
            com.bytedance.adsdk.ugeno.cFZ.ex.oJ(initConfig.getPackageName());
        } else {
            cY.oJ((String) null);
            com.bytedance.adsdk.ugeno.cFZ.ex.oJ((String) null);
        }
        si.ZYk(context);
        if (initConfig.isSupportMultiProcess()) {
            com.bytedance.sdk.openadsdk.multipro.ZYk.oJ();
        } else {
            com.bytedance.sdk.openadsdk.multipro.ZYk.ZYk();
        }
        BTZ.oJ();
        com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ(context);
    }

    public static String getApplicationName(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static void getBiddingToken(final Context context, final PAGBiddingRequest pAGBiddingRequest, final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            biddingTokenCallback.onBiddingTokenCollected(null);
        } else {
            ofl.Pfn(new com.bytedance.sdk.component.so.so("getBiddingToken") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.13
                @Override // java.lang.Runnable
                public void run() {
                    si.ZYk(context);
                    biddingTokenCallback.onBiddingTokenCollected(PAGSdk.ZYk(pAGBiddingRequest));
                    com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(false);
                }
            });
        }
    }

    public static String getSDKVersion() {
        if (nke.oJ() != null) {
            return nke.oJ().tB();
        }
        return "";
    }

    public static void init(final Context context, final PAGConfig pAGConfig, final PAGInitCallback pAGInitCallback) {
        WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.12
            @Override // java.lang.Runnable
            public void run() {
                PAGSdk.ZYk(context, pAGConfig, pAGInitCallback);
            }
        });
        WcQ.so();
    }

    public static boolean isInitSuccess() {
        if (WcQ.ex() == 1) {
            return true;
        }
        return false;
    }

    public static boolean onlyVerityPlayable(String str, int i10, String str2, String str3, String str4) {
        if (nke.oJ() != null) {
            return nke.oJ().oJ(str, i10, str2, str3, str4);
        }
        return false;
    }

    public static void setAabPackageName(String str) {
        if (!TextUtils.isEmpty(str)) {
            cY.oJ(str);
            com.bytedance.adsdk.ugeno.cFZ.ex.oJ(str);
        }
    }

    public static void setAdRevenue(JSONObject jSONObject) {
        if (jSONObject != null && si.ex().eZI() && isInitSuccess()) {
            com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ(jSONObject);
        }
    }

    private static void setSdkDisable(boolean z10) {
        com.bytedance.sdk.openadsdk.common.Pfn.oJ(z10);
    }

    private static void tB(Context context, InitConfig initConfig) {
        WcQ.oJ = true;
        nke.oJ().oJ(initConfig.getAppId()).ZYk(initConfig.getGdpr()).Pfn(initConfig.getPA()).ex(initConfig.getAppIconId()).oJ(initConfig.getTitleBarTheme()).tB(initConfig.getAdxId());
        com.bytedance.sdk.openadsdk.core.jFA.cY();
        if (initConfig instanceof PAGConfig) {
            nke.oJ().tB(((PAGConfig) initConfig).getDebugLog() ? 1 : 0);
        }
        try {
            if (ZYk(initConfig)) {
                nke.oJ().oJ();
                Ry.oJ();
            }
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.component.utils.jFA.oJ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(final Context context, final InitConfig initConfig, PAGInitCallback pAGInitCallback) {
        Context applicationContext;
        oJ = SystemClock.elapsedRealtime();
        si.ZYk(context);
        if (pAGInitCallback != null) {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                if (!list.contains(pAGInitCallback)) {
                    list.add(pAGInitCallback);
                    if (WcQ.ex() == 3) {
                        return;
                    }
                }
            }
        }
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            ZYk(-1, "DisableSDK is called, interrupt initialization");
        } else if (isInitSuccess()) {
            ex();
            tB(initConfig);
        } else if (initConfig == null) {
            ZYk(4000, "PAGConfig is null, please check.");
        } else {
            WcQ.oJ(3);
            int pa2 = initConfig.getPA();
            if (pa2 < -1 || pa2 > 1) {
                ZYk(10004, com.bytedance.sdk.openadsdk.core.so.oJ(10004));
            } else if (context == null) {
                ZYk(4000, "Context is null, please check. ");
            } else {
                if (!(context instanceof Application) && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                ex(context, initConfig);
                ApmHelper.initApm(context, initConfig);
                try {
                    com.bytedance.sdk.openadsdk.core.jFA.oJ(new com.bytedance.sdk.openadsdk.core.PiB() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.4
                        @Override // com.bytedance.sdk.openadsdk.core.PiB
                        public void fail(int i10, String str) {
                            PAGSdk.ZYk(i10, str);
                        }

                        public void success() {
                            PAGSdk.ex();
                        }
                    });
                    try {
                        cY.oJ(si.oJ(), "tt_ad_logo_txt");
                        if (cY.ex(context, "tt_ad_logo") == 0) {
                            oJ(initConfig, pAGInitCallback);
                        } else if (isInitSuccess()) {
                            if (pAGInitCallback != null) {
                                ex();
                            }
                        } else {
                            final com.bytedance.sdk.openadsdk.Pfn.oJ oJVar = new com.bytedance.sdk.openadsdk.Pfn.oJ();
                            SDKTypeConfig.setSdkTypeFactory(new ISDKTypeFactory() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.5
                                @Override // com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory
                                public IADTypeLoaderFactory createADTypeLoaderFactory(String str) {
                                    return com.bytedance.sdk.openadsdk.Pfn.oJ.this;
                                }
                            });
                            if (!initConfig.isSupportMultiProcess()) {
                                ZYk(context, initConfig);
                                return;
                            }
                            com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ().oJ(new com.bytedance.sdk.openadsdk.multipro.aidl.ZYk() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.6
                                @Override // com.bytedance.sdk.openadsdk.multipro.aidl.ZYk
                                public void onServiceConnected() {
                                    WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.6.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                            PAGSdk.ZYk(context, initConfig);
                                        }
                                    });
                                }
                            });
                            com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ().tB();
                        }
                    } catch (Throwable unused) {
                        oJ(initConfig, pAGInitCallback);
                    }
                } catch (Throwable unused2) {
                    ZYk(4000, "Internal Error, setting exception. ");
                }
            }
        }
    }

    public static void getBiddingToken(final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            biddingTokenCallback.onBiddingTokenCollected(null);
        } else {
            ofl.Pfn(new com.bytedance.sdk.component.so.so("getBiddingToken") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.14
                @Override // java.lang.Runnable
                public void run() {
                    biddingTokenCallback.onBiddingTokenCollected(PAGSdk.getBiddingToken());
                    com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(false);
                }
            });
        }
    }

    public static void getBiddingToken(final String str, final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            biddingTokenCallback.onBiddingTokenCollected(null);
        } else {
            ofl.Pfn(new com.bytedance.sdk.component.so.so("getBiddingToken") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.15
                @Override // java.lang.Runnable
                public void run() {
                    biddingTokenCallback.onBiddingTokenCollected(PAGSdk.getBiddingToken(str));
                    com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(false);
                }
            });
        }
    }

    private static void oJ(InitConfig initConfig, PAGInitCallback pAGInitCallback) {
        WcQ.oJ(2);
        if (pAGInitCallback != null) {
            if (initConfig instanceof PAGConfig) {
                ZYk(4000, "resources not found, if you use aab please call PAGConfig.setPackageName");
            } else {
                ZYk(4000, "resources not found, if you use aab please call TTAdConfig.setPackageName");
            }
        }
    }

    public static String getBiddingToken(Context context) {
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            return null;
        }
        si.ZYk(context);
        return getBiddingToken();
    }

    private static void oJ(final Context context, final boolean z10, final InitConfig initConfig, final long j10, final long j11) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ();
        com.bytedance.sdk.openadsdk.awB.tB.oJ("pangle_sdk_init", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.9
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    boolean tB = com.bytedance.sdk.openadsdk.core.jFA.ZYk().tB();
                    jSONObject.put("duration", j10);
                    jSONObject.put("sdk_init_time", j11);
                    jSONObject.put("is_async", true);
                    jSONObject.put("is_multi_process", initConfig.isSupportMultiProcess());
                    jSONObject.put("is_debug", PAGSdk.ZYk(initConfig));
                    jSONObject.put("is_use_texture_view", initConfig.isUseTextureView());
                    jSONObject.put("is_activate_init", tB);
                    jSONObject.put("minSdkVersion", HyG.cFZ(context));
                    jSONObject.put("targetSdkVersion", HyG.ba(context));
                    jSONObject.put("apm_is_init", ApmHelper.isIsInit());
                    jSONObject.put("is_success", z10);
                    com.bytedance.sdk.openadsdk.core.jFA.ZYk().ZYk(false);
                } catch (Exception e10) {
                    QSm.oJ("TTAD.PAGSdk", "run: ", e10);
                }
                return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("pangle_sdk_init").ZYk(jSONObject.toString());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ex() {
        WcQ.oJ(1);
        try {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                Iterator<PAGInitCallback> it = list.iterator();
                while (it.hasNext()) {
                    PAGInitCallback next = it.next();
                    if (next != null) {
                        it.remove();
                        next.success();
                    }
                }
            }
            com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.10
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    oJVar.ZYk("init");
                    return oJVar;
                }
            });
        } catch (Throwable th2) {
            QSm.tB(th2.getMessage(), new Object[0]);
        }
    }

    public static String getBiddingToken(Context context, String str) {
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            return null;
        }
        si.ZYk(context);
        return getBiddingToken(str);
    }

    public static String getBiddingToken(String str) {
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            return null;
        }
        if (si.oJ() == null || nke.oJ() == null) {
            return "";
        }
        PAGBiddingRequest pAGBiddingRequest = new PAGBiddingRequest();
        pAGBiddingRequest.setSlotId(str);
        return nke.oJ().oJ(pAGBiddingRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tB() {
        ShortcutManager a10;
        boolean isRequestPinShortcutSupported;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                Context oJ2 = si.oJ();
                if (oJ2 == null || (a10 = x0.a(oJ2.getSystemService(m0.a()))) == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.jFA ZYk = com.bytedance.sdk.openadsdk.core.jFA.ZYk();
                isRequestPinShortcutSupported = a10.isRequestPinShortcutSupported();
                ZYk.oJ(isRequestPinShortcutSupported);
            } catch (Throwable unused) {
            }
        }
    }

    private static void tB(InitConfig initConfig) {
        if (initConfig == null) {
            return;
        }
        if (!TextUtils.isEmpty(initConfig.getData())) {
            com.bytedance.sdk.openadsdk.core.jFA.ZYk().tB(initConfig.getData());
        }
        com.bytedance.sdk.openadsdk.core.jFA.ZYk().tB(ZYk(initConfig));
    }

    public static String getBiddingToken() {
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            return null;
        }
        return (si.oJ() == null || nke.oJ() == null) ? "" : nke.oJ().oJ((PAGBiddingRequest) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(Context context, InitConfig initConfig) {
        long elapsedRealtime;
        try {
        } catch (Throwable th2) {
            th2.getMessage();
            QSm.tB("TTAD.PAGSdk", th2.getMessage());
            ZYk(4000, th2.getMessage());
            elapsedRealtime = SystemClock.elapsedRealtime() - oJ;
        }
        if (isInitSuccess()) {
            ex();
            return;
        }
        Pfn(context, initConfig);
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - oJ;
        ex();
        ba(context, initConfig);
        elapsedRealtime = elapsedRealtime2;
        oJ(context, isInitSuccess(), initConfig, SystemClock.elapsedRealtime() - oJ, elapsedRealtime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean ZYk(InitConfig initConfig) {
        return ((PAGConfig) initConfig).getDebugLog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(int i10, String str) {
        WcQ.oJ(2);
        try {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                Iterator<PAGInitCallback> it = list.iterator();
                while (it.hasNext()) {
                    PAGInitCallback next = it.next();
                    if (next != null) {
                        it.remove();
                        next.fail(i10, str);
                    }
                }
                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.11
                    @Override // com.bytedance.sdk.openadsdk.si.ex
                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                        oJVar.ZYk("init");
                        return oJVar;
                    }
                });
            }
        } catch (Throwable th2) {
            QSm.tB(th2.getMessage(), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ZYk(PAGBiddingRequest pAGBiddingRequest) {
        if (com.bytedance.sdk.openadsdk.common.Pfn.oJ()) {
            return null;
        }
        return (si.oJ() == null || nke.oJ() == null) ? "" : nke.oJ().oJ(pAGBiddingRequest);
    }
}
