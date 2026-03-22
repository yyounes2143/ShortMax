package com.inmobi.media;

import android.net.Network;
import android.os.SystemClock;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.C3139r3;
import com.unity3d.services.UnityAdsConstants;
import java.util.LinkedHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.r3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3139r3 implements N2 {

    /* renamed from: a  reason: collision with root package name */
    public static AdConfig.CustomNetworkValidation f25224a;

    /* renamed from: b  reason: collision with root package name */
    public static volatile Network f25225b;

    /* renamed from: c  reason: collision with root package name */
    public static volatile boolean f25226c;

    /* renamed from: d  reason: collision with root package name */
    public static long f25227d;

    /* renamed from: e  reason: collision with root package name */
    public static long f25228e;

    /* renamed from: f  reason: collision with root package name */
    public static final AtomicBoolean f25229f;

    static {
        C3139r3 c3139r3 = new C3139r3();
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), c3139r3);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        f25224a = ((AdConfig) a10).getCustomNwValidation();
        f25226c = true;
        f25229f = new AtomicBoolean(false);
    }

    public static void a(final Network network) {
        long nonValidatedExpiry;
        long j10 = f25228e;
        if (j10 != 0) {
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            long elapsedRealtime = SystemClock.elapsedRealtime() - j10;
            AdConfig.CustomNetworkValidation customNetworkValidation = f25224a;
            if (elapsedRealtime < (customNetworkValidation != null ? customNetworkValidation.getRefreshDebounceTime() : 1000L)) {
                return;
            }
        }
        f25228e = SystemClock.elapsedRealtime();
        if (Intrinsics.areEqual(f25225b, network)) {
            long j11 = f25227d;
            ScheduledExecutorService scheduledExecutorService2 = Ie.f23745a;
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - j11;
            if (f25226c) {
                AdConfig.CustomNetworkValidation customNetworkValidation2 = f25224a;
                nonValidatedExpiry = customNetworkValidation2 != null ? customNetworkValidation2.getValidatedExpiry() : UnityAdsConstants.Timeout.INIT_TIMEOUT_MS;
            } else {
                AdConfig.CustomNetworkValidation customNetworkValidation3 = f25224a;
                nonValidatedExpiry = customNetworkValidation3 != null ? customNetworkValidation3.getNonValidatedExpiry() : 30000L;
            }
            if (elapsedRealtime2 <= nonValidatedExpiry) {
                return;
            }
        }
        if (f25229f.compareAndSet(false, true)) {
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).execute(new Runnable() { // from class: ub.f6
                @Override // java.lang.Runnable
                public final void run() {
                    C3139r3.b(network);
                }
            });
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:2|3)|(6:7|8|9|10|11|12)|19|9|10|11|12|(2:(1:17)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
        r1 = com.inmobi.media.S5.f24132a;
        r1 = new com.inmobi.media.C2947f2(r3);
        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, "event");
        com.inmobi.media.S5.f24135d.a(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(android.net.Network r3) {
        /*
            java.lang.String r0 = "$network"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            r0 = 0
            com.inmobi.commons.core.configs.AdConfig$CustomNetworkValidation r1 = com.inmobi.media.C3139r3.f25224a     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            if (r1 == 0) goto L23
            java.lang.String r1 = r1.getUrlDomain()     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            if (r1 == 0) goto L23
            java.net.InetAddress r1 = java.net.InetAddress.getByName(r1)     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            java.lang.String r2 = ""
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            r1 = r1 ^ 1
            goto L24
        L21:
            r3 = move-exception
            goto L47
        L23:
            r1 = r0
        L24:
            com.inmobi.media.C3139r3.f25226c = r1     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L2f
            com.inmobi.media.C3139r3.f25225b = r3     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L2f
            long r1 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L2f
            com.inmobi.media.C3139r3.f25227d = r1     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L2f
            goto L41
        L2f:
            r3 = move-exception
            com.inmobi.media.S5 r1 = com.inmobi.media.S5.f24132a     // Catch: java.lang.Throwable -> L21
            com.inmobi.media.f2 r1 = new com.inmobi.media.f2     // Catch: java.lang.Throwable -> L21
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L21
            java.lang.String r3 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)     // Catch: java.lang.Throwable -> L21
            com.inmobi.media.E6 r3 = com.inmobi.media.S5.f24135d     // Catch: java.lang.Throwable -> L21
            r3.a(r1)     // Catch: java.lang.Throwable -> L21
        L41:
            java.util.concurrent.atomic.AtomicBoolean r3 = com.inmobi.media.C3139r3.f25229f
            r3.set(r0)
            return
        L47:
            java.util.concurrent.atomic.AtomicBoolean r1 = com.inmobi.media.C3139r3.f25229f
            r1.set(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3139r3.b(android.net.Network):void");
    }

    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            f25224a = ((AdConfig) config).getCustomNwValidation();
        }
    }
}
