package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgcb;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzged extends zzgcb.zzf implements Runnable {
    private final Runnable zza;

    public zzged(Runnable runnable) {
        runnable.getClass();
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Throwable th2) {
            zzd(th2);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgcb
    public final String zza() {
        String obj = this.zza.toString();
        return "task=[" + obj + "]";
    }
}
