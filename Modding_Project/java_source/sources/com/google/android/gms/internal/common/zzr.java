package com.google.android.gms.internal.common;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
public final class zzr {
    public static void zza(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalStateException();
    }

    public static int zzb(int i10, int i11, String str) {
        String zza;
        if (i10 >= 0 && i10 < i11) {
            return i10;
        }
        if (i10 >= 0) {
            if (i11 < 0) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 15);
                sb2.append("negative size: ");
                sb2.append(i11);
                throw new IllegalArgumentException(sb2.toString());
            }
            zza = zzx.zza("%s (%s) must be less than size (%s)", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10), Integer.valueOf(i11));
        } else {
            zza = zzx.zza("%s (%s) must not be negative", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10));
        }
        throw new IndexOutOfBoundsException(zza);
    }

    public static int zzc(int i10, int i11, String str) {
        if (i10 >= 0 && i10 <= i11) {
            return i10;
        }
        throw new IndexOutOfBoundsException(zze(i10, i11, TextureRenderKeys.KEY_IS_INDEX));
    }

    public static void zzd(int i10, int i11, int i12) {
        String zze;
        if (i10 >= 0 && i11 >= i10 && i11 <= i12) {
            return;
        }
        if (i10 >= 0 && i10 <= i12) {
            if (i11 >= 0 && i11 <= i12) {
                zze = zzx.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                zze = zze(i11, i12, "end index");
            }
        } else {
            zze = zze(i10, i12, "start index");
        }
        throw new IndexOutOfBoundsException(zze);
    }

    private static String zze(int i10, int i11, String str) {
        if (i10 < 0) {
            return zzx.zza("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return zzx.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 15);
        sb2.append("negative size: ");
        sb2.append(i11);
        throw new IllegalArgumentException(sb2.toString());
    }
}
