package com.applovin.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.TypedValue;
import android.widget.ImageView;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import com.applovin.impl.k7;
import com.applovin.impl.o0;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AppLovinSdkUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f10899a = new Handler(Looper.getMainLooper());

    /* loaded from: classes2.dex */
    public static final class Size {
        public static final Size ZERO = new Size(0, 0);

        /* renamed from: a  reason: collision with root package name */
        private int f10900a;

        /* renamed from: b  reason: collision with root package name */
        private int f10901b;

        public Size(int i10, int i11) {
            this.f10900a = i10;
            this.f10901b = i11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Size)) {
                return false;
            }
            Size size = (Size) obj;
            if (this.f10900a == size.getWidth() && this.f10901b == size.getHeight()) {
                return true;
            }
            return false;
        }

        public int getHeight() {
            return this.f10901b;
        }

        public int getWidth() {
            return this.f10900a;
        }

        public int hashCode() {
            int i10 = this.f10901b;
            int i11 = this.f10900a;
            return i10 ^ ((i11 >>> 16) | (i11 << 16));
        }

        public String toString() {
            return this.f10900a + TextureRenderKeys.KEY_IS_X + this.f10901b;
        }
    }

    private static boolean a(String str, String str2) {
        return StringUtils.startsWithAtLeastOnePrefix(str, CollectionUtils.explode(str2));
    }

    @Dimension(unit = 1)
    public static int dpToPx(Context context, @Dimension(unit = 0) int i10) {
        return (int) TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    public static int getOrientation(Context context) {
        Resources resources;
        Configuration configuration;
        if (context != null && (resources = context.getResources()) != null && (configuration = resources.getConfiguration()) != null) {
            return configuration.orientation;
        }
        return 0;
    }

    public static boolean isEmulator() {
        if (!a(Build.DEVICE, "goldfish,vbox") && !a(Build.HARDWARE, "ranchu,generic,vbox") && !a(Build.MANUFACTURER, "Genymotion") && !a(Build.MODEL, "Android SDK built for x86")) {
            return false;
        }
        return true;
    }

    public static boolean isFireOS(Context context) {
        if (!"amazon".equalsIgnoreCase(Build.MANUFACTURER) && !isFireTv(context)) {
            return false;
        }
        return true;
    }

    public static boolean isFireTv(Context context) {
        return context.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv");
    }

    public static boolean isInclusiveVersion(String str, @Nullable String str2, @Nullable String str3) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        int g10 = k7.g(str);
        if (str2 != null && g10 < k7.g(str2)) {
            return false;
        }
        if (str3 == null || g10 <= k7.g(str3)) {
            return true;
        }
        return false;
    }

    public static boolean isSdkVersionGreaterThanOrEqualTo(String str) {
        if (AppLovinSdk.VERSION_CODE >= k7.g(str)) {
            return true;
        }
        return false;
    }

    public static boolean isTablet(Context context) {
        Point b10 = o0.b(context);
        if (Math.min(b10.x, b10.y) >= dpToPx(context, 600)) {
            return true;
        }
        return false;
    }

    public static boolean isTv(Context context) {
        if (isFireTv(context)) {
            return true;
        }
        PackageManager packageManager = context.getPackageManager();
        if (o0.e()) {
            return packageManager.hasSystemFeature("android.software.leanback");
        }
        return packageManager.hasSystemFeature("android.hardware.type.television");
    }

    public static boolean isValidString(String str) {
        return !TextUtils.isEmpty(str);
    }

    @Dimension(unit = 0)
    public static int pxToDp(Context context, @Dimension(unit = 1) int i10) {
        return (int) Math.ceil(i10 / context.getResources().getDisplayMetrics().density);
    }

    public static void runOnUiThread(Runnable runnable) {
        runOnUiThread(false, runnable);
    }

    public static void runOnUiThreadDelayed(Runnable runnable, long j10) {
        runOnUiThreadDelayed(runnable, j10, f10899a);
    }

    public static void setImageUrl(String str, ImageView imageView, AppLovinSdk appLovinSdk) {
        ImageViewUtils.setImageUri(imageView, Uri.parse(str), appLovinSdk.a());
    }

    public static Map<String, String> toMap(JSONObject jSONObject) throws JSONException {
        return JsonUtils.toStringMap(jSONObject);
    }

    public static void runOnUiThread(boolean z10, Runnable runnable) {
        if (!z10 && k7.h()) {
            runnable.run();
        } else {
            f10899a.post(runnable);
        }
    }

    public static void runOnUiThreadDelayed(Runnable runnable, long j10, Handler handler) {
        if (j10 > 0) {
            handler.postDelayed(runnable, j10);
        } else if (k7.h()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }
}
