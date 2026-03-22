package com.google.android.gms.internal.play_billing;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzbg {
    public static int zza(int i10, int i11, String str) {
        String zza;
        if (i10 >= 0 && i10 < i11) {
            return i10;
        }
        if (i10 >= 0) {
            if (i11 < 0) {
                throw new IllegalArgumentException("negative size: " + i11);
            }
            zza = zzbj.zza("%s (%s) must be less than size (%s)", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10), Integer.valueOf(i11));
        } else {
            zza = zzbj.zza("%s (%s) must not be negative", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10));
        }
        throw new IndexOutOfBoundsException(zza);
    }

    public static int zzb(int i10, int i11, String str) {
        if (i10 >= 0 && i10 <= i11) {
            return i10;
        }
        throw new IndexOutOfBoundsException(zzf(i10, i11, TextureRenderKeys.KEY_IS_INDEX));
    }

    public static Object zzc(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static void zzd(int i10, int i11, int i12) {
        String zzf;
        if (i10 >= 0 && i11 >= i10 && i11 <= i12) {
            return;
        }
        if (i10 >= 0 && i10 <= i12) {
            if (i11 >= 0 && i11 <= i12) {
                zzf = zzbj.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                zzf = zzf(i11, i12, "end index");
            }
        } else {
            zzf = zzf(i10, i12, "start index");
        }
        throw new IndexOutOfBoundsException(zzf);
    }

    public static void zze(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalStateException((String) obj);
    }

    private static String zzf(int i10, int i11, String str) {
        if (i10 < 0) {
            return zzbj.zza("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return zzbj.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }
}
