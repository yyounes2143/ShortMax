package com.inmobi.media;

import android.os.SystemClock;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.nc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3085nc {

    /* renamed from: a  reason: collision with root package name */
    public final C2989hc f25062a;

    /* renamed from: b  reason: collision with root package name */
    public long f25063b;

    /* renamed from: c  reason: collision with root package name */
    public long f25064c;

    /* renamed from: d  reason: collision with root package name */
    public int f25065d;

    /* renamed from: e  reason: collision with root package name */
    public int f25066e;

    /* renamed from: f  reason: collision with root package name */
    public final AtomicInteger f25067f;

    /* renamed from: g  reason: collision with root package name */
    public final AtomicBoolean f25068g;

    /* renamed from: h  reason: collision with root package name */
    public long f25069h;

    public C3085nc(C2989hc renderViewMetaData) {
        int maxTemplateEvents;
        Intrinsics.checkNotNullParameter(renderViewMetaData, "renderViewMetaData");
        this.f25062a = renderViewMetaData;
        LinkedHashMap linkedHashMap = O2.f23923a;
        TelemetryConfig telemetryConfig = (TelemetryConfig) AbstractC3110p5.a("telemetry", "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig", null);
        C3069mc c3069mc = renderViewMetaData.f24825j;
        if (c3069mc != null) {
            maxTemplateEvents = c3069mc.f25044a;
        } else {
            maxTemplateEvents = telemetryConfig.getMaxTemplateEvents();
        }
        this.f25067f = new AtomicInteger(maxTemplateEvents);
        this.f25068g = new AtomicBoolean(false);
    }

    public final Map a() {
        String str = this.f25062a.f24826k;
        if (str == null) {
            str = "";
        }
        Map o10 = kotlin.collections.p0.o(ms.k.a("trigger", str), ms.k.a("plType", String.valueOf(this.f25062a.f24816a.m())), ms.k.a("plId", String.valueOf(this.f25062a.f24816a.l())), ms.k.a("adType", String.valueOf(this.f25062a.f24816a.b())), ms.k.a("markupType", this.f25062a.f24817b), ms.k.a("networkType", L3.q()), ms.k.a("retryCount", String.valueOf(this.f25062a.f24819d)), ms.k.a("creativeType", this.f25062a.f24820e), ms.k.a("adPosition", String.valueOf(this.f25062a.f24823h)), ms.k.a("isRewarded", String.valueOf(this.f25062a.f24822g)));
        if (this.f25062a.f24818c.length() > 0) {
            o10.put("metadataBlob", this.f25062a.f24818c);
        }
        return o10;
    }

    public final void b() {
        String a10 = a("WebViewLoadCalled");
        this.f25064c = SystemClock.elapsedRealtime();
        Map a11 = a();
        if (Intrinsics.areEqual(a10, "CompanionWebViewLoadCalled")) {
            long j10 = this.f25063b;
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            a11.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        } else {
            T0 t02 = this.f25062a.f24824i;
            if (t02 != null) {
                long j11 = t02.f24166a.f24230c;
                ScheduledExecutorService scheduledExecutorService2 = Ie.f23745a;
                a11.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j11));
            }
        }
        a11.put("creativeId", this.f25062a.f24821f);
        Pd pd2 = Pd.f23988a;
        Pd.b(a10, a11, Td.f24224a);
    }

    public final String a(String str) {
        if (Intrinsics.areEqual(this.f25062a.f24826k, DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
            return str;
        }
        switch (str.hashCode()) {
            case -1395724590:
                return !str.equals("PageStarted") ? str : "CompanionWebViewPageStarted";
            case -81019210:
                return !str.equals("FireAdFailed") ? str : "CompanionFireAdFailed";
            case 147127306:
                return !str.equals("FireAdReady") ? str : "CompanionFireAdReady";
            case 260281564:
                return !str.equals("WebViewLoadCalled") ? str : "CompanionWebViewLoadCalled";
            case 520950289:
                return !str.equals("WebViewLoadFinished") ? str : "CompanionWebViewLoadFinished";
            case 570988141:
                return !str.equals("RenderProcessResponsive") ? str : "RenderProcessResponsive";
            case 1001819046:
                return !str.equals("RenderProcessUnResponsive") ? str : "CompanionRenderProcessUnResponsive";
            default:
                return str;
        }
    }
}
