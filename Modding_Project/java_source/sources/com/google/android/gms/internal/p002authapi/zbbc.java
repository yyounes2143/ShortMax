package com.google.android.gms.internal.p002authapi;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbbc  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbbc {
    public static int zba(int i10, int i11, String str) {
        String zba;
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
            zba = zbbd.zba("%s (%s) must be less than size (%s)", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10), Integer.valueOf(i11));
        } else {
            zba = zbbd.zba("%s (%s) must not be negative", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10));
        }
        throw new IndexOutOfBoundsException(zba);
    }

    public static int zbb(int i10, int i11, String str) {
        if (i10 >= 0 && i10 <= i11) {
            return i10;
        }
        throw new IndexOutOfBoundsException(zbd(i10, i11, TextureRenderKeys.KEY_IS_INDEX));
    }

    public static void zbc(int i10, int i11, int i12) {
        String zbd;
        if (i10 >= 0 && i11 >= i10 && i11 <= i12) {
            return;
        }
        if (i10 >= 0 && i10 <= i12) {
            if (i11 >= 0 && i11 <= i12) {
                zbd = zbbd.zba("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                zbd = zbd(i11, i12, "end index");
            }
        } else {
            zbd = zbd(i10, i12, "start index");
        }
        throw new IndexOutOfBoundsException(zbd);
    }

    private static String zbd(int i10, int i11, String str) {
        if (i10 < 0) {
            return zbbd.zba("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return zbbd.zba("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 15);
        sb2.append("negative size: ");
        sb2.append(i11);
        throw new IllegalArgumentException(sb2.toString());
    }
}
