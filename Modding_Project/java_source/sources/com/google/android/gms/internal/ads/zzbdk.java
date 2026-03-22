package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzbdk {
    public static final void zza(zzbdj zzbdjVar, @Nullable zzbdh zzbdhVar) {
        if (zzbdhVar.zza() != null) {
            if (!TextUtils.isEmpty(zzbdhVar.zzb())) {
                zzbdjVar.zzd(zzbdhVar.zza(), zzbdhVar.zzb(), zzbdhVar.zzc(), zzbdhVar.zzd());
                return;
            }
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
