package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbbx implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzcak zza;
    final /* synthetic */ zzbby zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbx(zzbby zzbbyVar, zzcak zzcakVar) {
        this.zza = zzcakVar;
        Objects.requireNonNull(zzbbyVar);
        this.zzb = zzbbyVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzb.zzd;
        synchronized (obj) {
            this.zza.zzd(new RuntimeException("Connection failed."));
        }
    }
}
