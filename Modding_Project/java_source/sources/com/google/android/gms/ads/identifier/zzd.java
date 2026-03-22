package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import java.time.Duration;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: com.google.android.gms:play-services-ads-identifier@@18.2.0 */
/* loaded from: classes4.dex */
public final class zzd {
    private static volatile zzd zza;
    private static final Object zzb = new Object();
    private static final Duration zzc;
    @Nullable
    private final TelemetryLoggingClient zzd;
    private final AtomicLong zze = new AtomicLong(-1);

    static {
        Duration ofMinutes;
        ofMinutes = Duration.ofMinutes(30L);
        zzc = ofMinutes;
    }

    private zzd(Context context, String str) {
        this.zzd = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("ads_identifier:api").build());
    }

    public static zzd zza(Context context) {
        if (zza == null) {
            synchronized (zzb) {
                try {
                    if (zza == null) {
                        zza = new zzd(context, "ads_identifier:api");
                    }
                } finally {
                }
            }
        }
        return zza;
    }

    public static /* synthetic */ void zzb(zzd zzdVar, long j10, Exception exc) {
        ConnectionResult connectionResult;
        Log.i("AdvertisingIdClient", "getting error as ".concat(String.valueOf(exc.getMessage())));
        if ((exc instanceof ApiException) && (connectionResult = ((ApiException) exc).getStatus().getConnectionResult()) != null && connectionResult.getErrorCode() == 24) {
            zzdVar.zze.set(j10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
        if ((r2 - r18.zze.get()) > r6) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzc(int r19, int r20, long r21, long r23, int r25) {
        /*
            r18 = this;
            r1 = r18
            monitor-enter(r18)
            java.util.concurrent.atomic.AtomicLong r0 = r1.zze     // Catch: java.lang.Throwable -> L79
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L79
            long r4 = r0.get()     // Catch: java.lang.Throwable -> L79
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L79
            r0.<init>()     // Catch: java.lang.Throwable -> L79
            java.lang.String r6 = "shouldSendLog "
            r0.append(r6)     // Catch: java.lang.Throwable -> L79
            r0.append(r4)     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L79
            java.lang.String r4 = "AdvertisingIdClient"
            android.util.Log.i(r4, r0)     // Catch: java.lang.Throwable -> L79
            java.util.concurrent.atomic.AtomicLong r0 = r1.zze     // Catch: java.lang.Throwable -> L79
            long r4 = r0.get()     // Catch: java.lang.Throwable -> L79
            r6 = -1
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L30
            goto L42
        L30:
            java.util.concurrent.atomic.AtomicLong r0 = r1.zze     // Catch: java.lang.Throwable -> L79
            long r4 = r0.get()     // Catch: java.lang.Throwable -> L79
            long r4 = r2 - r4
            java.time.Duration r0 = com.google.android.gms.ads.identifier.zzd.zzc     // Catch: java.lang.Throwable -> L79
            long r6 = com.applovin.shadow.okhttp3.c.a(r0)     // Catch: java.lang.Throwable -> L79
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto L7b
        L42:
            com.google.android.gms.common.internal.TelemetryLoggingClient r0 = r1.zzd     // Catch: java.lang.Throwable -> L79
            if (r0 != 0) goto L47
            goto L7b
        L47:
            com.google.android.gms.common.internal.TelemetryData r4 = new com.google.android.gms.common.internal.TelemetryData     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.common.internal.MethodInvocation r17 = new com.google.android.gms.common.internal.MethodInvocation     // Catch: java.lang.Throwable -> L79
            r14 = 0
            r15 = 0
            r6 = 35401(0x8a49, float:4.9607E-41)
            r8 = 0
            r13 = 0
            r5 = r17
            r7 = r20
            r9 = r21
            r11 = r23
            r16 = r25
            r5.<init>(r6, r7, r8, r9, r11, r13, r14, r15, r16)     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.common.internal.MethodInvocation[] r5 = new com.google.android.gms.common.internal.MethodInvocation[]{r17}     // Catch: java.lang.Throwable -> L79
            java.util.List r5 = java.util.Arrays.asList(r5)     // Catch: java.lang.Throwable -> L79
            r6 = 0
            r4.<init>(r6, r5)     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.tasks.Task r0 = r0.log(r4)     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.ads.identifier.zzc r4 = new com.google.android.gms.ads.identifier.zzc     // Catch: java.lang.Throwable -> L79
            r4.<init>()     // Catch: java.lang.Throwable -> L79
            r0.addOnFailureListener(r4)     // Catch: java.lang.Throwable -> L79
            monitor-exit(r18)
            return
        L79:
            r0 = move-exception
            goto L7d
        L7b:
            monitor-exit(r18)
            return
        L7d:
            monitor-exit(r18)     // Catch: java.lang.Throwable -> L79
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.zzd.zzc(int, int, long, long, int):void");
    }
}
