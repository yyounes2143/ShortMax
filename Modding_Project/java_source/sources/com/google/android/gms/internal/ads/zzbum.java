package com.google.android.gms.internal.ads;

import java.lang.Thread;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbum implements Thread.UncaughtExceptionHandler {
    final /* synthetic */ Thread.UncaughtExceptionHandler zza;
    final /* synthetic */ zzbun zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbum(zzbun zzbunVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zza = uncaughtExceptionHandler;
        Objects.requireNonNull(zzbunVar);
        this.zzb = zzbunVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th2) {
        try {
            try {
                this.zzb.zzg(thread, th2);
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zza;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th2);
                }
                throw th3;
            }
        } catch (Throwable unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("AdMob exception reporter failed reporting the exception.");
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zza;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(thread, th2);
        }
    }
}
