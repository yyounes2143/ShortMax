package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbon {
    private final Object zza = new Object();
    private final Object zzb = new Object();
    private zzbow zzc;
    private zzbow zzd;

    private static final Context zzc(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return context;
        }
        return applicationContext;
    }

    public final zzbow zza(Context context, VersionInfoParcel versionInfoParcel, @Nullable zzfhx zzfhxVar) {
        zzbow zzbowVar;
        String str;
        synchronized (this.zza) {
            try {
                if (this.zzc == null) {
                    if (((Boolean) zzbfk.zzf.zze()).booleanValue()) {
                        str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zza);
                    } else {
                        str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzb);
                    }
                    this.zzc = new zzbow(zzc(context), versionInfoParcel, str, zzfhxVar);
                }
                zzbowVar = this.zzc;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzbowVar;
    }

    public final zzbow zzb(Context context, VersionInfoParcel versionInfoParcel, zzfhx zzfhxVar) {
        zzbow zzbowVar;
        synchronized (this.zzb) {
            try {
                if (this.zzd == null) {
                    this.zzd = new zzbow(zzc(context), versionInfoParcel, (String) zzbfo.zza.zze(), zzfhxVar);
                }
                zzbowVar = this.zzd;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzbowVar;
    }
}
