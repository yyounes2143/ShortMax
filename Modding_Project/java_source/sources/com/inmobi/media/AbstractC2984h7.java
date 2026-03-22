package com.inmobi.media;

import android.util.Log;
import androidx.annotation.VisibleForTesting;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.h7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC2984h7 {

    /* renamed from: a  reason: collision with root package name */
    public static byte f24808a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f24809b;

    public static final void a(byte b10, @NotNull String tag, @Nullable String str) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (f24809b) {
            System.out.println((Object) str);
        }
        if (b10 == 1) {
            byte b11 = f24808a;
            if (2 == b11 || 1 == b11 || 3 == b11) {
                Intrinsics.checkNotNull(str);
                Log.e("[InMobi]", str);
            }
        } else if (b10 == 2) {
            byte b12 = f24808a;
            if (2 == b12 || 3 == b12) {
                Intrinsics.checkNotNull(str);
                Log.d("[InMobi]", str);
            }
        } else if (b10 == 3) {
            Intrinsics.checkNotNull(str);
            if (str.length() > 4000) {
                b(tag, str);
            } else {
                Log.d(tag, str);
            }
        }
    }

    public static void b(String str, String str2) {
        if (str2.length() > 4000) {
            String substring = str2.substring(0, 4000);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            Log.d(str, substring);
            String substring2 = str2.substring(4000);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
            b(str, substring2);
            return;
        }
        Log.d(str, str2);
    }

    public static final void a(@NotNull String tag, @Nullable String str) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        a((byte) 3, tag, str);
    }

    public static final void a(@Nullable String str, @Nullable String str2, @Nullable Throwable th2) {
        a((byte) 3, str, str2, th2);
    }

    public static final void a(byte b10, @Nullable String str, @Nullable String str2, @Nullable Throwable th2) {
        if (f24809b) {
            System.out.println((Object) str2);
        }
        if (b10 == 1) {
            byte b11 = f24808a;
            if (2 == b11 || 1 == b11 || 3 == b11) {
                Log.e("[InMobi]", str2, th2);
            }
        } else if (b10 != 2) {
            if (b10 == 3) {
                Log.d(str, str2, th2);
            }
        } else {
            byte b12 = f24808a;
            if (2 == b12 || 3 == b12) {
                Log.d("[InMobi]", str2, th2);
            }
        }
    }

    public static final void a(byte b10) {
        f24808a = b10;
    }

    @VisibleForTesting(otherwise = 5)
    public static final void a(boolean z10) {
        f24809b = z10;
    }
}
