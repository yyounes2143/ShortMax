package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzavn implements Runnable {
    final /* synthetic */ zzavo zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavn(zzavo zzavoVar) {
        this.zza = zzavoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z10;
        zzawx zzawxVar;
        ConditionVariable conditionVariable2;
        zzavo zzavoVar = this.zza;
        if (zzavoVar.zzb == null) {
            conditionVariable = zzavo.zzc;
            synchronized (conditionVariable) {
                if (zzavoVar.zzb != null) {
                    return;
                }
                boolean z11 = false;
                try {
                    z10 = ((Boolean) zzbde.zzcO.zze()).booleanValue();
                } catch (IllegalStateException unused) {
                    z10 = false;
                }
                if (z10) {
                    try {
                        zzawxVar = this.zza.zze;
                        zzavo.zza = zzfqi.zzb(zzawxVar.zza, "ADSHIELD", null);
                    } catch (Throwable unused2) {
                    }
                }
                z11 = z10;
                this.zza.zzb = Boolean.valueOf(z11);
                conditionVariable2 = zzavo.zzc;
                conditionVariable2.open();
            }
        }
    }
}
