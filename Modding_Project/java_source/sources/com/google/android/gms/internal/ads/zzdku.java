package com.google.android.gms.internal.ads;

import androidx.collection.ArrayMap;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdku implements zzcws {
    private final zzdit zza;
    private final zzdiy zzb;
    private final Executor zzc;
    private final Executor zzd;

    public zzdku(zzdit zzditVar, zzdiy zzdiyVar, Executor executor, Executor executor2) {
        this.zza = zzditVar;
        this.zzb = zzdiyVar;
        this.zzc = executor;
        this.zzd = executor2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(final zzcfg zzcfgVar) {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdks
            @Override // java.lang.Runnable
            public final void run() {
                zzcfg.this.zzd("onSdkImpression", new ArrayMap());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcws
    public final void zzt() {
        if (this.zzb.zzd()) {
            zzdit zzditVar = this.zza;
            zzedh zzu = zzditVar.zzu();
            if (zzu == null && zzditVar.zzw() != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfG)).booleanValue()) {
                com.google.common.util.concurrent.e zzw = zzditVar.zzw();
                zzcak zzp = zzditVar.zzp();
                if (zzw != null && zzp != null) {
                    zzgdn.zzr(zzgdn.zzl(zzw, zzp), new zzdkt(this), this.zzd);
                }
            } else if (zzu != null) {
                zzcfg zzr = zzditVar.zzr();
                zzcfg zzs = zzditVar.zzs();
                if (zzr == null) {
                    if (zzs == null) {
                        zzr = null;
                    } else {
                        zzr = zzs;
                    }
                }
                if (zzr != null) {
                    zzb(zzr);
                }
            }
        }
    }
}
