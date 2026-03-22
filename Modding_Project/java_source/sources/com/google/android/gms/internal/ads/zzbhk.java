package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbhk {
    private final zzbhj zza;

    @VisibleForTesting
    public zzbhk(zzbhj zzbhjVar) {
        Context context;
        this.zza = zzbhjVar;
        try {
            context = (Context) ObjectWrapper.unwrap(zzbhjVar.zzh());
        } catch (RemoteException | NullPointerException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            context = null;
        }
        if (context != null) {
            try {
                this.zza.zzs(ObjectWrapper.wrap(new MediaView(context)));
            } catch (RemoteException e11) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e11);
            }
        }
    }

    public final zzbhj zza() {
        return this.zza;
    }

    @Nullable
    public final String zzb() {
        try {
            return this.zza.zzi();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }
}
