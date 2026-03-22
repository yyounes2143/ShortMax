package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdyk extends zzdyi {
    private final Context zzg;
    private final Executor zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdyk(Context context, Executor executor) {
        this.zzg = context;
        this.zzh = executor;
        this.zzf = new zzbuv(context, com.google.android.gms.ads.internal.zzv.zzv().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbvi zzdygVar;
        synchronized (this.zzb) {
            try {
                if (!this.zzd) {
                    this.zzd = true;
                    try {
                        zzbve zzp = this.zzf.zzp();
                        zzbvq zzbvqVar = this.zze;
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznp)).booleanValue()) {
                            zzdygVar = new zzdyh(this.zza, this.zze);
                        } else {
                            zzdygVar = new zzdyg(this);
                        }
                        zzp.zzf(zzbvqVar, zzdygVar);
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.zza.zzd(new zzdyx(1));
                    } catch (Throwable th2) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "RemoteSignalsClientTask.onConnected");
                        this.zza.zzd(new zzdyx(1));
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final com.google.common.util.concurrent.e zza(zzbvq zzbvqVar) {
        synchronized (this.zzb) {
            try {
                if (this.zzc) {
                    return this.zza;
                }
                this.zzc = true;
                this.zze = zzbvqVar;
                this.zzf.checkAvailabilityAndConnect();
                zzcak zzcakVar = this.zza;
                zzcakVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyj
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdyk.this.zzb();
                    }
                }, zzcaf.zzg);
                zzdyi.zzc(this.zzg, zzcakVar, this.zzh);
                return zzcakVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
