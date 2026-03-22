package com.inmobi.media;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.CrashConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.inmobi.media.Cb;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
/* loaded from: classes5.dex */
public final class Cb implements N2 {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC2868a7 f23540a;

    /* renamed from: b  reason: collision with root package name */
    public static C2952f7 f23541b;

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicBoolean f23542c;

    /* renamed from: d  reason: collision with root package name */
    public static TelemetryConfig f23543d;

    /* renamed from: e  reason: collision with root package name */
    public static CrashConfig f23544e;

    /* renamed from: f  reason: collision with root package name */
    public static final ReentrantLock f23545f;

    /* renamed from: g  reason: collision with root package name */
    public static final Bb f23546g;

    /* renamed from: h  reason: collision with root package name */
    public static final ReferenceQueue f23547h;

    /* renamed from: i  reason: collision with root package name */
    public static final ConcurrentHashMap f23548i;

    /* renamed from: j  reason: collision with root package name */
    public static final AtomicBoolean f23549j;

    static {
        Cb cb2 = new Cb();
        f23540a = EnumC2868a7.f24482c;
        f23542c = new AtomicBoolean(false);
        f23545f = new ReentrantLock();
        f23546g = Bb.f23516a;
        f23547h = new ReferenceQueue();
        f23548i = new ConcurrentHashMap();
        f23549j = new AtomicBoolean(false);
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a("telemetry", Uc.b(), cb2);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig");
        f23543d = (TelemetryConfig) a10;
        Config a11 = M2.a("crashReporting", Uc.b(), cb2);
        Intrinsics.checkNotNull(a11, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig");
        f23544e = (CrashConfig) a11;
    }

    public static A5 a(String logType, String placementType, boolean z10) {
        Intrinsics.checkNotNullParameter(logType, "logType");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Context context = Uc.d();
        if (context != null) {
            try {
                b();
                TelemetryConfig.LoggingConfig loggingConfig = f23543d.getLoggingConfig();
                double b10 = b(logType, placementType, loggingConfig);
                EnumC2868a7 logLevel = a(logType, placementType, loggingConfig);
                int maxNoOfEntries = loggingConfig.getMaxNoOfEntries();
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                return new A5(context, b10, logLevel, !loggingConfig.getEnabled(), z10, maxNoOfEntries, loggingConfig.getExpiry() * 1000, false);
            } catch (Exception e10) {
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                return null;
            }
        }
        return null;
    }

    public static void b() {
        if (f23541b != null) {
            return;
        }
        ReentrantLock reentrantLock = f23545f;
        if (reentrantLock.tryLock()) {
            try {
                if (f23541b == null && f23542c.get()) {
                    Context d10 = Uc.d();
                    if (d10 != null) {
                        TelemetryConfig.LoggingConfig loggingConfig = f23543d.getLoggingConfig();
                        f23541b = new C2952f7(d10, loggingConfig.getLoggingUrl(), loggingConfig.getRetryInterval() * 1000, loggingConfig.getExpiry(), loggingConfig.getMaxRetries(), loggingConfig.getMaxNoOfEntries());
                    }
                    C2952f7 c2952f7 = f23541b;
                    if (c2952f7 != null) {
                        D5.a(c2952f7);
                    }
                }
                reentrantLock.unlock();
            } catch (Throwable th2) {
                f23545f.unlock();
                throw th2;
            }
        }
    }

    public static final void c() {
        WeakReference weakReference;
        InterfaceC3269z5 interfaceC3269z5;
        while (f23542c.get()) {
            Reference remove = f23547h.remove();
            ConcurrentHashMap concurrentHashMap = f23548i;
            if (CollectionsKt.g0(concurrentHashMap.keySet(), remove)) {
                Pair pair = (Pair) concurrentHashMap.get(remove);
                if (pair != null && (weakReference = (WeakReference) pair.f()) != null && (interfaceC3269z5 = (InterfaceC3269z5) weakReference.get()) != null) {
                    ((A5) interfaceC3269z5).a("ReferenceTracker", " reference " + ((String) pair.e()) + " reference is GCed.");
                }
                TypeIntrinsics.asMutableMap(concurrentHashMap).remove(remove);
            }
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                if (((WeakReference) ((Pair) entry.getValue()).f()).get() == null) {
                    f23548i.remove(entry.getKey());
                }
            }
        }
    }

    public static EnumC2868a7 a(String str, String str2, TelemetryConfig.LoggingConfig loggingConfig) {
        switch (str.hashCode()) {
            case -1396342996:
                if (str.equals("banner")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return AbstractC2885b7.a(loggingConfig.getBanner().getAb().getLogLevel());
                    }
                    return AbstractC2885b7.a(loggingConfig.getBanner().getNonAb().getLogLevel());
                }
                break;
            case -1052618729:
                if (str.equals("native")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return AbstractC2885b7.a(loggingConfig.getNative().getAb().getLogLevel());
                    }
                    return AbstractC2885b7.a(loggingConfig.getNative().getNonAb().getLogLevel());
                }
                break;
            case -171121434:
                if (str.equals("intNative")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return AbstractC2885b7.a(loggingConfig.getInt_native().getAb().getLogLevel());
                    }
                    return AbstractC2885b7.a(loggingConfig.getInt_native().getNonAb().getLogLevel());
                }
                break;
            case 93166550:
                if (str.equals("audio")) {
                    return AbstractC2885b7.a(loggingConfig.getAudio().getNonAb().getLogLevel());
                }
                break;
            case 1957200954:
                if (str.equals("intHtml")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return AbstractC2885b7.a(loggingConfig.getInt_html().getAb().getLogLevel());
                    }
                    return AbstractC2885b7.a(loggingConfig.getInt_html().getNonAb().getLogLevel());
                }
                break;
            case 1966366787:
                if (str.equals("getToken")) {
                    return AbstractC2885b7.a(loggingConfig.getGetToken().getLogLevel());
                }
                break;
        }
        return f23540a;
    }

    public static double b(String str, String str2, TelemetryConfig.LoggingConfig loggingConfig) {
        switch (str.hashCode()) {
            case -1396342996:
                if (str.equals("banner")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return loggingConfig.getBanner().getAb().getSamplePercent();
                    }
                    return loggingConfig.getBanner().getNonAb().getSamplePercent();
                }
                return 0.01d;
            case -1052618729:
                if (str.equals("native")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return loggingConfig.getNative().getAb().getSamplePercent();
                    }
                    return loggingConfig.getNative().getNonAb().getSamplePercent();
                }
                return 0.01d;
            case -171121434:
                if (str.equals("intNative")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return loggingConfig.getInt_native().getAb().getSamplePercent();
                    }
                    return loggingConfig.getInt_native().getNonAb().getSamplePercent();
                }
                return 0.01d;
            case 93166550:
                if (str.equals("audio")) {
                    return loggingConfig.getAudio().getNonAb().getSamplePercent();
                }
                return 0.01d;
            case 1957200954:
                if (str.equals("intHtml")) {
                    if (Intrinsics.areEqual(str2, "AB")) {
                        return loggingConfig.getInt_html().getAb().getSamplePercent();
                    }
                    return loggingConfig.getInt_html().getNonAb().getSamplePercent();
                }
                return 0.01d;
            case 1966366787:
                if (str.equals("getToken")) {
                    return loggingConfig.getGetToken().getSamplePercent();
                }
                return 0.01d;
            default:
                return 0.01d;
        }
    }

    public static void a(Object obj, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        try {
            if (f23543d.getLoggingConfig().getEnabled()) {
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).a("RemoteLoggerComponent", "starting to track reference of " + obj);
                }
                if (interfaceC3269z5 != null) {
                    f23548i.put(new PhantomReference(obj, f23547h), new Pair(obj.toString(), new WeakReference(interfaceC3269z5)));
                    if (f23549j.getAndSet(true)) {
                        return;
                    }
                    ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
                    Runnable runnable = new Runnable() { // from class: ub.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            Cb.c();
                        }
                    };
                    Intrinsics.checkNotNullParameter("RemoteLoggerComponent", ITTVideoEngineEventSource.KEY_TAG);
                    Intrinsics.checkNotNullParameter(runnable, "runnable");
                    try {
                        AbstractC3048l7.f24959b.submit(runnable);
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof TelemetryConfig) {
            f23543d = (TelemetryConfig) config;
            C2952f7 c2952f7 = f23541b;
            if (c2952f7 != null) {
                c2952f7.f24735g.set(true);
            }
            f23541b = null;
            Runnable runnable = new Runnable() { // from class: ub.l
                @Override // java.lang.Runnable
                public final void run() {
                    Cb.a();
                }
            };
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            Ie.f23745a.execute(runnable);
        } else if (config instanceof CrashConfig) {
            f23544e = (CrashConfig) config;
        }
    }

    public static final void a() {
        b();
    }
}
