package com.inmobi.media;

import android.util.Base64;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.RootConfig;
import com.inmobi.media.AbstractC3103oe;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* renamed from: com.inmobi.media.oe  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3103oe {
    public static String a(Map map, String str) {
        HashMap hashMap;
        A5 a10 = Cb.a("getToken", "AB", false);
        long currentTimeMillis = System.currentTimeMillis();
        if (map != null) {
            Vc.a((String) map.get("tp"));
            Vc.b((String) map.get("tp-v"));
        }
        a();
        if (!Uc.q()) {
            if (a10 != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.oe", "LOG_TAG");
                a10.b("com.inmobi.media.oe", "InMobi SDK is not initialised. Cannot fetch a token.");
            }
            a(90, currentTimeMillis, a10);
            return null;
        }
        LinkedHashMap linkedHashMap = O2.f23923a;
        RootConfig rootConfig = (RootConfig) AbstractC3110p5.a("root", "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null);
        if (rootConfig.isMonetizationDisabled()) {
            a(2012, currentTimeMillis, a10);
            if (a10 != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.oe", "LOG_TAG");
                a10.b("com.inmobi.media.oe", "Monetization disabled. cannot provide token");
            }
            return null;
        }
        AdConfig adConfig = (AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        C3119pe c3119pe = new C3119pe(new C3198ue(adConfig.getIncludeIdParams()), a10, rootConfig, adConfig);
        c3119pe.C = map;
        c3119pe.B = str;
        HashMap k10 = kotlin.collections.p0.k(ms.k.a("h-user-agent", Uc.k()));
        if (k10 != null && (hashMap = c3119pe.f23895k) != null) {
            hashMap.putAll(k10);
        }
        c3119pe.f();
        if (c3119pe.f23888d) {
            a(currentTimeMillis, a10);
            if (a10 != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.oe", "LOG_TAG");
                a10.a("com.inmobi.media.oe", "get signals success");
            }
            String c10 = c3119pe.c();
            Charset charset = Charsets.UTF_8;
            byte[] bytes = c10.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            byte[] encode = Base64.encode(bytes, 8);
            Intrinsics.checkNotNullExpressionValue(encode, "encode(...)");
            return new String(encode, charset);
        }
        if (a10 != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.oe", "LOG_TAG");
            a10.b("com.inmobi.media.oe", "get Signals failed - GDPR Compliance");
        }
        a(2141, currentTimeMillis, a10);
        return null;
    }

    public static final void b() {
        HashMap k10 = kotlin.collections.p0.k(ms.k.a("networkType", L3.q()), ms.k.a("plType", "AB"));
        Pd pd2 = Pd.f23988a;
        Pd.b("AdGetSignalsCalled", k10, Td.f24224a);
    }

    public static void a(final int i10, final long j10, A5 a52) {
        if (a52 != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.oe", "LOG_TAG");
            a52.c("com.inmobi.media.oe", "submitAdGetSignalsFailed - errorCode - " + i10 + ", startTime - " + j10);
        }
        Uc.a(new Runnable() { // from class: ub.x5
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3103oe.a(j10, i10);
            }
        });
        if (a52 != null) {
            a52.a();
        }
    }

    public static final void a(long j10, int i10) {
        HashMap k10 = kotlin.collections.p0.k(ms.k.a("latency", Long.valueOf(System.currentTimeMillis() - j10)), ms.k.a("networkType", L3.q()), ms.k.a("errorCode", Integer.valueOf(i10)), ms.k.a("plType", "AB"));
        Pd pd2 = Pd.f23988a;
        Pd.b("AdGetSignalsFailed", k10, Td.f24224a);
    }

    public static void a(final long j10, A5 a52) {
        if (a52 != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.oe", "LOG_TAG");
            a52.c("com.inmobi.media.oe", "submitAdGetSignalsSucceeded - startTime - " + j10);
        }
        Uc.a(new Runnable() { // from class: ub.v5
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3103oe.a(j10);
            }
        });
        if (a52 != null) {
            a52.a();
        }
    }

    public static final void a(long j10) {
        HashMap k10 = kotlin.collections.p0.k(ms.k.a("latency", Long.valueOf(System.currentTimeMillis() - j10)), ms.k.a("networkType", L3.q()), ms.k.a("plType", "AB"));
        Pd pd2 = Pd.f23988a;
        Pd.b("AdGetSignalsSucceeded", k10, Td.f24224a);
    }

    public static void a() {
        Uc.a(new Runnable() { // from class: ub.w5
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3103oe.b();
            }
        });
    }
}
