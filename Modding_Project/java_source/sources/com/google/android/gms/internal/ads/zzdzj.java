package com.google.android.gms.internal.ads;

import android.os.Binder;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdzj {
    private final zzgdy zza;
    private final zzdyo zzb;
    private final zzhgl zzc;

    public zzdzj(zzgdy zzgdyVar, zzdyo zzdyoVar, zzhgl zzhglVar) {
        this.zza = zzgdyVar;
        this.zzb = zzdyoVar;
        this.zzc = zzhglVar;
    }

    private final com.google.common.util.concurrent.e zzg(final zzbvq zzbvqVar, zzdzi zzdziVar, final zzdzi zzdziVar2, final zzgcu zzgcuVar) {
        com.google.common.util.concurrent.e zzf;
        String str = zzbvqVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzr();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(str)) {
            zzf = zzgdn.zzg(new zzdyx(1));
        } else {
            zzf = zzgdn.zzf(zzdziVar.zza(zzbvqVar), ExecutionException.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdzh
                @Override // com.google.android.gms.internal.ads.zzgcu
                public final com.google.common.util.concurrent.e zza(Object obj) {
                    Throwable th2 = (ExecutionException) obj;
                    if (th2.getCause() != null) {
                        th2 = th2.getCause();
                    }
                    return zzgdn.zzg(th2);
                }
            }, this.zza);
        }
        zzgde zzw = zzgde.zzw(zzf);
        zzgcu zzgcuVar2 = new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdzf
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzgdn.zzh(((zzdyy) obj).zzb());
            }
        };
        zzgdy zzgdyVar = this.zza;
        return (zzgde) zzgdn.zzf((zzgde) zzgdn.zzn((zzgde) zzgdn.zzn(zzw, zzgcuVar2, zzgdyVar), zzgcuVar, zzgdyVar), zzdyx.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdzg
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                com.google.common.util.concurrent.e zzn;
                zzdzj zzdzjVar = zzdzj.this;
                zzdyx zzdyxVar = (zzdyx) obj;
                zzn = zzgdn.zzn(zzdziVar2.zza(zzbvqVar), zzgcuVar, zzdzjVar.zza);
                return zzn;
            }
        }, zzgdyVar);
    }

    public final com.google.common.util.concurrent.e zze(final zzbvq zzbvqVar) {
        zzgcu zzgcuVar = new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdzc
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                String str = new String(zzgbg.zzb((InputStream) obj), StandardCharsets.UTF_8);
                zzbvq zzbvqVar2 = zzbvq.this;
                zzbvqVar2.zzj = str;
                return zzgdn.zzh(zzbvqVar2);
            }
        };
        final zzdyo zzdyoVar = this.zzb;
        Objects.requireNonNull(zzdyoVar);
        return zzg(zzbvqVar, new zzdzi() { // from class: com.google.android.gms.internal.ads.zzdzd
            @Override // com.google.android.gms.internal.ads.zzdzi
            public final com.google.common.util.concurrent.e zza(zzbvq zzbvqVar2) {
                return zzdyo.this.zza(zzbvqVar2);
            }
        }, new zzdzi() { // from class: com.google.android.gms.internal.ads.zzdze
            @Override // com.google.android.gms.internal.ads.zzdzi
            public final com.google.common.util.concurrent.e zza(zzbvq zzbvqVar2) {
                com.google.common.util.concurrent.e zzb;
                zzb = ((zzeab) zzdzj.this.zzc.zzb()).zzb(zzbvqVar2, Binder.getCallingUid());
                return zzb;
            }
        }, zzgcuVar);
    }

    public final com.google.common.util.concurrent.e zzf(zzbvq zzbvqVar) {
        return zzg(zzbvqVar, new zzdzi() { // from class: com.google.android.gms.internal.ads.zzdza
            @Override // com.google.android.gms.internal.ads.zzdzi
            public final com.google.common.util.concurrent.e zza(zzbvq zzbvqVar2) {
                com.google.common.util.concurrent.e zzd;
                zzd = zzdzj.this.zzb.zzd(zzbvqVar2.zzh);
                return zzd;
            }
        }, new zzdzi() { // from class: com.google.android.gms.internal.ads.zzdzb
            @Override // com.google.android.gms.internal.ads.zzdzi
            public final com.google.common.util.concurrent.e zza(zzbvq zzbvqVar2) {
                com.google.common.util.concurrent.e zzj;
                zzj = ((zzeab) zzdzj.this.zzc.zzb()).zzj(zzbvqVar2.zzh);
                return zzj;
            }
        }, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdyz
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                InputStream inputStream = (InputStream) obj;
                return zzgdn.zzh(null);
            }
        });
    }
}
