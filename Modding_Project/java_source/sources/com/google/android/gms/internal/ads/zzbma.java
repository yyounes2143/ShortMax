package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbma implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzcak zza;
    final /* synthetic */ zzbmc zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbma(zzbmc zzbmcVar, zzcak zzcakVar) {
        this.zza = zzcakVar;
        Objects.requireNonNull(zzbmcVar);
        this.zzb = zzbmcVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        zzblp zzblpVar;
        try {
            zzcak zzcakVar = this.zza;
            zzblpVar = this.zzb.zza;
            zzcakVar.zzc(zzblpVar.zzp());
        } catch (DeadObjectException e10) {
            this.zza.zzd(e10);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i10) {
        this.zza.zzd(new RuntimeException("onConnectionSuspended: " + i10));
    }
}
