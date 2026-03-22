package com.inmobi.media;

import android.os.SystemClock;
import androidx.webkit.ProxyConfig;
import com.adjust.sdk.Constants;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.inmobi.media.J6;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public final class J6 {
    public static void a(final F6 funnelState, R6 r62, Integer num, Function2 function2) {
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        if (r62 == null || funnelState.f23644c <= r62.f24065f) {
            return;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("plType", r62.f24060a.f24138c);
        linkedHashMap.put("impressionId", r62.f24060a.f24137b);
        linkedHashMap.put("plId", Long.valueOf(r62.f24060a.f24136a));
        linkedHashMap.put("adType", r62.f24060a.f24139d);
        linkedHashMap.put("markupType", r62.f24060a.f24140e);
        linkedHashMap.put("creativeType", r62.f24060a.f24141f);
        linkedHashMap.put("metadataBlob", r62.f24060a.f24142g);
        linkedHashMap.put("isRewarded", Boolean.valueOf(r62.f24060a.f24143h));
        String str = r62.f24066g;
        if (str == null) {
            str = r62.f24060a.f24144i;
        }
        linkedHashMap.put("trigger", str);
        linkedHashMap.put("urlType", r62.f24061b);
        if (num != null) {
            linkedHashMap.put("errorCode", num);
        }
        long j10 = r62.f24063d;
        if (j10 != 0) {
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            linkedHashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        }
        r62.f24065f = funnelState.f23644c;
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).submit(new Runnable() { // from class: ub.o0
            @Override // java.lang.Runnable
            public final void run() {
                J6.a(linkedHashMap, funnelState);
            }
        });
        if (r62.f24062c > ((TelemetryConfig.LandingPageConfig) r62.f24064e.getValue()).getMaxFunnelsToTrackPerAd() || function2 == null) {
            return;
        }
        String str2 = funnelState.f23643b;
        String str3 = r62.f24066g;
        if (str3 == null) {
            str3 = r62.f24060a.f24144i;
        }
        function2.invoke(str2, kotlin.collections.p0.m(ms.k.a("$OPENMODE", str3), ms.k.a("$URLTYPE", r62.f24061b)));
    }

    public static String a(String str) {
        return (str == null || str.length() == 0 || !StringsKt.b0(str, "://", false, 2, null)) ? "invalid" : StringsKt.T(str, "inmobideeplink://", true) ? "inmobideeplink" : StringsKt.T(str, "inmobinativebrowser://", true) ? "inmobinativebrowser" : StringsKt.T(str, "https://", true) ? "https" : StringsKt.T(str, "http://", true) ? ProxyConfig.MATCH_HTTP : StringsKt.T(str, "market://", true) ? "market" : Constants.DEEPLINK;
    }

    public static /* synthetic */ void a(F6 f62, R6 r62, Integer num, int i10) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        a(f62, r62, num, (Function2) null);
    }

    public static final void a(Map keyValueMap, F6 funnelState) {
        Intrinsics.checkNotNullParameter(keyValueMap, "$keyValueMap");
        Intrinsics.checkNotNullParameter(funnelState, "$funnelState");
        keyValueMap.put("networkType", L3.q());
        String str = funnelState.f23642a;
        Pd pd2 = Pd.f23988a;
        Pd.b(str, keyValueMap, Td.f24224a);
    }
}
