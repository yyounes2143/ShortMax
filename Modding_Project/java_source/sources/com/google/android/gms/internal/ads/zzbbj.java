package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbbj implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzbbk zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbj(zzbbk zzbbkVar) {
        Objects.requireNonNull(zzbbkVar);
        this.zza = zzbbkVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        zzbbn zzbbnVar;
        Object obj2;
        zzbbk zzbbkVar = this.zza;
        obj = zzbbkVar.zzc;
        synchronized (obj) {
            try {
                zzbbkVar.zzf = null;
                zzbbnVar = zzbbkVar.zzd;
                if (zzbbnVar != null) {
                    zzbbkVar.zzd = null;
                }
                obj2 = zzbbkVar.zzc;
                obj2.notifyAll();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
