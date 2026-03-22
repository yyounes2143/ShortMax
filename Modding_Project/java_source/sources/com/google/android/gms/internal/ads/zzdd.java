package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdd {
    public static int zza(int i10, int i11, int i12) {
        if (i10 >= 0 && i10 < i12) {
            return i10;
        }
        throw new IndexOutOfBoundsException();
    }

    public static Object zzb(@Nullable Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new IllegalStateException();
    }

    public static String zzc(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    public static void zzd(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void zze(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException((String) obj);
    }

    public static void zzf(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalStateException();
    }

    public static void zzg(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
