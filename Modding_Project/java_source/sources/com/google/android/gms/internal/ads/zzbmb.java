package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbmb implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzcak zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmb(zzbmc zzbmcVar, zzcak zzcakVar) {
        this.zza = zzcakVar;
        Objects.requireNonNull(zzbmcVar);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.zza.zzd(new RuntimeException("Connection failed."));
    }
}
