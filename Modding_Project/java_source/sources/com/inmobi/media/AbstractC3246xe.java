package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.xe  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3246xe {

    /* renamed from: a  reason: collision with root package name */
    public static final JSONObject f25438a = new JSONObject();

    /* renamed from: b  reason: collision with root package name */
    public static final LinkedHashSet f25439b = new LinkedHashSet();

    /* renamed from: c  reason: collision with root package name */
    public static Be f25440c;

    public static void a() {
        synchronized (f25438a) {
            f25440c = null;
            Unit unit = Unit.f60915a;
        }
    }

    public static boolean b() {
        boolean z10;
        synchronized (f25438a) {
            Be be2 = f25440c;
            if (be2 != null) {
                if (!be2.A.get()) {
                    z10 = true;
                }
            }
            z10 = false;
        }
        return z10;
    }

    public static void c() {
        Be be2;
        synchronized (f25438a) {
            try {
                if (b() && (be2 = f25440c) != null) {
                    be2.A.compareAndSet(false, true);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        d();
    }

    public static void d() {
        LinkedHashMap linkedHashMap = O2.f23923a;
        SignalsConfig.UnifiedIdServiceConfig unifiedIdServiceConfig = ((SignalsConfig) AbstractC3110p5.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getUnifiedIdServiceConfig();
        synchronized (f25438a) {
            String url = unifiedIdServiceConfig.getUrl();
            Config a10 = M2.a("signals", Uc.b(), null);
            Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
            Be be2 = new Be(url, new C3198ue(((SignalsConfig) a10).getIncludeIdParams()), Uc.b(), unifiedIdServiceConfig.getMaxRetries(), unifiedIdServiceConfig.getRetryInterval(), unifiedIdServiceConfig.getTimeout());
            f25440c = be2;
            F5 f52 = new F5(new C3262ye(be2, f25439b), be2);
            HashMap hashMap = new HashMap();
            Pd pd2 = Pd.f23988a;
            Pd.b("UnifiedIdNetworkCallRequested", hashMap, Td.f24224a);
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).submit(f52);
            Unit unit = Unit.f60915a;
        }
    }

    public static void e() {
        synchronized (f25438a) {
            try {
                Be be2 = f25440c;
                if (be2 != null) {
                    be2.A.compareAndSet(false, true);
                }
                f25440c = null;
                f25439b.clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
