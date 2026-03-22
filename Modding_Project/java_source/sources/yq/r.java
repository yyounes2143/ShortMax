package yq;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.location.Location;
import android.net.Uri;
import android.os.Environment;
import androidx.annotation.RequiresPermission;
import java.io.Closeable;
import java.io.Flushable;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Utils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class r {
    @NotNull

    /* renamed from: a */
    public static final r f71133a = new r();
    @NotNull

    /* renamed from: b */
    private static final char[] f71134b;
    @NotNull

    /* renamed from: c */
    private static final char[] f71135c;

    static {
        char[] charArray = "0123456789abcdef".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        f71134b = charArray;
        char[] charArray2 = "0123456789ABCDEF".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray2, "this as java.lang.String).toCharArray()");
        f71135c = charArray2;
    }

    private r() {
    }

    public static final float a(int i10) {
        return s.I(Integer.valueOf(Color.blue(i10)), 255.0f);
    }

    public static final void b(@Nullable Closeable closeable) {
        s.b(closeable);
    }

    @Nullable
    public static final byte[] c(@NotNull String base64, int i10) {
        Intrinsics.checkNotNullParameter(base64, "base64");
        return s.d(base64, i10);
    }

    public static /* synthetic */ byte[] d(String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 2;
        }
        return c(str, i10);
    }

    @Nullable
    public static final String e(@NotNull String data, int i10) {
        Intrinsics.checkNotNullParameter(data, "data");
        return s.h(data, i10);
    }

    public static /* synthetic */ String f(String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 2;
        }
        return e(str, i10);
    }

    public static final void g(@Nullable Flushable flushable) {
        s.l(flushable);
    }

    @Nullable
    public static final DownloadManager h(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return s.p(context);
    }

    @RequiresPermission(conditional = true, value = "android.permission.ACCESS_COARSE_LOCATION")
    @Nullable
    public static final Location i(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return s.r(context);
    }

    @Nullable
    public static final Uri j(@Nullable String str) {
        try {
            return Uri.parse(k(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public static final String k(@Nullable String str) {
        if (str != null && str.length() != 0) {
            if (!q(str)) {
                try {
                } catch (UnsupportedEncodingException | IllegalArgumentException unused) {
                    return str;
                }
            }
            return URLDecoder.decode(str, "UTF-8");
        }
        return null;
    }

    public static final float l(int i10) {
        return s.I(Integer.valueOf(Color.green(i10)), 255.0f);
    }

    public static final <T> void m(@Nullable T t10, @NotNull d<T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (t10 != null) {
            action.execute(t10);
        }
    }

    public static final boolean n() {
        return Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted");
    }

    public static final boolean o(@Nullable Uri uri) {
        if (uri != null) {
            String uri2 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(uri2, "uri.toString()");
            if (p(uri2)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean p(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (!StringsKt.V(url, "http://", false, 2, null) && !StringsKt.V(url, "https://", false, 2, null)) {
            return false;
        }
        return true;
    }

    public static final boolean q(@Nullable String str) {
        Boolean bool;
        if (str != null && str.length() != 0) {
            try {
                new URL(str);
                bool = Boolean.TRUE;
            } catch (Throwable unused) {
                bool = null;
            }
            return Intrinsics.areEqual(bool, Boolean.TRUE);
        }
        return false;
    }

    @Nullable
    public static final Integer r(@Nullable String str) {
        if (str == null) {
            return null;
        }
        if (str.length() != 0) {
            try {
            } catch (Throwable unused) {
                return null;
            }
        }
        return Integer.valueOf(Color.parseColor(str));
    }

    public static final float s(int i10) {
        return s.I(Integer.valueOf(Color.red(i10)), 255.0f);
    }

    @Nullable
    public static final Intent t(@NotNull BroadcastReceiver receiver, @NotNull Context context, @NotNull IntentFilter intentFilter) {
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intentFilter, "intentFilter");
        return s.x(context, receiver, intentFilter);
    }
}
