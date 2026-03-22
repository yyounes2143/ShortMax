package com.google.android.gms.internal.p003firebaseauthapi;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzu {
    public static int zza(int i10, int i11) {
        String zza;
        if (i10 < 0 || i10 >= i11) {
            if (i10 < 0) {
                zza = zzac.zza("%s (%s) must not be negative", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10));
            } else if (i11 >= 0) {
                zza = zzac.zza("%s (%s) must be less than size (%s)", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10), Integer.valueOf(i11));
            } else {
                throw new IllegalArgumentException("negative size: " + i11);
            }
            throw new IndexOutOfBoundsException(zza);
        }
        return i10;
    }

    public static int zzb(int i10, int i11) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(zzb(i10, i11, TextureRenderKeys.KEY_IS_INDEX));
        }
        return i10;
    }

    private static String zzb(int i10, int i11, String str) {
        if (i10 < 0) {
            return zzac.zza("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return zzac.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }

    public static int zza(int i10, int i11, String str) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(zzb(i10, i11, str));
        }
        return i10;
    }

    public static <T> T zza(T t10) {
        t10.getClass();
        return t10;
    }

    public static void zza(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(zzp.zza(obj));
        }
    }

    public static void zza(int i10, int i11, int i12) {
        String zzb;
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            if (i10 < 0 || i10 > i12) {
                zzb = zzb(i10, i12, "start index");
            } else if (i11 >= 0 && i11 <= i12) {
                zzb = zzac.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                zzb = zzb(i11, i12, "end index");
            }
            throw new IndexOutOfBoundsException(zzb);
        }
    }
}
