package com.google.android.gms.internal.fido;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzap {
    public static int zza(int i10, int i11, String str) {
        String zza;
        if (i10 >= 0 && i10 < i11) {
            return i10;
        }
        if (i10 >= 0) {
            if (i11 < 0) {
                throw new IllegalArgumentException("negative size: " + i11);
            }
            zza = zzaq.zza("%s (%s) must be less than size (%s)", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10), Integer.valueOf(i11));
        } else {
            zza = zzaq.zza("%s (%s) must not be negative", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10));
        }
        throw new IndexOutOfBoundsException(zza);
    }

    public static int zzb(int i10, int i11, String str) {
        if (i10 >= 0 && i10 <= i11) {
            return i10;
        }
        throw new IndexOutOfBoundsException(zzf(i10, i11, TextureRenderKeys.KEY_IS_INDEX));
    }

    public static void zzc(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void zzd(boolean z10, String str, char c10) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(zzaq.zza(str, Character.valueOf(c10)));
    }

    public static void zze(int i10, int i11, int i12) {
        String zzf;
        if (i10 >= 0 && i11 >= i10 && i11 <= i12) {
            return;
        }
        if (i10 >= 0 && i10 <= i12) {
            if (i11 >= 0 && i11 <= i12) {
                zzf = zzaq.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                zzf = zzf(i11, i12, "end index");
            }
        } else {
            zzf = zzf(i10, i12, "start index");
        }
        throw new IndexOutOfBoundsException(zzf);
    }

    private static String zzf(int i10, int i11, String str) {
        if (i10 < 0) {
            return zzaq.zza("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return zzaq.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }
}
