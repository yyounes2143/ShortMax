package bc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.SystemClock;
import bc.b;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceUtil.kt */
@Metadata
/* loaded from: classes5.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f2594a = new c();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static String f2595b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static String f2596c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static String f2597d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static String f2598e;

    private c() {
    }

    @Nullable
    public final String a() {
        String str;
        PackageManager packageManager;
        PackageInfo packageInfo;
        try {
            String str2 = f2598e;
            if (str2 == null || str2.length() == 0) {
                b.a aVar = b.f2592a;
                Context a10 = aVar.a();
                String str3 = (a10 == null || (str3 = a10.getPackageName()) == null) ? "" : "";
                Context a11 = aVar.a();
                if (a11 != null && (packageManager = a11.getPackageManager()) != null && (packageInfo = packageManager.getPackageInfo(str3, 0)) != null) {
                    str = packageInfo.versionName;
                } else {
                    str = null;
                }
                f2598e = str;
            }
        } catch (Exception unused) {
        }
        return f2598e;
    }

    @Nullable
    public final String b() {
        try {
            String str = f2595b;
            if (str == null || str.length() == 0) {
                f2595b = Build.MANUFACTURER;
            }
        } catch (Exception unused) {
        }
        return f2595b;
    }

    @Nullable
    public final String c() {
        try {
            String str = f2596c;
            if (str == null || str.length() == 0) {
                f2596c = Build.MODEL;
            }
        } catch (Exception unused) {
        }
        return f2596c;
    }

    @Nullable
    public final String d() {
        try {
            String str = f2597d;
            if (str == null || str.length() == 0) {
                f2597d = Build.VERSION.RELEASE;
            }
        } catch (Exception unused) {
        }
        return f2597d;
    }

    public final long e() {
        return SystemClock.elapsedRealtime();
    }

    @SuppressLint({"MissingPermission"})
    public final boolean f() {
        Object obj;
        NetworkInfo activeNetworkInfo;
        try {
            Context a10 = b.f2592a.a();
            if (a10 != null) {
                obj = a10.getSystemService("connectivity");
            } else {
                obj = null;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) obj;
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isAvailable();
        } catch (Error | Exception unused) {
            return false;
        }
    }
}
