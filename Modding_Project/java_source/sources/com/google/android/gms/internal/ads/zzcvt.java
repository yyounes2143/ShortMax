package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcvt {
    @Nullable
    public static final zzbya zza(Context context, VersionInfoParcel versionInfoParcel, zzfca zzfcaVar, zzbxw zzbxwVar) {
        String str;
        zzbxx zzbxxVar = zzfcaVar.zzA;
        if (zzbxxVar == null) {
            return null;
        }
        zzfcf zzfcfVar = zzfcaVar.zzs;
        if (zzfcfVar == null) {
            str = null;
        } else {
            str = zzfcfVar.zzb;
        }
        return new zzbxv(context, versionInfoParcel, zzbxxVar, str, zzbxwVar);
    }
}
