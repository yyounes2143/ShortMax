package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
@RequiresApi(api = 21)
/* loaded from: classes4.dex */
public final class zzbll {
    private final Context zza;
    private final OnH5AdsEventListener zzb;
    @Nullable
    private zzblh zzc;

    public zzbll(Context context, OnH5AdsEventListener onH5AdsEventListener) {
        Preconditions.checkState(true, "Android version must be Lollipop or higher");
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onH5AdsEventListener);
        this.zza = context;
        this.zzb = onH5AdsEventListener;
        zzbde.zza(context);
    }

    public static final boolean zzc(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkr)).booleanValue()) {
            return false;
        }
        Preconditions.checkNotNull(str);
        if (str.length() > ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkt)).intValue()) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("H5 GMSG exceeds max length");
            return false;
        }
        Uri parse = Uri.parse(str);
        if (!"gmsg".equals(parse.getScheme()) || !"mobileads.google.com".equals(parse.getHost()) || !"/h5ads".equals(parse.getPath())) {
            return false;
        }
        return true;
    }

    private final void zzd() {
        if (this.zzc != null) {
            return;
        }
        this.zzc = com.google.android.gms.ads.internal.client.zzbb.zza().zzn(this.zza, new zzbpm(), this.zzb);
    }

    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkr)).booleanValue()) {
            zzd();
            zzblh zzblhVar = this.zzc;
            if (zzblhVar != null) {
                try {
                    zzblhVar.zze();
                } catch (RemoteException e10) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
                }
            }
        }
    }

    public final boolean zzb(String str) {
        if (!zzc(str)) {
            return false;
        }
        zzd();
        zzblh zzblhVar = this.zzc;
        if (zzblhVar == null) {
            return false;
        }
        try {
            zzblhVar.zzf(str);
            return true;
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            return true;
        }
    }
}
