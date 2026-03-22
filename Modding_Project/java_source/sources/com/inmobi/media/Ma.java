package com.inmobi.media;

import com.adjust.sdk.Constants;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.inmobi.media.Ma;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Ma {

    /* renamed from: a  reason: collision with root package name */
    public final Pa f23855a;

    /* renamed from: b  reason: collision with root package name */
    public final ConcurrentHashMap f23856b;

    /* renamed from: c  reason: collision with root package name */
    public final AdConfig.PingsV2Config f23857c;

    /* renamed from: d  reason: collision with root package name */
    public final Ka f23858d;

    public Ma(Pa dao) {
        Intrinsics.checkNotNullParameter(dao, "dao");
        this.f23855a = dao;
        this.f23856b = new ConcurrentHashMap();
        LinkedHashMap linkedHashMap = O2.f23923a;
        AdConfig.PingsV2Config pingsV2Config = ((AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getPingsV2Config();
        this.f23857c = pingsV2Config;
        this.f23858d = new Ka(pingsV2Config);
    }

    public static void a(C3274za c3274za, short s10) {
        Unit unit;
        C2989hc c2989hc = c3274za.f25514k;
        if (c2989hc != null) {
            C3085nc c3085nc = new C3085nc(c2989hc);
            String priority = c3274za.f25508e;
            int i10 = c3274za.f25510g;
            Intrinsics.checkNotNullParameter(priority, "priority");
            Map a10 = c3085nc.a();
            a10.put("errorCode", Short.valueOf(s10));
            a10.put("trigger", priority);
            a10.put("retryCount", String.valueOf(i10));
            Oa.a("PingFailed", a10);
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            TelemetryConfig telemetryConfig = Oa.f23948a;
            Oa.a("PingFailed", kotlin.collections.p0.o(ms.k.a("trigger", c3274za.f25508e), ms.k.a("errorCode", Short.valueOf(s10)), ms.k.a("retryCount", Integer.valueOf(c3274za.f25510g))));
        }
    }

    public abstract void a(C3274za c3274za);

    public final void b(final C3274za ping) {
        Intrinsics.checkNotNullParameter(ping, "ping");
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).execute(new Runnable() { // from class: ub.g1
            @Override // java.lang.Runnable
            public final void run() {
                Ma.a(Ma.this, ping);
            }
        });
    }

    public final void b(Da pingResult, La la2) {
        Unit unit;
        Intrinsics.checkNotNullParameter(pingResult, "pingResult");
        Intrinsics.checkNotNullExpressionValue(Ma.class.getSimpleName(), "getSimpleName(...)");
        String str = pingResult.f23593a.f25504a;
        Objects.toString(la2);
        Unit unit2 = null;
        if (la2 != null) {
            C3274za ping = pingResult.f23593a;
            int i10 = pingResult.f23594b;
            long j10 = pingResult.f23596d;
            Ia ia2 = (Ia) la2;
            Intrinsics.checkNotNullParameter(ping, "ping");
            if (!ia2.f23742d.get()) {
                String str2 = ping.f25504a;
                if (Intrinsics.areEqual(Constants.HIGH, ping.f25508e) && ping.f25509f) {
                    String str3 = ping.f25505b;
                    Ha ha2 = ia2.f23739a;
                    if (ha2 != null) {
                        ((Yb) ha2).a(str3, i10, null, j10, ping.f25510g);
                    }
                }
                String priority = ping.f25508e;
                long currentTimeMillis = System.currentTimeMillis() - ping.f25512i;
                C3085nc c3085nc = ia2.f23740b;
                if (c3085nc != null) {
                    Intrinsics.checkNotNullParameter(priority, "priority");
                    Map a10 = c3085nc.a();
                    a10.put("trigger", priority);
                    a10.put("latency", Long.valueOf(currentTimeMillis));
                    Oa.a("PingSuccess", a10);
                }
            }
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            C3274za c3274za = pingResult.f23593a;
            C2989hc c2989hc = c3274za.f25514k;
            if (c2989hc != null) {
                C3085nc c3085nc2 = new C3085nc(c2989hc);
                String priority2 = c3274za.f25508e;
                long j11 = c3274za.f25512i;
                Intrinsics.checkNotNullParameter(priority2, "priority");
                Map a11 = c3085nc2.a();
                a11.put("trigger", priority2);
                a11.put("latency", Long.valueOf(j11));
                Oa.a("PingSuccess", a11);
                unit2 = Unit.f60915a;
            }
            if (unit2 == null) {
                TelemetryConfig telemetryConfig = Oa.f23948a;
                Oa.a("PingSuccess", kotlin.collections.p0.o(ms.k.a("trigger", c3274za.f25508e), ms.k.a("retryCount", Integer.valueOf(c3274za.f25510g))));
            }
        }
        Pa pa2 = this.f23855a;
        C3274za ping2 = pingResult.f23593a;
        Intrinsics.checkNotNullParameter(ping2, "ping");
        pa2.a("id = ?", new String[]{ping2.f25505b});
    }

    public final boolean a(String priority) {
        C3274za a10;
        Intrinsics.checkNotNullParameter(priority, "priority");
        if (T1.a(this.f23855a, null, null, 63) < this.f23857c.getMaxEntries()) {
            return true;
        }
        TelemetryConfig telemetryConfig = Oa.f23948a;
        Oa.a("PingDBMaxLimitReached", new LinkedHashMap());
        if (Intrinsics.areEqual(priority, Constants.HIGH)) {
            a10 = this.f23855a.a(Constants.NORMAL);
            if (a10 == null) {
                a10 = this.f23855a.a(Constants.HIGH);
            }
        } else {
            a10 = this.f23855a.a(Constants.NORMAL);
        }
        if (a10 != null) {
            a(a10, Intrinsics.areEqual(priority, Constants.HIGH) ? (short) 2259 : (short) 2260);
            return true;
        }
        return false;
    }

    public final void a(Da pingResult, La la2) {
        int maxRetries;
        Pair pair;
        Intrinsics.checkNotNullParameter(pingResult, "pingResult");
        C3274za ping = pingResult.f23593a;
        String str = ping.f25504a;
        int i10 = pingResult.f23594b;
        C3029k4 c3029k4 = EnumC3061m4.f25020b;
        if (i10 != -22) {
            C3045l4 c3045l4 = EnumC3093o4.f25088b;
            if (i10 != -22) {
                int i11 = ping.f25510g + 1;
                if (Intrinsics.areEqual(ping.f25508e, Constants.HIGH)) {
                    maxRetries = this.f23857c.getRetryConfig().getHigh().getMaxRetries();
                } else {
                    maxRetries = this.f23857c.getRetryConfig().getNormal().getMaxRetries();
                }
                if (i11 > maxRetries) {
                    Pa pa2 = this.f23855a;
                    Intrinsics.checkNotNullParameter(ping, "ping");
                    pa2.a("id = ?", new String[]{ping.f25505b});
                    a(pingResult.f23594b, pingResult.f23595c, (short) 2249, ping, pingResult.f23596d, la2);
                    return;
                }
                if (Intrinsics.areEqual(ping.f25508e, Constants.HIGH)) {
                    pair = new Pair(Long.valueOf(this.f23857c.getRetryConfig().getHigh().getRetryInterval()), Double.valueOf(this.f23857c.getRetryConfig().getHigh().getFactor()));
                } else {
                    pair = new Pair(Long.valueOf(this.f23857c.getRetryConfig().getNormal().getRetryInterval()), Double.valueOf(this.f23857c.getRetryConfig().getNormal().getFactor()));
                }
                long longValue = ((Number) pair.b()).longValue();
                double doubleValue = ((Number) pair.d()).doubleValue();
                Long valueOf = Long.valueOf(System.currentTimeMillis() + ((long) (Math.pow(doubleValue, i11) * longValue * 1000)));
                String url = ping.f25504a;
                String id2 = ping.f25505b;
                Map headers = ping.f25506c;
                boolean z10 = ping.f25507d;
                String priority = ping.f25508e;
                boolean z11 = ping.f25509f;
                String ownerId = ping.f25511h;
                long j10 = ping.f25512i;
                C2989hc c2989hc = ping.f25514k;
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(id2, "id");
                Intrinsics.checkNotNullParameter(headers, "headers");
                Intrinsics.checkNotNullParameter(priority, "priority");
                Intrinsics.checkNotNullParameter(ownerId, "ownerId");
                C3274za ping2 = new C3274za(url, id2, headers, z10, priority, z11, i11, ownerId, j10, valueOf, c2989hc);
                Pa pa3 = this.f23855a;
                Intrinsics.checkNotNullParameter(ping2, "ping");
                pa3.b(ping2, "id = ?", new String[]{id2});
                a(pingResult.f23594b, pingResult.f23595c, (short) 2247, ping, pingResult.f23596d, la2);
                return;
            }
        }
        Pa pa4 = this.f23855a;
        Intrinsics.checkNotNullParameter(ping, "ping");
        pa4.a("id = ?", new String[]{ping.f25505b});
        a(pingResult.f23594b, "Redirect URL is malformed", (short) 2258, pingResult.f23593a, pingResult.f23596d, la2);
    }

    public static void a(int i10, String str, short s10, C3274za ping, long j10, La la2) {
        Unit unit;
        int i11;
        Intrinsics.checkNotNullParameter(ping, "ping");
        Intrinsics.checkNotNullExpressionValue(Ma.class.getSimpleName(), "getSimpleName(...)");
        String str2 = ping.f25504a;
        Intrinsics.checkNotNullExpressionValue(Ma.class.getSimpleName(), "getSimpleName(...)");
        Objects.toString(la2);
        int i12 = ping.f25510g;
        if (la2 != null) {
            Ia ia2 = (Ia) la2;
            Intrinsics.checkNotNullParameter(ping, "ping");
            if (!ia2.f23742d.get()) {
                if (Intrinsics.areEqual(Constants.HIGH, ping.f25508e) && ping.f25509f && (i11 = ping.f25510g) < 1) {
                    String str3 = ping.f25505b;
                    Ha ha2 = ia2.f23739a;
                    if (ha2 != null) {
                        ((Yb) ha2).a(str3, i10, str, j10, i11);
                    }
                }
                String priority = ping.f25508e;
                C3085nc c3085nc = ia2.f23740b;
                if (c3085nc != null) {
                    if (priority == null) {
                        priority = "unknown";
                    }
                    Intrinsics.checkNotNullParameter(priority, "priority");
                    Map a10 = c3085nc.a();
                    a10.put("errorCode", (short) 2247);
                    a10.put("trigger", priority);
                    a10.put("retryCount", String.valueOf(i12));
                    Oa.a("PingFailed", a10);
                }
            }
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            a(ping, s10);
        }
    }

    public static final void a(Ma this$0, C3274za ping) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(ping, "$ping");
        this$0.a(ping);
    }
}
