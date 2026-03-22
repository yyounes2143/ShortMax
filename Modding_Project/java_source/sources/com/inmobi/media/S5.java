package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class S5 implements N2 {

    /* renamed from: a  reason: collision with root package name */
    public static final S5 f24132a;

    /* renamed from: b  reason: collision with root package name */
    public static final CrashConfig f24133b;

    /* renamed from: c  reason: collision with root package name */
    public static final H3 f24134c;

    /* renamed from: d  reason: collision with root package name */
    public static final E6 f24135d;

    static {
        S5 s52 = new S5();
        f24132a = s52;
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a("crashReporting", Uc.b(), s52);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig");
        CrashConfig crashConfig = (CrashConfig) a10;
        f24133b = crashConfig;
        long currentTimeMillis = System.currentTimeMillis();
        f24135d = new E6(crashConfig);
        Context d10 = Uc.d();
        if (d10 != null) {
            f24134c = new H3(d10, crashConfig, Uc.f());
        }
        if (crashConfig.getCrashConfig().getReportSessionInfo()) {
            C3092o3 type = C3092o3.f25087d;
            Intrinsics.checkNotNullParameter(type, "type");
            C6 a11 = V5.a();
            if (a11 != null) {
                a11.a(type.f25176a, currentTimeMillis, true);
            }
            C6 a12 = V5.a();
            if (a12 != null) {
                C6.a(a12, "s-cnt", 0, false, 4, (Object) null);
            }
        }
        if (AbstractC2939ea.f24660a.getCrashConfig().getReportOOMInfo()) {
            for (AbstractC3124q3 type2 : CollectionsKt.q(C3108p3.f25131d, C3076n3.f25049d)) {
                Intrinsics.checkNotNullParameter(type2, "type");
                C6 a13 = V5.a();
                if (a13 != null) {
                    a13.a(type2.f25176a, currentTimeMillis, true);
                }
            }
        }
    }

    public static void a(JSONObject payload, boolean z10, long j10) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (f24133b.getCrashConfig().getReportSessionInfo() && z10) {
            C3092o3 crashType = C3092o3.f25087d;
            Intrinsics.checkNotNullParameter(crashType, "crashType");
            C6 a10 = V5.a();
            if (a10 != null) {
                String key = crashType.f25176a;
                Intrinsics.checkNotNullParameter(key, "key");
                long j11 = a10.f23530a.getLong(key, 0L);
                String str = crashType.f25177b;
                if (j11 == 0) {
                    a10.a(str, j10, true);
                } else {
                    a10.a(str, j10 - j11, true);
                }
            }
            payload.put("crashFreeSessionLength", V5.a(crashType));
            C6 a11 = V5.a();
            int i10 = 0;
            if (a11 != null) {
                Intrinsics.checkNotNullParameter("s-cnt", "key");
                i10 = a11.f23530a.getInt("s-cnt", 0);
            }
            payload.put("crashFreeSessionCount", i10);
        }
    }

    public final void a() {
        C6 a10;
        if (f24133b.getCrashConfig().getReportSessionInfo() && (a10 = V5.a()) != null) {
            Intrinsics.checkNotNullParameter("s-cnt", "key");
            C6.a(a10, "s-cnt", a10.f23530a.getInt("s-cnt", 0) + 1, false, 4, (Object) null);
        }
        H3 h32 = f24134c;
        if (h32 != null) {
            for (G3 g32 : h32.f23695c) {
                g32.a();
            }
        }
        f24135d.c();
    }

    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof CrashConfig) {
            E6 e62 = f24135d;
            CrashConfig crashConfig = (CrashConfig) config;
            e62.getClass();
            Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
            e62.f23617a = crashConfig;
            U5 u52 = e62.f23619c;
            u52.getClass();
            Intrinsics.checkNotNullParameter(crashConfig, "config");
            u52.f24254a.f23986a = crashConfig.getCrashConfig().getSamplingPercent();
            u52.f24255b.f23986a = crashConfig.getCatchConfig().getSamplingPercent();
            u52.f24256c.f23986a = crashConfig.getANRConfig().getWatchdog().getSamplingPercent();
            u52.f24257d.f23986a = crashConfig.getANRConfig().getAppExitReason().getSamplingPercent();
            C3172t4 c3172t4 = e62.f23618b;
            if (c3172t4 != null) {
                C3125q4 eventConfig = crashConfig.getEventConfig();
                Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
                c3172t4.f25302i = eventConfig;
            }
            H3 h32 = f24134c;
            if (h32 != null) {
                Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
                h32.f23693a = crashConfig;
            }
        }
    }
}
