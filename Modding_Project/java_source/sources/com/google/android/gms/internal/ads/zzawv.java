package com.google.android.gms.internal.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzawv implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzawx zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzawv(zzawx zzawxVar, int i10, boolean z10) {
        this.zza = i10;
        this.zzb = zzawxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzatq zzatqVar;
        int i10 = this.zza;
        zzawx zzawxVar = this.zzb;
        if (i10 > 0) {
            try {
                Thread.sleep(i10 * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            Context context = zzawxVar.zza;
            zzatqVar = zzfoq.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
        } catch (Throwable unused2) {
            zzatqVar = null;
        }
        zzawx zzawxVar2 = this.zzb;
        zzawxVar2.zzk = zzatqVar;
        int i11 = this.zza;
        if (i11 < 4) {
            if (zzatqVar == null || !zzatqVar.zzaf() || zzatqVar.zzg().equals("0000000000000000000000000000000000000000000000000000000000000000") || !zzatqVar.zzag() || !zzatqVar.zzf().zzg() || zzatqVar.zzf().zza() == -2) {
                zzawxVar2.zzn(i11 + 1, true);
            }
        }
    }
}
