package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
public abstract class zza extends zzc {
    public final int zza;
    @Nullable
    public final Bundle zzb;
    final /* synthetic */ BaseGmsClient zzc;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public zza(BaseGmsClient baseGmsClient, @Nullable int i10, Bundle bundle) {
        super(baseGmsClient, Boolean.TRUE);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.zzc = baseGmsClient;
        this.zza = i10;
        this.zzb = bundle;
    }

    protected abstract boolean zza();

    protected abstract void zzb(ConnectionResult connectionResult);

    @Override // com.google.android.gms.common.internal.zzc
    protected final /* bridge */ /* synthetic */ void zzc(Object obj) {
        Boolean bool = (Boolean) obj;
        int i10 = this.zza;
        PendingIntent pendingIntent = null;
        if (i10 == 0) {
            if (!zza()) {
                this.zzc.zzd(1, null);
                zzb(new ConnectionResult(8, null));
                return;
            }
            return;
        }
        this.zzc.zzd(1, null);
        Bundle bundle = this.zzb;
        if (bundle != null) {
            pendingIntent = (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT);
        }
        zzb(new ConnectionResult(i10, pendingIntent));
    }
}
