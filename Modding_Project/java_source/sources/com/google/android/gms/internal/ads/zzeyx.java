package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbcj;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeyx implements zzezr {
    private final zzezr zza;
    private final zzezr zzb;
    private final zzfff zzc;
    private final String zzd;
    private zzcve zze;
    private final Executor zzf;

    public zzeyx(zzezr zzezrVar, zzezr zzezrVar2, zzfff zzfffVar, String str, Executor executor) {
        this.zza = zzezrVar;
        this.zzb = zzezrVar2;
        this.zzc = zzfffVar;
        this.zzd = str;
        this.zzf = executor;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzb(final zzeyx zzeyxVar, zzezs zzezsVar, zzeyw zzeywVar, zzezq zzezqVar, zzcve zzcveVar, zzezc zzezcVar) {
        if (zzezcVar != null) {
            zzeyw zzeywVar2 = new zzeyw(zzeywVar.zza, zzeywVar.zzb, zzeywVar.zzc, zzeywVar.zzd, zzeywVar.zze, zzeywVar.zzf, zzezcVar.zza);
            zzfes zzfesVar = zzezcVar.zzc;
            if (zzfesVar != null) {
                zzeyxVar.zze = null;
                zzeyxVar.zzc.zzf(zzeywVar2);
                return zzeyxVar.zzg(zzfesVar, zzezsVar);
            }
            zzfff zzfffVar = zzeyxVar.zzc;
            com.google.common.util.concurrent.e zza = zzfffVar.zza(zzeywVar2);
            if (zza != null) {
                zzeyxVar.zze = null;
                return zzgdn.zzn(zza, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzeyt
                    @Override // com.google.android.gms.internal.ads.zzgcu
                    public final com.google.common.util.concurrent.e zza(Object obj) {
                        return zzeyx.zze(zzeyx.this, (zzffc) obj);
                    }
                }, zzeyxVar.zzf);
            }
            zzfffVar.zzf(zzeywVar2);
            zzezsVar = new zzezs(zzezsVar.zzb, zzezcVar.zzb);
        }
        com.google.common.util.concurrent.e zzb = ((zzezh) zzeyxVar.zza).zzb(zzezsVar, zzezqVar, zzcveVar);
        zzeyxVar.zze = zzcveVar;
        return zzb;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zze(zzeyx zzeyxVar, zzffc zzffcVar) {
        zzfes zzfesVar;
        zzffe zzffeVar;
        if (zzffcVar != null && (zzfesVar = zzffcVar.zza) != null && (zzffeVar = zzffcVar.zzb) != null) {
            zzbcj.zzb.zzc zzd = zzbcj.zzb.zzd();
            zzbcj.zzb.zza.C0297zza zza = zzbcj.zzb.zza.zza();
            zza.zzf(zzbcj.zzb.zzd.IN_MEMORY);
            zza.zzh(zzbcj.zzb.zze.zzi());
            zzd.zzd(zza);
            zzfesVar.zza.zzb().zzc().zzm(zzd.zzbr());
            return zzeyxVar.zzg(zzfesVar, ((zzeyw) zzffeVar).zzb);
        }
        throw new zzdwm(1, "Empty prefetch");
    }

    private final com.google.common.util.concurrent.e zzg(zzfes zzfesVar, zzezs zzezsVar) {
        zzcve zzcveVar = zzfesVar.zza;
        this.zze = zzcveVar;
        if (zzfesVar.zzc != null) {
            if (zzcveVar.zze() != null) {
                zzfesVar.zzc.zzp().zzl(zzfesVar.zza.zze());
            }
            return zzgdn.zzh(zzfesVar.zzc);
        }
        zzcveVar.zzb().zzk(zzfesVar.zzb);
        return ((zzezh) this.zza).zzb(zzezsVar, null, zzfesVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzezr
    /* renamed from: zza */
    public final synchronized zzcve zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzezr
    public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.e zzc(zzezs zzezsVar, zzezq zzezqVar, Object obj) {
        return zzf(zzezsVar, zzezqVar, null);
    }

    public final synchronized com.google.common.util.concurrent.e zzf(final zzezs zzezsVar, final zzezq zzezqVar, zzcve zzcveVar) {
        zzcvd zza = zzezqVar.zza(zzezsVar.zzb);
        zza.zza(new zzeyy(this.zzd));
        final zzcve zzcveVar2 = (zzcve) zza.zzh();
        zzcveVar2.zzf();
        zzcveVar2.zzf();
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzcveVar2.zzf().zzd;
        if (zzmVar.zzs == null && zzmVar.zzx == null) {
            zzfcw zzf = zzcveVar2.zzf();
            com.google.android.gms.ads.internal.client.zzm zzmVar2 = zzf.zzd;
            String str = zzf.zzf;
            com.google.android.gms.ads.internal.client.zzx zzxVar = zzf.zzj;
            Executor executor = this.zzf;
            final zzeyw zzeywVar = new zzeyw(zzezqVar, zzezsVar, zzmVar2, str, executor, zzxVar, null);
            return (zzgde) zzgdn.zzn(zzgde.zzw(((zzezd) this.zzb).zzb(zzezsVar, zzezqVar, zzcveVar2)), new zzgcu() { // from class: com.google.android.gms.internal.ads.zzeyu
                @Override // com.google.android.gms.internal.ads.zzgcu
                public final com.google.common.util.concurrent.e zza(Object obj) {
                    return zzeyx.zzb(zzeyx.this, zzezsVar, zzeywVar, zzezqVar, zzcveVar2, (zzezc) obj);
                }
            }, executor);
        }
        this.zze = zzcveVar2;
        return ((zzezh) this.zza).zzb(zzezsVar, zzezqVar, zzcveVar2);
    }
}
