package a2;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.View;
import android.view.Window;
import com.facebook.internal.u0;
import com.facebook.v;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppEventUtility.kt */
@Metadata
/* loaded from: classes3.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f77a = new h();

    private h() {
    }

    @NotNull
    public static final String c() {
        Context l10 = v.l();
        try {
            String str = l10.getPackageManager().getPackageInfo(l10.getPackageName(), 0).versionName;
            Intrinsics.checkNotNullExpressionValue(str, "{\n      val packageInfo …ageInfo.versionName\n    }");
            return str;
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    @Nullable
    public static final View d(@Nullable Activity activity) {
        if (o4.a.d(h.class) || activity == null) {
            return null;
        }
        try {
            Window window = activity.getWindow();
            if (window == null) {
                return null;
            }
            return window.getDecorView().getRootView();
        } catch (Exception unused) {
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, h.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0069, code lost:
        if (kotlin.text.StringsKt.V(r0, "generic", false, 2, null) == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean e() {
        /*
            java.lang.String r0 = android.os.Build.FINGERPRINT
            java.lang.String r1 = "FINGERPRINT"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r2 = "generic"
            r3 = 0
            r4 = 2
            r5 = 0
            boolean r6 = kotlin.text.StringsKt.V(r0, r2, r3, r4, r5)
            if (r6 != 0) goto L73
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "unknown"
            boolean r0 = kotlin.text.StringsKt.V(r0, r1, r3, r4, r5)
            if (r0 != 0) goto L73
            java.lang.String r0 = android.os.Build.MODEL
            java.lang.String r1 = "MODEL"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r6 = "google_sdk"
            boolean r7 = kotlin.text.StringsKt.b0(r0, r6, r3, r4, r5)
            if (r7 != 0) goto L73
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r7 = "Emulator"
            boolean r7 = kotlin.text.StringsKt.b0(r0, r7, r3, r4, r5)
            if (r7 != 0) goto L73
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "Android SDK built for x86"
            boolean r0 = kotlin.text.StringsKt.b0(r0, r1, r3, r4, r5)
            if (r0 != 0) goto L73
            java.lang.String r0 = android.os.Build.MANUFACTURER
            java.lang.String r1 = "MANUFACTURER"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "Genymotion"
            boolean r0 = kotlin.text.StringsKt.b0(r0, r1, r3, r4, r5)
            if (r0 != 0) goto L73
            java.lang.String r0 = android.os.Build.BRAND
            java.lang.String r1 = "BRAND"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = kotlin.text.StringsKt.V(r0, r2, r3, r4, r5)
            if (r0 == 0) goto L6b
            java.lang.String r0 = android.os.Build.DEVICE
            java.lang.String r1 = "DEVICE"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = kotlin.text.StringsKt.V(r0, r2, r3, r4, r5)
            if (r0 != 0) goto L73
        L6b:
            java.lang.String r0 = android.os.Build.PRODUCT
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r0)
            if (r0 == 0) goto L74
        L73:
            r3 = 1
        L74:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.h.e():boolean");
    }

    public static final double f(@Nullable String str) {
        try {
            Matcher matcher = Pattern.compile("[-+]*\\d+([.,]\\d+)*([.,]\\d+)?", 8).matcher(str);
            if (!matcher.find()) {
                return 0.0d;
            }
            return NumberFormat.getNumberInstance(u0.B()).parse(matcher.group(0)).doubleValue();
        } catch (ParseException unused) {
            return 0.0d;
        }
    }

    public static final void a() {
    }

    public static final void b() {
    }
}
