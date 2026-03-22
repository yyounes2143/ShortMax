package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.LinkedHashMap;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzegz implements zzgdj {
    final /* synthetic */ long zza;
    final /* synthetic */ zzfcd zzb;
    final /* synthetic */ zzfca zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzfju zze;
    final /* synthetic */ zzfcn zzf;
    final /* synthetic */ zzehb zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzegz(zzehb zzehbVar, long j10, zzfcd zzfcdVar, zzfca zzfcaVar, String str, zzfju zzfjuVar, zzfcn zzfcnVar) {
        this.zza = j10;
        this.zzb = zzfcdVar;
        this.zzc = zzfcaVar;
        this.zzd = str;
        this.zze = zzfjuVar;
        this.zzf = zzfcnVar;
        Objects.requireNonNull(zzehbVar);
        this.zzg = zzehbVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgdj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Throwable r17) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzegz.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzb(Object obj) {
        Clock clock;
        boolean z10;
        boolean z11;
        boolean zzq;
        LinkedHashMap linkedHashMap;
        zzedr zzedrVar;
        LinkedHashMap linkedHashMap2;
        zzehd zzehdVar;
        zzehb zzehbVar = this.zzg;
        clock = zzehbVar.zza;
        long elapsedRealtime = clock.elapsedRealtime() - this.zza;
        synchronized (zzehbVar) {
            try {
                z10 = zzehbVar.zze;
                if (z10) {
                    zzehdVar = zzehbVar.zzb;
                    zzehdVar.zza(this.zzb, this.zzc, 0, null, elapsedRealtime);
                }
                z11 = zzehbVar.zzg;
                if (z11) {
                    return;
                }
                zzfca zzfcaVar = this.zzc;
                zzq = zzehbVar.zzq(zzfcaVar);
                if (zzq) {
                    linkedHashMap2 = zzehbVar.zzd;
                    ((zzeha) linkedHashMap2.get(zzfcaVar)).zzd = elapsedRealtime;
                } else {
                    linkedHashMap = zzehbVar.zzd;
                    linkedHashMap.put(zzfcaVar, new zzeha(this.zzd, zzfcaVar.zzaf, 0, elapsedRealtime, null));
                }
                zzedrVar = zzehbVar.zzf;
                zzedrVar.zzg(zzfcaVar, elapsedRealtime, null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
