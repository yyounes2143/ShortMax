package com.vungle.ads.internal.util;

import android.os.Build;
import android.webkit.URLUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Utils.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Utils {
    @NotNull
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    public final boolean isOSVersionInvalid() {
        if (Build.VERSION.SDK_INT < 25) {
            return true;
        }
        return false;
    }

    public final boolean isUrlValid(@Nullable String str) {
        if (str != null && str.length() != 0 && (URLUtil.isHttpsUrl(str) || URLUtil.isHttpUrl(str))) {
            return true;
        }
        return false;
    }
}
