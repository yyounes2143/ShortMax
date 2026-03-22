package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdye extends zzdyi {
    private final Context zzg;
    private final Executor zzh;

    public zzdye(Context context, Executor executor) {
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
                        zzp.zzg(zzbvqVar, zzdygVar);
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.zza.zzd(new zzdyx(1));
                    } catch (Throwable th2) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "RemoteAdRequestClientTask.onConnected");
                        this.zza.zzd(new zzdyx(1));
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyi, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Cannot connect to remote service, fallback to local instance.");
        this.zza.zzd(new zzdyx(1));
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
                zzcakVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyd
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdye.this.zzb();
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
