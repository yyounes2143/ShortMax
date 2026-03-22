package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzadz {
    public static int zza(int i10) {
        if (i10 != 20) {
            if (i10 != 30) {
                switch (i10) {
                    case 5:
                        return DataLoaderHelper.DATALOADER_KEY_MDL_OPTION_START;
                    case 6:
                        return 768000;
                    case 7:
                        return 192000;
                    case 8:
                        return 2250000;
                    case 9:
                        return TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN;
                    case 10:
                        return 100000;
                    case 11:
                        return 16000;
                    case 12:
                        return 7000;
                    default:
                        switch (i10) {
                            case 14:
                                return 3062500;
                            case 15:
                                return 8000;
                            case 16:
                                return 256000;
                            case 17:
                                return 336000;
                            case 18:
                                return 768000;
                            default:
                                return -2147483647;
                        }
                }
            }
            return 2250000;
        }
        return 63750;
    }

    public static int zzb(zzadw zzadwVar, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 < i11) {
            int zzb = zzadwVar.zzb(bArr, i10 + i12, i11 - i12);
            if (zzb == -1) {
                break;
            }
            i12 += zzb;
        }
        return i12;
    }

    public static void zzc(boolean z10, @Nullable String str) throws zzaz {
        if (z10) {
            return;
        }
        throw zzaz.zza(str, null);
    }

    public static boolean zzd(zzadw zzadwVar, byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        try {
            return zzadwVar.zzm(bArr, 0, i11, z10);
        } catch (EOFException e10) {
            if (z10) {
                return false;
            }
            throw e10;
        }
    }

    public static boolean zze(zzadw zzadwVar, byte[] bArr, int i10, int i11) throws IOException {
        try {
            zzadwVar.zzi(bArr, i10, i11);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean zzf(zzadw zzadwVar, int i10) throws IOException {
        try {
            zzadwVar.zzk(i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
