package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@VisibleForTesting
/* loaded from: classes4.dex */
final class zzfor implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    @VisibleForTesting
    protected final zzfpn zza;
    private final String zzb;
    private final String zzc;
    private final LinkedBlockingQueue zzd;
    private final HandlerThread zze;
    private final zzfoi zzf;
    private final long zzg;
    private final int zzh;

    public zzfor(Context context, int i10, int i11, String str, String str2, String str3, zzfoi zzfoiVar) {
        this.zzb = str;
        this.zzh = i11;
        this.zzc = str2;
        this.zzf = zzfoiVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.zze = handlerThread;
        handlerThread.start();
        this.zzg = System.currentTimeMillis();
        zzfpn zzfpnVar = new zzfpn(context, handlerThread.getLooper(), this, this, 19621000);
        this.zza = zzfpnVar;
        this.zzd = new LinkedBlockingQueue();
        zzfpnVar.checkAvailabilityAndConnect();
    }

    private final void zzd(int i10, long j10, Exception exc) {
        this.zzf.zzc(i10, System.currentTimeMillis() - j10, exc);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzfps zzc = zzc();
        if (zzc != null) {
            try {
                zzfpz zzf = zzc.zzf(new zzfpx(1, this.zzh, this.zzb, this.zzc));
                zzd(5011, this.zzg, null);
                this.zzd.put(zzf);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            zzd(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_VC2_THREAD_PRIORITY, this.zzg, null);
            this.zzd.put(new zzfpz(null, 1));
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i10) {
        try {
            zzd(4011, this.zzg, null);
            this.zzd.put(new zzfpz(null, 1));
        } catch (InterruptedException unused) {
        }
    }

    public final zzfpz zza(int i10) {
        zzfpz zzfpzVar;
        try {
            zzfpzVar = (zzfpz) this.zzd.poll(ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            zzd(2009, this.zzg, e10);
            zzfpzVar = null;
        }
        zzd(AuthApiStatusCodes.AUTH_TOKEN_ERROR, this.zzg, null);
        if (zzfpzVar != null) {
            if (zzfpzVar.zzc == 7) {
                zzfoi.zzg(3);
            } else {
                zzfoi.zzg(2);
            }
        }
        if (zzfpzVar == null) {
            return new zzfpz(null, 1);
        }
        return zzfpzVar;
    }

    public final void zzb() {
        zzfpn zzfpnVar = this.zza;
        if (zzfpnVar != null) {
            if (zzfpnVar.isConnected() || zzfpnVar.isConnecting()) {
                zzfpnVar.disconnect();
            }
        }
    }

    protected final zzfps zzc() {
        try {
            return this.zza.zzp();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }
}
