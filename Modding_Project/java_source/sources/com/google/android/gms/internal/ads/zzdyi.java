package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzdyi implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    protected final zzcak zza = new zzcak();
    protected final Object zzb = new Object();
    protected boolean zzc = false;
    protected boolean zzd = false;
    protected zzbvq zze;
    @GuardedBy("lock")
    @VisibleForTesting(otherwise = 3)
    protected zzbuv zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzc(Context context, com.google.common.util.concurrent.e eVar, Executor executor) {
        if (!((Boolean) zzbew.zzj.zze()).booleanValue() && !((Boolean) zzbew.zzh.zze()).booleanValue()) {
            return;
        }
        zzgdn.zzr(eVar, new zzdyf(context), executor);
    }

    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Disconnected from remote ad request service.");
        this.zza.zzd(new zzdyx(1));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i10) {
        int i11 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Cannot connect to remote service, fallback to local instance.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb() {
        synchronized (this.zzb) {
            try {
                this.zzd = true;
                if (!this.zzf.isConnected()) {
                    if (this.zzf.isConnecting()) {
                    }
                    Binder.flushPendingCommands();
                }
                this.zzf.disconnect();
                Binder.flushPendingCommands();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
