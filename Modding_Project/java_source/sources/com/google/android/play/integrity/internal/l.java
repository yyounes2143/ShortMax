package com.google.android.play.integrity.internal;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class l {
    public static int a(int i10, int i11, String str) {
        String a10;
        if (i10 >= 0 && i10 < i11) {
            return i10;
        }
        if (i10 >= 0) {
            if (i11 < 0) {
                throw new IllegalArgumentException("negative size: " + i11);
            }
            a10 = m.a("%s (%s) must be less than size (%s)", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10), Integer.valueOf(i11));
        } else {
            a10 = m.a("%s (%s) must not be negative", TextureRenderKeys.KEY_IS_INDEX, Integer.valueOf(i10));
        }
        throw new IndexOutOfBoundsException(a10);
    }

    public static int b(int i10, int i11, String str) {
        if (i10 >= 0 && i10 <= i11) {
            return i10;
        }
        throw new IndexOutOfBoundsException(d(i10, i11, TextureRenderKeys.KEY_IS_INDEX));
    }

    public static void c(int i10, int i11, int i12) {
        String d10;
        if (i10 >= 0 && i11 >= i10 && i11 <= i12) {
            return;
        }
        if (i10 >= 0 && i10 <= i12) {
            if (i11 >= 0 && i11 <= i12) {
                d10 = m.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                d10 = d(i11, i12, "end index");
            }
        } else {
            d10 = d(i10, i12, "start index");
        }
        throw new IndexOutOfBoundsException(d10);
    }

    private static String d(int i10, int i11, String str) {
        if (i10 < 0) {
            return m.a("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return m.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }
}
