package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbm {
    public final int zza;
    public final String zzb;
    public final int zzc;
    private final zzz[] zzd;
    private int zze;

    static {
        String str = zzex.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzbm(String str, zzz... zzzVarArr) {
        boolean z10;
        int length = zzzVarArr.length;
        int i10 = 1;
        if (length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        this.zzb = str;
        this.zzd = zzzVarArr;
        this.zza = length;
        int zzb = zzay.zzb(zzzVarArr[0].zzo);
        this.zzc = zzb == -1 ? zzay.zzb(zzzVarArr[0].zzn) : zzb;
        String zzc = zzc(zzzVarArr[0].zzd);
        int i11 = zzzVarArr[0].zzf | 16384;
        while (true) {
            zzz[] zzzVarArr2 = this.zzd;
            if (i10 < zzzVarArr2.length) {
                if (!zzc.equals(zzc(zzzVarArr2[i10].zzd))) {
                    zzz[] zzzVarArr3 = this.zzd;
                    zzd("languages", zzzVarArr3[0].zzd, zzzVarArr3[i10].zzd, i10);
                    return;
                }
                zzz[] zzzVarArr4 = this.zzd;
                if (i11 != (zzzVarArr4[i10].zzf | 16384)) {
                    zzd("role flags", Integer.toBinaryString(zzzVarArr4[0].zzf), Integer.toBinaryString(this.zzd[i10].zzf), i10);
                    return;
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private static String zzc(@Nullable String str) {
        if (str != null && !str.equals(C.LANGUAGE_UNDETERMINED)) {
            return str;
        }
        return "";
    }

    private static void zzd(String str, @Nullable String str2, @Nullable String str3, int i10) {
        zzea.zzd("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbm.class == obj.getClass()) {
            zzbm zzbmVar = (zzbm) obj;
            if (this.zzb.equals(zzbmVar.zzb) && Arrays.equals(this.zzd, zzbmVar.zzd)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zze;
        if (i10 == 0) {
            int hashCode = ((this.zzb.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + Arrays.hashCode(this.zzd);
            this.zze = hashCode;
            return hashCode;
        }
        return i10;
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zzd);
        return this.zzb + ": " + arrays;
    }

    public final int zza(zzz zzzVar) {
        int i10 = 0;
        while (true) {
            zzz[] zzzVarArr = this.zzd;
            if (i10 < zzzVarArr.length) {
                if (zzzVar == zzzVarArr[i10]) {
                    return i10;
                }
                i10++;
            } else {
                return -1;
            }
        }
    }

    public final zzz zzb(int i10) {
        return this.zzd[i10];
    }
}
