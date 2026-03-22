package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdyo extends zzdyi {
    private String zzg;
    private int zzh = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdyo(Context context) {
        this.zzf = new zzbuv(context, com.google.android.gms.ads.internal.zzv.zzv().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        zzbvi zzdygVar;
        zzbvi zzdygVar2;
        synchronized (this.zzb) {
            try {
                if (!this.zzd) {
                    this.zzd = true;
                    try {
                        int i10 = this.zzh;
                        if (i10 == 2) {
                            zzbve zzp = this.zzf.zzp();
                            zzbvq zzbvqVar = this.zze;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznp)).booleanValue()) {
                                zzdygVar2 = new zzdyh(this.zza, this.zze);
                            } else {
                                zzdygVar2 = new zzdyg(this);
                            }
                            zzp.zze(zzbvqVar, zzdygVar2);
                        } else if (i10 == 3) {
                            zzbve zzp2 = this.zzf.zzp();
                            String str = this.zzg;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznp)).booleanValue()) {
                                zzdygVar = new zzdyh(this.zza, this.zze);
                            } else {
                                zzdygVar = new zzdyg(this);
                            }
                            zzp2.zzh(str, zzdygVar);
                        } else {
                            this.zza.zzd(new zzdyx(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.zza.zzd(new zzdyx(1));
                    } catch (Throwable th2) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "RemoteUrlAndCacheKeyClientTask.onConnected");
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
                int i10 = this.zzh;
                if (i10 != 1 && i10 != 2) {
                    return zzgdn.zzg(new zzdyx(2));
                } else if (this.zzc) {
                    return this.zza;
                } else {
                    this.zzh = 2;
                    this.zzc = true;
                    this.zze = zzbvqVar;
                    this.zzf.checkAvailabilityAndConnect();
                    zzcak zzcakVar = this.zza;
                    zzcakVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdym
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdyo.this.zzb();
                        }
                    }, zzcaf.zzg);
                    return zzcakVar;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final com.google.common.util.concurrent.e zzd(String str) {
        synchronized (this.zzb) {
            try {
                int i10 = this.zzh;
                if (i10 != 1 && i10 != 3) {
                    return zzgdn.zzg(new zzdyx(2));
                } else if (this.zzc) {
                    return this.zza;
                } else {
                    this.zzh = 3;
                    this.zzc = true;
                    this.zzg = str;
                    this.zzf.checkAvailabilityAndConnect();
                    zzcak zzcakVar = this.zza;
                    zzcakVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyn
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdyo.this.zzb();
                        }
                    }, zzcaf.zzg);
                    return zzcakVar;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
