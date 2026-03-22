package com.google.android.gms.ads.preload;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzck;
import com.google.android.gms.ads.internal.client.zzfv;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public class zzb {
    protected final zzck zza;
    private final AdFormat zzb;
    private final Context zzc;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzb(@NonNull Context context, AdFormat adFormat) {
        this.zza = com.google.android.gms.ads.zzb.zza(context);
        this.zzc = context.getApplicationContext();
        this.zzb = adFormat;
    }

    public final int zzb(String str) {
        try {
            return this.zza.zze(this.zzb.getValue(), str);
        } catch (RemoteException e10) {
            zzo.zzl("#007 Could not call remote method.", e10);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Context zzc() {
        return this.zzc;
    }

    @Nullable
    public final PreloadConfiguration zzd(String str) {
        try {
            zzfv zzk = this.zza.zzk(this.zzb.getValue(), str);
            if (zzk == null) {
                return null;
            }
            return zzf.zzg(zzk);
        } catch (RemoteException e10) {
            zzo.zzl("#007 Could not call remote method.", e10);
            return null;
        }
    }

    public final Map zze() {
        PreloadConfiguration zzg;
        try {
            Bundle zzf = this.zza.zzf(this.zzb.getValue());
            HashMap hashMap = new HashMap();
            for (String str : zzf.keySet()) {
                byte[] byteArray = zzf.getByteArray(str);
                if (byteArray != null && (zzg = zzf.zzg((zzfv) SafeParcelableSerializer.deserializeFromBytes(byteArray, zzfv.CREATOR))) != null) {
                    hashMap.put(str, zzg);
                }
            }
            return hashMap;
        } catch (RemoteException e10) {
            zzo.zzl("#007 Could not call remote method.", e10);
            return new HashMap();
        }
    }

    public final void zzf() {
        try {
            this.zza.zzn(this.zzb.getValue());
        } catch (RemoteException e10) {
            zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final boolean zzg(String str) {
        try {
            return this.zza.zzq(this.zzb.getValue(), str);
        } catch (RemoteException e10) {
            zzo.zzl("#007 Could not call remote method.", e10);
            return false;
        }
    }

    public final boolean zzh(String str) {
        try {
            return this.zza.zzr(this.zzb.getValue(), str);
        } catch (RemoteException e10) {
            zzo.zzl("#007 Could not call remote method.", e10);
            return false;
        }
    }

    public final boolean zzi(String str, PreloadConfiguration preloadConfiguration) {
        if (str == null) {
            return false;
        }
        try {
            return this.zza.zzv(str, zzf.zzf(this.zzc, preloadConfiguration, this.zzb), null);
        } catch (RemoteException e10) {
            zzo.zzk("Failed to preload ad for preload ID " + str + ".", e10);
            return false;
        }
    }

    public final boolean zzj(String str, PreloadConfiguration preloadConfiguration, PreloadCallbackV2 preloadCallbackV2) {
        zza zzaVar;
        if (str == null) {
            return false;
        }
        zzfv zzf = zzf.zzf(this.zzc, preloadConfiguration, this.zzb);
        try {
            zzck zzckVar = this.zza;
            if (preloadCallbackV2 == null) {
                zzaVar = null;
            } else {
                zzaVar = new zza(this, preloadCallbackV2);
            }
            return zzckVar.zzv(str, zzf, zzaVar);
        } catch (RemoteException e10) {
            zzo.zzk("Failed to preload ad for preload ID " + str + ".", e10);
            return false;
        }
    }
}
