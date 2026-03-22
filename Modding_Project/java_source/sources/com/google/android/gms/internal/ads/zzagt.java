package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzagt implements zzau {
    public final int zza;
    public final String zzb;
    public final String zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final byte[] zzh;

    public zzagt(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.zza = i10;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = i11;
        this.zze = i12;
        this.zzf = i13;
        this.zzg = i14;
        this.zzh = bArr;
    }

    public static zzagt zzb(zzen zzenVar) {
        int zzg = zzenVar.zzg();
        String zze = zzay.zze(zzenVar.zzB(zzenVar.zzg(), StandardCharsets.US_ASCII));
        String zzB = zzenVar.zzB(zzenVar.zzg(), StandardCharsets.UTF_8);
        int zzg2 = zzenVar.zzg();
        int zzg3 = zzenVar.zzg();
        int zzg4 = zzenVar.zzg();
        int zzg5 = zzenVar.zzg();
        int zzg6 = zzenVar.zzg();
        byte[] bArr = new byte[zzg6];
        zzenVar.zzH(bArr, 0, zzg6);
        return new zzagt(zzg, zze, zzB, zzg2, zzg3, zzg4, zzg5, bArr);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagt.class == obj.getClass()) {
            zzagt zzagtVar = (zzagt) obj;
            if (this.zza == zzagtVar.zza && this.zzb.equals(zzagtVar.zzb) && this.zzc.equals(zzagtVar.zzc) && this.zzd == zzagtVar.zzd && this.zze == zzagtVar.zze && this.zzf == zzagtVar.zzf && this.zzg == zzagtVar.zzg && Arrays.equals(this.zzh, zzagtVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.zza + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode()) * 31) + this.zzd) * 31) + this.zze) * 31) + this.zzf) * 31) + this.zzg) * 31) + Arrays.hashCode(this.zzh);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.zzb + ", description=" + this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final void zza(zzar zzarVar) {
        zzarVar.zza(this.zzh, this.zza);
    }
}
