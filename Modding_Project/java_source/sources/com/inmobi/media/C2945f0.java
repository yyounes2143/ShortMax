package com.inmobi.media;

import android.app.Activity;
import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.C2945f0;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.f0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2945f0 implements N2 {

    /* renamed from: a  reason: collision with root package name */
    public static ScheduledExecutorService f24716a;

    /* renamed from: b  reason: collision with root package name */
    public static ExecutorService f24717b;

    /* renamed from: c  reason: collision with root package name */
    public static final ms.i f24718c;

    /* renamed from: d  reason: collision with root package name */
    public static C2912d0 f24719d;

    /* renamed from: e  reason: collision with root package name */
    public static AdConfig f24720e;

    static {
        C2945f0 c2945f0 = new C2945f0();
        f24718c = kotlin.c.b(C2929e0.f24615a);
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), c2945f0);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        f24720e = (AdConfig) a10;
    }

    public static void a(long j10, final C2911d execute) {
        Intrinsics.checkNotNullParameter(execute, "execute");
        ScheduledExecutorService scheduledExecutorService = f24716a;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(5, new K5("AdQualityComponent-aqHandler"));
            Intrinsics.checkNotNullExpressionValue(newScheduledThreadPool, "newScheduledThreadPool(...)");
            f24716a = newScheduledThreadPool;
        }
        ScheduledExecutorService scheduledExecutorService2 = f24716a;
        if (scheduledExecutorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("aqHandlerExecutor");
            scheduledExecutorService2 = null;
        }
        scheduledExecutorService2.schedule(new Runnable() { // from class: ub.f4
            @Override // java.lang.Runnable
            public final void run() {
                C2945f0.b(Function0.this);
            }
        }, j10, TimeUnit.MILLISECONDS);
    }

    public static final void b(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    public static void a(final C2894c execute) {
        Intrinsics.checkNotNullParameter(execute, "execute");
        ExecutorService executorService = f24717b;
        if (executorService == null || executorService.isShutdown()) {
            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new K5("AdQualityComponent-aqBeacon"));
            Intrinsics.checkNotNullExpressionValue(newSingleThreadExecutor, "newSingleThreadExecutor(...)");
            f24717b = newSingleThreadExecutor;
        }
        ExecutorService executorService2 = f24717b;
        if (executorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("aqBeaconExecutor");
            executorService2 = null;
        }
        executorService2.submit(new Runnable() { // from class: ub.g4
            @Override // java.lang.Runnable
            public final void run() {
                C2945f0.a(Function0.this);
            }
        });
    }

    public static final void a(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            AdConfig adConfig = (AdConfig) config;
            f24720e = adConfig;
            C2912d0 c2912d0 = f24719d;
            if (c2912d0 != null) {
                Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                c2912d0.f24566a = adConfig;
                if (!c2912d0.f24567b.get()) {
                    if (adConfig.getAdQuality().getEnabled()) {
                        c2912d0.a();
                    }
                } else if (!c2912d0.f24567b.get() || adConfig.getAdQuality().getEnabled()) {
                } else {
                    Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
                    Intrinsics.checkNotNullParameter("kill switch encountered. shut down.", "message");
                    Log.i("AdQualityBeaconExecutor", "kill switch encountered. shut down.");
                    c2912d0.f24567b.set(false);
                    ExecutorService executorService = f24717b;
                    if (executorService != null) {
                        executorService.shutdown();
                        try {
                            try {
                                executorService.shutdownNow();
                            } catch (InterruptedException unused) {
                                executorService.shutdownNow();
                                Thread.currentThread().interrupt();
                            }
                        } catch (Exception e10) {
                            Intrinsics.checkNotNullParameter("AdQualityComponent", ITTVideoEngineEventSource.KEY_TAG);
                            Intrinsics.checkNotNullParameter("shutdown fail", "message");
                            Log.e("AdQualityComponent", "shutdown fail", e10);
                            Thread.currentThread().interrupt();
                        }
                    }
                }
            }
        }
    }

    public static void a(Activity activity, GestureDetector$OnGestureListenerC2941ec renderView, String beaconUrl, boolean z10, JSONObject extras, Jb listener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3089o0 adQualityManager = renderView.getAdQualityManager();
        adQualityManager.getClass();
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C2912d0 c2912d0 = null;
        if (extras.length() > 0 && beaconUrl.length() > 0) {
            adQualityManager.f25082j = beaconUrl;
            adQualityManager.f25083k = extras;
            adQualityManager.a("report ad starting");
            if (z10) {
                adQualityManager.a("report ad capture");
                adQualityManager.a(activity, 0L, true, listener);
            } else {
                adQualityManager.a("report ad report");
                adQualityManager.a(new AdQualityResult("", null, beaconUrl, extras.toString()), false);
            }
        } else {
            listener.f23760a.c("window.mraidview.broadcastEvent('AdReportFailed')");
            adQualityManager.a((Exception) null, "Incorrect parameters for reporting. url - " + beaconUrl + " , extras - " + extras);
        }
        C2912d0 c2912d02 = f24719d;
        if (c2912d02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
        } else {
            c2912d0 = c2912d02;
        }
        c2912d0.getClass();
        Intrinsics.checkNotNullParameter(beaconUrl, "beaconUrl");
        Intrinsics.checkNotNullParameter(listener, "listener");
        c2912d0.f24569d.put(beaconUrl, new WeakReference(listener));
        String creativeID = renderView.getCreativeID();
        if (creativeID.length() > 0) {
            ms.i iVar = f24718c;
            if (((CopyOnWriteArrayList) iVar.getValue()).size() < f24720e.getAdReport().getCridls()) {
                ((CopyOnWriteArrayList) iVar.getValue()).add(creativeID);
            }
        }
    }

    public static void a(GestureDetector$OnGestureListenerC2941ec view, GestureDetector$OnGestureListenerC2941ec renderView, String beaconUrl, boolean z10, JSONObject extras, Jb listener) {
        Intrinsics.checkNotNullParameter(view, "adView");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3089o0 adQualityManager = renderView.getAdQualityManager();
        adQualityManager.getClass();
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(beaconUrl, "url");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C2912d0 c2912d0 = null;
        if (extras.length() > 0 && beaconUrl.length() > 0) {
            adQualityManager.f25082j = beaconUrl;
            adQualityManager.f25083k = extras;
            if (z10) {
                adQualityManager.a(view, 0L, true, listener);
            } else {
                adQualityManager.a(new AdQualityResult("", null, beaconUrl, extras.toString()), false);
            }
        } else {
            listener.f23760a.c("window.mraidview.broadcastEvent('AdReportFailed')");
            adQualityManager.a((Exception) null, "Incorrect parameters for reporting. url - " + beaconUrl + " , extras - " + extras);
        }
        C2912d0 c2912d02 = f24719d;
        if (c2912d02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
        } else {
            c2912d0 = c2912d02;
        }
        c2912d0.getClass();
        Intrinsics.checkNotNullParameter(beaconUrl, "beaconUrl");
        Intrinsics.checkNotNullParameter(listener, "listener");
        c2912d0.f24569d.put(beaconUrl, new WeakReference(listener));
        String creativeID = renderView.getCreativeID();
        if (creativeID.length() > 0) {
            ms.i iVar = f24718c;
            if (((CopyOnWriteArrayList) iVar.getValue()).size() < f24720e.getAdReport().getCridls()) {
                ((CopyOnWriteArrayList) iVar.getValue()).add(creativeID);
            }
        }
    }
}
