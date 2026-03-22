package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfki extends zzfld {
    public zzfki(ClientApi clientApi, Context context, int i10, zzbpq zzbpqVar, com.google.android.gms.ads.internal.client.zzfv zzfvVar, @Nullable com.google.android.gms.ads.internal.client.zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zzfkg zzfkgVar, Clock clock) {
        super(clientApi, context, i10, zzbpqVar, zzfvVar, zzceVar, scheduledExecutorService, zzfkgVar, clock);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzfld
    @Nullable
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzea zza(Object obj) {
        try {
            return ((com.google.android.gms.ads.internal.client.zzbx) obj).zzl();
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get response info for  the interstitial ad.", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfld
    protected final com.google.common.util.concurrent.e zzb(Context context) {
        zzgeh zze = zzgeh.zze();
        com.google.android.gms.ads.internal.client.zzbx zze2 = this.zza.zze(ObjectWrapper.wrap(context), new com.google.android.gms.ads.internal.client.zzr(), this.zze.zza, this.zzd, this.zzc);
        if (zze2 != null) {
            try {
                zze2.zzz(this.zze.zzc, new zzfkh(this, zze, zze2));
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to load interstitial ad.", e10);
                zze.zzd(new zzfka(1, "remote exception"));
            }
        } else {
            zze.zzd(new zzfka(1, "Failed to create an interstitial ad manager."));
        }
        return zze;
    }

    public zzfki(String str, ClientApi clientApi, Context context, int i10, zzbpq zzbpqVar, com.google.android.gms.ads.internal.client.zzfv zzfvVar, @Nullable com.google.android.gms.ads.internal.client.zzch zzchVar, ScheduledExecutorService scheduledExecutorService, zzfkg zzfkgVar, Clock clock) {
        super(str, clientApi, context, i10, zzbpqVar, zzfvVar, zzchVar, scheduledExecutorService, zzfkgVar, clock);
    }
}
