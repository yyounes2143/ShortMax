package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzent implements zzeuc {
    @VisibleForTesting
    final zzbzs zza;
    @VisibleForTesting
    AppSetIdClient zzb;
    private final ScheduledExecutorService zzc;
    private final zzgdy zzd;
    private final Context zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzent(Context context, zzbzs zzbzsVar, ScheduledExecutorService scheduledExecutorService, zzgdy zzgdyVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdl)).booleanValue()) {
            this.zzb = AppSet.getClient(context);
        }
        this.zze = context;
        this.zza = zzbzsVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzgdyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        Task<AppSetIdInfo> appSetIdInfo;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdh)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdm)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdi)).booleanValue()) {
                    return zzgdn.zzm(zzfsj.zza(this.zzb.getAppSetIdInfo(), null), new zzfve() { // from class: com.google.android.gms.internal.ads.zzenq
                        @Override // com.google.android.gms.internal.ads.zzfve
                        public final Object apply(Object obj) {
                            AppSetIdInfo appSetIdInfo2 = (AppSetIdInfo) obj;
                            return new zzenu(appSetIdInfo2.getId(), appSetIdInfo2.getScope());
                        }
                    }, zzcaf.zzg);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdl)).booleanValue()) {
                    appSetIdInfo = zzfea.zza(this.zze);
                } else {
                    appSetIdInfo = this.zzb.getAppSetIdInfo();
                }
                if (appSetIdInfo == null) {
                    return zzgdn.zzh(new zzenu(null, -1));
                }
                com.google.common.util.concurrent.e zzn = zzgdn.zzn(zzfsj.zza(appSetIdInfo, null), new zzgcu() { // from class: com.google.android.gms.internal.ads.zzenr
                    @Override // com.google.android.gms.internal.ads.zzgcu
                    public final com.google.common.util.concurrent.e zza(Object obj) {
                        AppSetIdInfo appSetIdInfo2 = (AppSetIdInfo) obj;
                        if (appSetIdInfo2 == null) {
                            return zzgdn.zzh(new zzenu(null, -1));
                        }
                        return zzgdn.zzh(new zzenu(appSetIdInfo2.getId(), appSetIdInfo2.getScope()));
                    }
                }, zzcaf.zzg);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdj)).booleanValue()) {
                    zzn = zzgdn.zzo(zzn, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdk)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
                }
                return zzgdn.zze(zzn, Exception.class, new zzfve() { // from class: com.google.android.gms.internal.ads.zzens
                    @Override // com.google.android.gms.internal.ads.zzfve
                    public final Object apply(Object obj) {
                        zzent.this.zza.zzw((Exception) obj, "AppSetIdInfoSignal");
                        return new zzenu(null, -1);
                    }
                }, this.zzd);
            }
        }
        return zzgdn.zzh(new zzenu(null, -1));
    }
}
