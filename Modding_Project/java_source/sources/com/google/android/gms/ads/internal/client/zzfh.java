package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfh implements Runnable {
    final /* synthetic */ zzfi zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfh(zzfi zzfiVar) {
        Objects.requireNonNull(zzfiVar);
        this.zza = zzfiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfk zzfkVar = this.zza.zza;
        if (zzfk.zzb(zzfkVar) != null) {
            try {
                zzfk.zzb(zzfkVar).zze(1);
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not notify onAdFailedToLoad event.", e10);
            }
        }
    }
}
