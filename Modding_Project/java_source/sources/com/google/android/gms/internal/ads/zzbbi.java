package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbbi implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzbbk zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbi(zzbbk zzbbkVar) {
        Objects.requireNonNull(zzbbkVar);
        this.zza = zzbbkVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        Object obj2;
        zzbbn zzbbnVar;
        zzbbn zzbbnVar2;
        zzbbk zzbbkVar = this.zza;
        obj = zzbbkVar.zzc;
        synchronized (obj) {
            try {
                zzbbnVar = zzbbkVar.zzd;
                if (zzbbnVar != null) {
                    zzbbnVar2 = zzbbkVar.zzd;
                    zzbbkVar.zzf = zzbbnVar2.zzq();
                }
            } catch (DeadObjectException e10) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to obtain a cache service instance.", e10);
                zzbbk.zzh(this.zza);
            }
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i10) {
        Object obj;
        Object obj2;
        zzbbk zzbbkVar = this.zza;
        obj = zzbbkVar.zzc;
        synchronized (obj) {
            zzbbkVar.zzf = null;
            obj2 = zzbbkVar.zzc;
            obj2.notifyAll();
        }
    }
}
