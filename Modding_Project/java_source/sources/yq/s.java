package yq;

import android.annotation.SuppressLint;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.TypedValue;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.ColorRes;
import androidx.annotation.RequiresPermission;
import androidx.autofill.HintConstants;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import java.io.Closeable;
import java.io.Flushable;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Utils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class s {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final zq.g f71136a = new zq.g();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final zq.b f71137b = new zq.b();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final zq.e f71138c = new zq.e();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final zq.f f71139d = new zq.f();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final zq.d f71140e = new zq.d();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final zq.c f71141f = new zq.c();

    @Nullable
    public static final Boolean A(@Nullable Object obj, @Nullable Boolean bool) {
        return f71137b.e(obj, bool);
    }

    public static /* synthetic */ Boolean B(Object obj, Boolean bool, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            bool = null;
        }
        return A(obj, bool);
    }

    @Nullable
    public static final Double C(@Nullable Object obj, @Nullable Double d10) {
        return f71141f.e(obj, d10);
    }

    public static /* synthetic */ Double D(Object obj, Double d10, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            d10 = null;
        }
        return C(obj, d10);
    }

    @Nullable
    public static final Integer E(@Nullable Object obj, @Nullable Integer num) {
        return f71138c.e(obj, num);
    }

    public static /* synthetic */ Integer F(Object obj, Integer num, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        return E(obj, num);
    }

    @Nullable
    public static final Long G(@Nullable Object obj, @Nullable Long l10) {
        return f71139d.e(obj, l10);
    }

    public static /* synthetic */ Long H(Object obj, Long l10, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            l10 = null;
        }
        return G(obj, l10);
    }

    public static final <T extends Number> float I(@NotNull T t10, float f10) {
        Intrinsics.checkNotNullParameter(t10, "<this>");
        return bt.a.c((t10.floatValue() / f10) * 100) / 100.0f;
    }

    public static final int J(@NotNull Context context, int i10, float f10) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (f10 == 0.0f) {
            return 0;
        }
        return (int) TypedValue.applyDimension(i10, f10, c.b(context));
    }

    public static final <T> void a(@NotNull Collection<T> collection, @Nullable Collection<? extends T> collection2) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        if (collection2 == null) {
            return;
        }
        collection.addAll(collection2);
    }

    public static final void b(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
    }

    @NotNull
    public static final String c(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        String hexString = Integer.toHexString(obj.hashCode());
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(hashCode())");
        return hexString;
    }

    @Nullable
    public static final byte[] d(@NotNull String str, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return e(bytes, i10);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public static final byte[] e(@NotNull byte[] bArr, int i10) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        try {
            return Base64.decode(bArr, i10);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ byte[] f(String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 2;
        }
        return d(str, i10);
    }

    public static /* synthetic */ byte[] g(byte[] bArr, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 2;
        }
        return e(bArr, i10);
    }

    @Nullable
    public static final String h(@NotNull String str, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return i(bytes, i10);
    }

    @Nullable
    public static final String i(@NotNull byte[] bArr, int i10) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        byte[] e10 = e(bArr, i10);
        if (e10 != null) {
            return new String(e10, Charsets.UTF_8);
        }
        return null;
    }

    public static final int j(@NotNull Context context, float f10) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return J(context, 1, f10);
    }

    @Nullable
    public static final <T extends k> T k(@NotNull T[] tArr, @Nullable String str) {
        String str2;
        String key;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (str == null || str.length() == 0) {
            return null;
        }
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        for (T t10 : tArr) {
            if (t10 != null && (key = t10.getKey()) != null) {
                Locale locale2 = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale2, "getDefault()");
                str2 = key.toLowerCase(locale2);
                Intrinsics.checkNotNullExpressionValue(str2, "this as java.lang.String).toLowerCase(locale)");
            } else {
                str2 = null;
            }
            if (StringsKt.H(str2, lowerCase, false, 2, null)) {
                return t10;
            }
        }
        return null;
    }

    public static final void l(@Nullable Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
    }

    public static final <T extends Number> float m(@NotNull T t10, float f10) {
        Intrinsics.checkNotNullParameter(t10, "<this>");
        return (f10 * t10.floatValue()) / 1.0f;
    }

    @Nullable
    public static final ClipboardManager n(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("clipboard");
            if (!(systemService instanceof ClipboardManager)) {
                systemService = null;
            }
            return (ClipboardManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final int o(@NotNull Context context, @ColorRes int i10) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getColor(i10);
    }

    @Nullable
    public static final DownloadManager p(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService(NativeAdPresenter.DOWNLOAD);
            if (!(systemService instanceof DownloadManager)) {
                systemService = null;
            }
            return (DownloadManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public static final InputMethodManager q(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("input_method");
            if (!(systemService instanceof InputMethodManager)) {
                systemService = null;
            }
            return (InputMethodManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    @RequiresPermission(conditional = true, value = "android.permission.ACCESS_COARSE_LOCATION")
    @Nullable
    public static final Location r(@NotNull Context context) {
        LocationManager s10;
        String bestProvider;
        Location lastKnownLocation;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (!u(context, "android.permission.ACCESS_COARSE_LOCATION") || (s10 = s(context)) == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 34) {
            bestProvider = "fused";
        } else {
            bestProvider = s10.getBestProvider(new Criteria(), false);
        }
        if (bestProvider == null) {
            return null;
        }
        Location lastKnownLocation2 = s10.getLastKnownLocation(bestProvider);
        if (lastKnownLocation2 != null) {
            return lastKnownLocation2;
        }
        List<String> allProviders = s10.getAllProviders();
        Intrinsics.checkNotNullExpressionValue(allProviders, "locationManager.allProviders");
        if (allProviders.size() <= 1) {
            return null;
        }
        for (String str : allProviders) {
            if (str != null && !Intrinsics.areEqual(str, bestProvider) && (lastKnownLocation = s10.getLastKnownLocation(str)) != null) {
                return lastKnownLocation;
            }
        }
        return null;
    }

    @Nullable
    public static final LocationManager s(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("location");
            if (!(systemService instanceof LocationManager)) {
                systemService = null;
            }
            return (LocationManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public static final TelephonyManager t(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            if (!(systemService instanceof TelephonyManager)) {
                systemService = null;
            }
            return (TelephonyManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final boolean u(@NotNull Context context, @Nullable String str) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(context, "<this>");
        boolean z10 = false;
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            if (context.checkPermission(str, Process.myPid(), Process.myUid()) == 0) {
                z10 = true;
            }
            bool = Boolean.valueOf(z10);
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    @Nullable
    public static final String v(@Nullable String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            str = null;
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> void w(@NotNull Map<K, V> map, @Nullable Map<K, ? extends V> map2) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map2 == 0) {
            return;
        }
        map.putAll(map2);
    }

    @SuppressLint({"UnspecifiedRegisterReceiverFlag"})
    @Nullable
    public static final Intent x(@NotNull Context context, @NotNull BroadcastReceiver receiver, @NotNull IntentFilter intentFilter) {
        Intent registerReceiver;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        Intrinsics.checkNotNullParameter(intentFilter, "intentFilter");
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver = context.registerReceiver(receiver, intentFilter, 2);
            return registerReceiver;
        }
        return context.registerReceiver(receiver, intentFilter);
    }

    public static final <T> void y(@NotNull Collection<T> collection, @Nullable Collection<? extends T> collection2) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        collection.clear();
        a(collection, collection2);
    }

    public static final <K, V> void z(@NotNull Map<K, V> map, @Nullable Map<K, ? extends V> map2) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        map.clear();
        w(map, map2);
    }
}
