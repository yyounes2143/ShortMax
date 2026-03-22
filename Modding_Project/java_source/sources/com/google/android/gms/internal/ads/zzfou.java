package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfou implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final zzfpn zza;
    private final zzfph zzb;
    private final Object zzc = new Object();
    private boolean zzd = false;
    private boolean zze = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfou(@NonNull Context context, @NonNull Looper looper, @NonNull zzfph zzfphVar) {
        this.zzb = zzfphVar;
        this.zza = new zzfpn(context, looper, this, this, 12800000);
    }

    private final void zzb() {
        synchronized (this.zzc) {
            try {
                zzfpn zzfpnVar = this.zza;
                if (!zzfpnVar.isConnected()) {
                    if (zzfpnVar.isConnecting()) {
                    }
                    Binder.flushPendingCommands();
                }
                zzfpnVar.disconnect();
                Binder.flushPendingCommands();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        synchronized (this.zzc) {
            try {
                if (this.zze) {
                    return;
                }
                this.zze = true;
                try {
                    this.zza.zzp().zzg(new zzfpl(this.zzb.zzaV()));
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    zzb();
                    throw th2;
                }
                zzb();
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza() {
        synchronized (this.zzc) {
            try {
                if (!this.zzd) {
                    this.zzd = true;
                    this.zza.checkAvailabilityAndConnect();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i10) {
    }
}
