package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbcj;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfek implements zzfej {
    private final ConcurrentHashMap zza;
    private final zzfeq zzb;
    private final zzfem zzc = new zzfem();

    public zzfek(zzfeq zzfeqVar) {
        this.zza = new ConcurrentHashMap(zzfeqVar.zzd);
        this.zzb = zzfeqVar;
    }

    private final void zzf() {
        Parcelable.Creator<zzfeq> creator = zzfeq.CREATOR;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgB)).booleanValue()) {
            StringBuilder sb2 = new StringBuilder();
            zzfeq zzfeqVar = this.zzb;
            sb2.append(zzfeqVar.zzb);
            sb2.append(" PoolCollection");
            sb2.append(this.zzc.zzb());
            int i10 = 0;
            for (Map.Entry entry : this.zza.entrySet()) {
                i10++;
                sb2.append(i10);
                sb2.append(". ");
                sb2.append(entry.getValue());
                sb2.append("#");
                sb2.append(((zzfet) entry.getKey()).hashCode());
                sb2.append("    ");
                for (int i11 = 0; i11 < ((zzfei) entry.getValue()).zzb(); i11++) {
                    sb2.append("[O]");
                }
                for (int zzb = ((zzfei) entry.getValue()).zzb(); zzb < zzfeqVar.zzd; zzb++) {
                    sb2.append("[ ]");
                }
                sb2.append("\n");
                sb2.append(((zzfei) entry.getValue()).zzg());
                sb2.append("\n");
            }
            while (i10 < zzfeqVar.zzc) {
                i10++;
                sb2.append(i10);
                sb2.append(".\n");
            }
            String sb3 = sb2.toString();
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze(sb3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfej
    public final zzfeq zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfej
    @Nullable
    public final synchronized zzfes zzb(zzfet zzfetVar) {
        zzfes zzfesVar;
        try {
            zzfei zzfeiVar = (zzfei) this.zza.get(zzfetVar);
            if (zzfeiVar != null) {
                zzfesVar = zzfeiVar.zze();
                if (zzfesVar == null) {
                    this.zzc.zze();
                }
                zzffg zzf = zzfeiVar.zzf();
                if (zzfesVar != null) {
                    zzbcj.zzb.zzc zzd = zzbcj.zzb.zzd();
                    zzbcj.zzb.zza.C0297zza zza = zzbcj.zzb.zza.zza();
                    zza.zzf(zzbcj.zzb.zzd.IN_MEMORY);
                    zzbcj.zzb.zze.zza zzb = zzbcj.zzb.zze.zzb();
                    zzb.zzd(zzf.zza);
                    zzb.zze(zzf.zzb);
                    zza.zzg(zzb);
                    zzd.zzd(zza);
                    zzfesVar.zza.zzb().zzc().zzi(zzd.zzbr());
                }
                zzf();
            } else {
                this.zzc.zzf();
                zzf();
                zzfesVar = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return zzfesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfej
    @Deprecated
    public final zzfet zzc(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, com.google.android.gms.ads.internal.client.zzx zzxVar) {
        zzfeq zzfeqVar = this.zzb;
        return new zzfeu(zzmVar, str, new zzbvt(zzfeqVar.zza).zza().zzj, zzfeqVar.zzf, zzxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfej
    public final synchronized boolean zzd(zzfet zzfetVar, zzfes zzfesVar) {
        boolean zzh;
        try {
            ConcurrentHashMap concurrentHashMap = this.zza;
            zzfei zzfeiVar = (zzfei) concurrentHashMap.get(zzfetVar);
            zzfesVar.zzd = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            if (zzfeiVar == null) {
                zzfeq zzfeqVar = this.zzb;
                zzfei zzfeiVar2 = new zzfei(zzfeqVar.zzd, zzfeqVar.zze * 1000);
                if (concurrentHashMap.size() == zzfeqVar.zzc) {
                    int i10 = zzfeqVar.zzg;
                    int i11 = i10 - 1;
                    zzfet zzfetVar2 = null;
                    if (i10 != 0) {
                        long j10 = Long.MAX_VALUE;
                        if (i11 != 0) {
                            if (i11 != 1) {
                                if (i11 == 2) {
                                    int i12 = Integer.MAX_VALUE;
                                    for (Map.Entry entry : concurrentHashMap.entrySet()) {
                                        if (((zzfei) entry.getValue()).zza() < i12) {
                                            i12 = ((zzfei) entry.getValue()).zza();
                                            zzfetVar2 = (zzfet) entry.getKey();
                                        }
                                    }
                                    if (zzfetVar2 != null) {
                                        concurrentHashMap.remove(zzfetVar2);
                                    }
                                }
                            } else {
                                for (Map.Entry entry2 : concurrentHashMap.entrySet()) {
                                    if (((zzfei) entry2.getValue()).zzd() < j10) {
                                        j10 = ((zzfei) entry2.getValue()).zzd();
                                        zzfetVar2 = (zzfet) entry2.getKey();
                                    }
                                }
                                if (zzfetVar2 != null) {
                                    concurrentHashMap.remove(zzfetVar2);
                                }
                            }
                        } else {
                            for (Map.Entry entry3 : concurrentHashMap.entrySet()) {
                                if (((zzfei) entry3.getValue()).zzc() < j10) {
                                    j10 = ((zzfei) entry3.getValue()).zzc();
                                    zzfetVar2 = (zzfet) entry3.getKey();
                                }
                            }
                            if (zzfetVar2 != null) {
                                concurrentHashMap.remove(zzfetVar2);
                            }
                        }
                        this.zzc.zzg();
                    } else {
                        throw null;
                    }
                }
                concurrentHashMap.put(zzfetVar, zzfeiVar2);
                this.zzc.zzd();
                zzfeiVar = zzfeiVar2;
            }
            zzh = zzfeiVar.zzh(zzfesVar);
            zzfem zzfemVar = this.zzc;
            zzfemVar.zzc();
            zzfel zza = zzfemVar.zza();
            zzffg zzf = zzfeiVar.zzf();
            zzbcj.zzb.zzc zzd = zzbcj.zzb.zzd();
            zzbcj.zzb.zza.C0297zza zza2 = zzbcj.zzb.zza.zza();
            zza2.zzf(zzbcj.zzb.zzd.IN_MEMORY);
            zzbcj.zzb.zzg.zza zzb = zzbcj.zzb.zzg.zzb();
            zzb.zze(zza.zza);
            zzb.zzf(zza.zzb);
            zzb.zzg(zzf.zzb);
            zza2.zzi(zzb);
            zzd.zzd(zza2);
            zzfesVar.zza.zzb().zzc().zzj(zzd.zzbr());
            zzf();
        } catch (Throwable th2) {
            throw th2;
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzfej
    public final synchronized boolean zze(zzfet zzfetVar) {
        zzfei zzfeiVar = (zzfei) this.zza.get(zzfetVar);
        if (zzfeiVar == null) {
            return true;
        }
        zzfeq zzfeqVar = this.zzb;
        if (zzfeiVar.zzb() < zzfeqVar.zzd) {
            return true;
        }
        return false;
    }
}
