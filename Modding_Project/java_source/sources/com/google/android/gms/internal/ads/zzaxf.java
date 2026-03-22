package com.google.android.gms.internal.ads;

import android.app.AppOpsManager$OnOpActiveChangedListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaxf implements AppOpsManager$OnOpActiveChangedListener {
    final /* synthetic */ zzaxg zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxf(zzaxg zzaxgVar) {
        this.zza = zzaxgVar;
    }

    public final void onOpActiveChanged(String str, int i10, String str2, boolean z10) {
        long j10;
        long j11;
        long j12;
        if (z10) {
            zzaxg zzaxgVar = this.zza;
            zzaxgVar.zzb = System.currentTimeMillis();
            zzaxgVar.zze = true;
            return;
        }
        zzaxg zzaxgVar2 = this.zza;
        long currentTimeMillis = System.currentTimeMillis();
        j10 = zzaxgVar2.zzc;
        if (j10 > 0) {
            j11 = zzaxgVar2.zzc;
            if (currentTimeMillis >= j11) {
                j12 = zzaxgVar2.zzc;
                zzaxgVar2.zzd = currentTimeMillis - j12;
            }
        }
        zzaxgVar2.zze = false;
    }
}
