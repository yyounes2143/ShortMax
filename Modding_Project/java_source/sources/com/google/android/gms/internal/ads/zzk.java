package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzk {
    public static final zzk zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    @Nullable
    public final byte[] zze;
    public final int zzf;
    public final int zzg;
    private int zzh;

    static {
        zzi zziVar = new zzi();
        zziVar.zzc(1);
        zziVar.zzb(2);
        zziVar.zzd(3);
        zza = zziVar.zzg();
        zzi zziVar2 = new zzi();
        zziVar2.zzc(1);
        zziVar2.zzb(1);
        zziVar2.zzd(2);
        zziVar2.zzg();
        String str = zzex.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzk(int i10, int i11, int i12, byte[] bArr, int i13, int i14, zzj zzjVar) {
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = i12;
        this.zze = bArr;
        this.zzf = i13;
        this.zzg = i14;
    }

    public static int zza(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 9) {
            return 6;
        }
        if (i10 != 4 && i10 != 5 && i10 != 6 && i10 != 7) {
            return -1;
        }
        return 2;
    }

    public static int zzb(int i10) {
        if (i10 != 1) {
            if (i10 != 4) {
                if (i10 != 13) {
                    if (i10 == 16) {
                        return 6;
                    }
                    if (i10 == 18) {
                        return 7;
                    }
                    if (i10 != 6 && i10 != 7) {
                        return -1;
                    }
                    return 3;
                }
                return 2;
            }
            return 10;
        }
        return 3;
    }

    public static boolean zzg(@Nullable zzk zzkVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (zzkVar == null) {
            return true;
        }
        int i14 = zzkVar.zzb;
        if ((i14 == -1 || i14 == 1 || i14 == 2) && (((i10 = zzkVar.zzc) == -1 || i10 == 2) && (((i11 = zzkVar.zzd) == -1 || i11 == 3) && zzkVar.zze == null && (((i12 = zzkVar.zzg) == -1 || i12 == 8) && ((i13 = zzkVar.zzf) == -1 || i13 == 8))))) {
            return true;
        }
        return false;
    }

    private static String zzh(int i10) {
        if (i10 != -1) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return "Undefined color range " + i10;
                }
                return "Limited range";
            }
            return "Full range";
        }
        return "Unset color range";
    }

    private static String zzi(int i10) {
        if (i10 != -1) {
            if (i10 != 6) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return "Undefined color space " + i10;
                    }
                    return "BT601";
                }
                return "BT709";
            }
            return "BT2020";
        }
        return "Unset color space";
    }

    private static String zzj(int i10) {
        if (i10 != -1) {
            if (i10 != 10) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 6) {
                                if (i10 != 7) {
                                    return "Undefined color transfer " + i10;
                                }
                                return "HLG";
                            }
                            return "ST2084 PQ";
                        }
                        return "SDR SMPTE 170M";
                    }
                    return "sRGB";
                }
                return "Linear";
            }
            return "Gamma 2.2";
        }
        return "Unset color transfer";
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzk.class == obj.getClass()) {
            zzk zzkVar = (zzk) obj;
            if (this.zzb == zzkVar.zzb && this.zzc == zzkVar.zzc && this.zzd == zzkVar.zzd && Arrays.equals(this.zze, zzkVar.zze) && this.zzf == zzkVar.zzf && this.zzg == zzkVar.zzg) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zzh;
        if (i10 == 0) {
            int hashCode = ((((((((((this.zzb + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zzc) * 31) + this.zzd) * 31) + Arrays.hashCode(this.zze)) * 31) + this.zzf) * 31) + this.zzg;
            this.zzh = hashCode;
            return hashCode;
        }
        return i10;
    }

    public final String toString() {
        String str;
        boolean z10;
        int i10 = this.zzf;
        int i11 = this.zzd;
        int i12 = this.zzc;
        String zzi = zzi(this.zzb);
        String zzh = zzh(i12);
        String zzj = zzj(i11);
        String str2 = "NA";
        if (i10 == -1) {
            str = "NA";
        } else {
            str = i10 + "bit Luma";
        }
        int i13 = this.zzg;
        if (i13 != -1) {
            str2 = i13 + "bit Chroma";
        }
        if (this.zze != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return "ColorInfo(" + zzi + ", " + zzh + ", " + zzj + ", " + z10 + ", " + str + ", " + str2 + ")";
    }

    public final zzi zzc() {
        return new zzi(this, null);
    }

    public final String zzd() {
        String str;
        String str2;
        if (zzf()) {
            Object[] objArr = {zzi(this.zzb), zzh(this.zzc), zzj(this.zzd)};
            String str3 = zzex.zza;
            str = String.format(Locale.US, "%s/%s/%s", objArr);
        } else {
            str = "NA/NA/NA";
        }
        if (zze()) {
            str2 = this.zzf + DomExceptionUtils.SEPARATOR + this.zzg;
        } else {
            str2 = "NA/NA";
        }
        return str + DomExceptionUtils.SEPARATOR + str2;
    }

    public final boolean zze() {
        if (this.zzf != -1 && this.zzg != -1) {
            return true;
        }
        return false;
    }

    public final boolean zzf() {
        if (this.zzb != -1 && this.zzc != -1 && this.zzd != -1) {
            return true;
        }
        return false;
    }
}
