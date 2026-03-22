package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbbw implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    final /* synthetic */ zzbbo zza;
    final /* synthetic */ zzcak zzb;
    final /* synthetic */ zzbby zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbw(zzbby zzbbyVar, zzbbo zzbboVar, zzcak zzcakVar) {
        this.zza = zzbboVar;
        this.zzb = zzcakVar;
        Objects.requireNonNull(zzbbyVar);
        this.zzc = zzbbyVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        boolean z10;
        final zzbbn zzbbnVar;
        zzbby zzbbyVar = this.zzc;
        obj = zzbbyVar.zzd;
        synchronized (obj) {
            try {
                z10 = zzbbyVar.zzb;
                if (!z10) {
                    zzbbyVar.zzb = true;
                    zzbbnVar = zzbbyVar.zza;
                    if (zzbbnVar == null) {
                        return;
                    }
                    zzgdy zzgdyVar = zzcaf.zza;
                    final zzbbo zzbboVar = this.zza;
                    final zzcak zzcakVar = this.zzb;
                    final com.google.common.util.concurrent.e zza = zzgdyVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbt
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzbbl zzf;
                            zzbbw zzbbwVar = zzbbw.this;
                            zzbbn zzbbnVar2 = zzbbnVar;
                            zzcak zzcakVar2 = zzcakVar;
                            try {
                                zzbbq zzq = zzbbnVar2.zzq();
                                boolean zzp = zzbbnVar2.zzp();
                                zzbbo zzbboVar2 = zzbboVar;
                                if (zzp) {
                                    zzf = zzq.zzg(zzbboVar2);
                                } else {
                                    zzf = zzq.zzf(zzbboVar2);
                                }
                                if (!zzf.zze()) {
                                    zzcakVar2.zzd(new RuntimeException("No entry contents."));
                                    zzbby.zze(zzbbwVar.zzc);
                                    return;
                                }
                                zzbbv zzbbvVar = new zzbbv(zzbbwVar, zzf.zzc(), 1);
                                int read = zzbbvVar.read();
                                if (read != -1) {
                                    zzbbvVar.unread(read);
                                    zzcakVar2.zzc(zzbca.zzb(zzbbvVar, zzf.zzd(), zzf.zzg(), zzf.zza(), zzf.zzf()));
                                    return;
                                }
                                throw new IOException("Unable to read from cache.");
                            } catch (RemoteException e10) {
                                e = e10;
                                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to obtain a cache service instance.", e);
                                zzcakVar2.zzd(e);
                                zzbby.zze(zzbbwVar.zzc);
                            } catch (IOException e11) {
                                e = e11;
                                int i102 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to obtain a cache service instance.", e);
                                zzcakVar2.zzd(e);
                                zzbby.zze(zzbbwVar.zzc);
                            }
                        }
                    });
                    zzcakVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbu
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (zzcak.this.isCancelled()) {
                                zza.cancel(true);
                            }
                        }
                    }, zzcaf.zzg);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i10) {
    }
}
