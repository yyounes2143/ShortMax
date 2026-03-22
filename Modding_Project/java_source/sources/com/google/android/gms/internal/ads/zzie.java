package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzie {
    public final String zza;
    public final zzz zzb;
    public final zzz zzc;
    public final int zzd;
    public final int zze;

    public zzie(String str, zzz zzzVar, zzz zzzVar2, int i10, int i11) {
        boolean z10 = true;
        if (i10 != 0) {
            if (i11 == 0) {
                i11 = 0;
            } else {
                z10 = false;
            }
        }
        zzdd.zzd(z10);
        zzdd.zzc(str);
        this.zza = str;
        this.zzb = zzzVar;
        zzzVar2.getClass();
        this.zzc = zzzVar2;
        this.zzd = i10;
        this.zze = i11;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzie.class == obj.getClass()) {
            zzie zzieVar = (zzie) obj;
            if (this.zzd == zzieVar.zzd && this.zze == zzieVar.zze && this.zza.equals(zzieVar.zza) && this.zzb.equals(zzieVar.zzb) && this.zzc.equals(zzieVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.zzd + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zze) * 31) + this.zza.hashCode()) * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode();
    }
}
