package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzahi extends zzahf {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int[] zzd;
    public final int[] zze;

    public zzahi(int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
        this.zzd = iArr;
        this.zze = iArr2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahi.class == obj.getClass()) {
            zzahi zzahiVar = (zzahi) obj;
            if (this.zza == zzahiVar.zza && this.zzb == zzahiVar.zzb && this.zzc == zzahiVar.zzc && Arrays.equals(this.zzd, zzahiVar.zzd) && Arrays.equals(this.zze, zzahiVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.zza + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zzb) * 31) + this.zzc) * 31) + Arrays.hashCode(this.zzd)) * 31) + Arrays.hashCode(this.zze);
    }
}
