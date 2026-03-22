package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzbcj;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzebi implements zzfhb {
    private final zzeaw zza;
    private final zzeba zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzebi(zzeaw zzeawVar, zzeba zzebaVar) {
        this.zza = zzeawVar;
        this.zzb = zzebaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfhb
    public final void zzd(zzfgu zzfguVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgv)).booleanValue() && zzfgu.RENDERER == zzfguVar) {
            zzeaw zzeawVar = this.zza;
            if (zzeawVar.zzc() != 0) {
                zzeawVar.zzf(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - zzeawVar.zzc());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhb
    public final void zzdF(zzfgu zzfguVar, String str, Throwable th2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgv)).booleanValue() && zzfgu.RENDERER == zzfguVar) {
            zzeaw zzeawVar = this.zza;
            if (zzeawVar.zzc() != 0) {
                zzeawVar.zzf(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - zzeawVar.zzc());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhb
    public final void zzdG(zzfgu zzfguVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgv)).booleanValue()) {
            if (zzfgu.RENDERER == zzfguVar) {
                this.zza.zzg(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime());
            } else if (zzfgu.PRELOADED_LOADER != zzfguVar && zzfgu.SERVER_TRANSACTION != zzfguVar) {
            } else {
                zzeaw zzeawVar = this.zza;
                zzeawVar.zzh(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime());
                final zzeba zzebaVar = this.zzb;
                final long zzd = zzeawVar.zzd();
                zzebaVar.zza.zza(new zzfge() { // from class: com.google.android.gms.internal.ads.zzeaz
                    @Override // com.google.android.gms.internal.ads.zzfge
                    public final Object zza(Object obj) {
                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                        if (!zzeba.this.zzf()) {
                            long j10 = zzd;
                            zzbcj.zzaf.zza.C0296zza zzn = zzbcj.zzaf.zza.zzn();
                            zzn.zzP(j10);
                            byte[] zzaV = zzn.zzbr().zzaV();
                            zzebh.zzf(sQLiteDatabase, false, false);
                            zzebh.zzc(sQLiteDatabase, j10, zzaV);
                            return null;
                        }
                        return null;
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhb
    public final void zzdE(zzfgu zzfguVar, String str) {
    }
}
