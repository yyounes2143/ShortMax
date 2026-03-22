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
public final class zzfkf extends zzfld {
    public zzfkf(ClientApi clientApi, Context context, int i10, zzbpq zzbpqVar, com.google.android.gms.ads.internal.client.zzfv zzfvVar, @Nullable com.google.android.gms.ads.internal.client.zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zzfkg zzfkgVar, Clock clock) {
        super(clientApi, context, i10, zzbpqVar, zzfvVar, zzceVar, scheduledExecutorService, zzfkgVar, clock);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzfld
    @Nullable
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzea zza(Object obj) {
        try {
            return ((zzbaw) obj).zzg();
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get response info for the app open ad.", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfld
    protected final com.google.common.util.concurrent.e zzb(Context context) {
        zzgeh zze = zzgeh.zze();
        com.google.android.gms.ads.internal.client.zzbx zzc = this.zza.zzc(ObjectWrapper.wrap(context), com.google.android.gms.ads.internal.client.zzr.zzb(), this.zze.zza, this.zzd, this.zzc);
        if (zzc != null) {
            try {
                zzc.zzI(new zzfke(this, zze, this.zze));
                zzc.zzad(this.zze.zzc);
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to load app open ad.", e10);
                zze.zzd(new zzfka(1, "remote exception"));
            }
        } else {
            zze.zzd(new zzfka(1, "Failed to create an app open ad manager."));
        }
        return zze;
    }

    public zzfkf(String str, ClientApi clientApi, Context context, int i10, zzbpq zzbpqVar, com.google.android.gms.ads.internal.client.zzfv zzfvVar, @Nullable com.google.android.gms.ads.internal.client.zzch zzchVar, ScheduledExecutorService scheduledExecutorService, zzfkg zzfkgVar, Clock clock) {
        super(str, clientApi, context, i10, zzbpqVar, zzfvVar, zzchVar, scheduledExecutorService, zzfkgVar, clock);
    }
}
