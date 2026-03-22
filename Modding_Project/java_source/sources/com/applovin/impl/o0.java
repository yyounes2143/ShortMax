package com.applovin.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.RoundedCorner;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class o0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Map f9056a = Collections.synchronizedMap(new HashMap(4));

    /* renamed from: b  reason: collision with root package name */
    private static final Map f9057b = Collections.synchronizedMap(new HashMap(4));

    /* renamed from: c  reason: collision with root package name */
    private static final Map f9058c = Collections.synchronizedMap(new HashMap(4));

    /* renamed from: d  reason: collision with root package name */
    private static final Map f9059d = new HashMap(2);

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f9060a;

        /* renamed from: b  reason: collision with root package name */
        private int f9061b;

        /* renamed from: c  reason: collision with root package name */
        private int f9062c;

        /* renamed from: d  reason: collision with root package name */
        private int f9063d;

        public a(int i10, int i11, int i12, int i13) {
            this.f9060a = i10;
            this.f9061b = i11;
            this.f9062c = i12;
            this.f9063d = i13;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public int b() {
            return this.f9060a;
        }

        public int c() {
            return this.f9062c;
        }

        public int d() {
            return this.f9061b;
        }

        public Map e() {
            HashMap hashMap = new HashMap();
            hashMap.put(TtmlNode.LEFT, Integer.valueOf(this.f9060a));
            hashMap.put("top", Integer.valueOf(this.f9061b));
            hashMap.put(TtmlNode.RIGHT, Integer.valueOf(this.f9062c));
            hashMap.put("bottom", Integer.valueOf(this.f9063d));
            return hashMap;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (aVar.a(this) && b() == aVar.b() && d() == aVar.d() && c() == aVar.c() && a() == aVar.a()) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return ((((((b() + 59) * 59) + d()) * 59) + c()) * 59) + a();
        }

        public String toString() {
            return "CompatibilityUtils.Insets(left=" + b() + ", top=" + d() + ", right=" + c() + ", bottom=" + a() + ")";
        }

        public int a() {
            return this.f9063d;
        }

        public static a a(Insets insets) {
            int i10;
            int i11;
            int i12;
            int i13;
            i10 = insets.left;
            i11 = insets.top;
            i12 = insets.right;
            i13 = insets.bottom;
            return new a(i10, i11, i12, i13);
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f9064a;

        /* renamed from: b  reason: collision with root package name */
        private int f9065b;

        /* renamed from: c  reason: collision with root package name */
        private int f9066c;

        /* renamed from: d  reason: collision with root package name */
        private int f9067d;

        /* loaded from: classes2.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private int f9068a;

            /* renamed from: b  reason: collision with root package name */
            private int f9069b;

            /* renamed from: c  reason: collision with root package name */
            private int f9070c;

            /* renamed from: d  reason: collision with root package name */
            private int f9071d;

            a() {
            }

            public a a(int i10) {
                this.f9070c = i10;
                return this;
            }

            public a b(int i10) {
                this.f9071d = i10;
                return this;
            }

            public a c(int i10) {
                this.f9068a = i10;
                return this;
            }

            public a d(int i10) {
                this.f9069b = i10;
                return this;
            }

            public String toString() {
                return "CompatibilityUtils.ScreenCornerRadii.ScreenCornerRadiiBuilder(topLeft=" + this.f9068a + ", topRight=" + this.f9069b + ", bottomLeft=" + this.f9070c + ", bottomRight=" + this.f9071d + ")";
            }

            public b a() {
                return new b(this.f9068a, this.f9069b, this.f9070c, this.f9071d);
            }
        }

        b(int i10, int i11, int i12, int i13) {
            this.f9064a = i10;
            this.f9065b = i11;
            this.f9066c = i12;
            this.f9067d = i13;
        }

        protected boolean a(Object obj) {
            return obj instanceof b;
        }

        public int b() {
            return this.f9067d;
        }

        public int c() {
            return this.f9064a;
        }

        public int d() {
            return this.f9065b;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (bVar.a(this) && c() == bVar.c() && d() == bVar.d() && a() == bVar.a() && b() == bVar.b()) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return ((((((c() + 59) * 59) + d()) * 59) + a()) * 59) + b();
        }

        public String toString() {
            return "CompatibilityUtils.ScreenCornerRadii(topLeft=" + c() + ", topRight=" + d() + ", bottomLeft=" + a() + ", bottomRight=" + b() + ")";
        }

        public int a() {
            return this.f9066c;
        }
    }

    public static void a() {
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        } catch (Throwable unused) {
        }
    }

    public static Point b(Context context) {
        WindowMetrics maximumWindowMetrics;
        Rect bounds;
        int orientation = AppLovinSdkUtils.getOrientation(context);
        com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.D0;
        boolean z10 = kVar == null || ((Boolean) kVar.a(v4.f10352s6)).booleanValue();
        if (!c(context) || z10) {
            Map map = f9059d;
            if (map.containsKey(Integer.valueOf(orientation))) {
                return (Point) map.get(Integer.valueOf(orientation));
            }
        }
        Point point = new Point();
        point.x = 480;
        point.y = 320;
        WindowManager f10 = k7.f(context);
        if (f10 != null) {
            Display defaultDisplay = f10.getDefaultDisplay();
            if (b()) {
                maximumWindowMetrics = f10.getMaximumWindowMetrics();
                bounds = maximumWindowMetrics.getBounds();
                point = new Point(bounds.width(), bounds.height());
            } else {
                defaultDisplay.getRealSize(point);
            }
        }
        f9059d.put(Integer.valueOf(orientation), point);
        return point;
    }

    public static boolean c(Context context) {
        PackageManager packageManager = context.getPackageManager();
        return packageManager.hasSystemFeature("android.hardware.type.foldable") || packageManager.hasSystemFeature("android.hardware.sensor.hinge_angle");
    }

    public static boolean d() {
        if (Build.VERSION.SDK_INT >= 34) {
            return true;
        }
        return false;
    }

    public static boolean e() {
        return true;
    }

    public static boolean f() {
        return true;
    }

    public static boolean g() {
        return true;
    }

    public static boolean h() {
        if (Build.VERSION.SDK_INT >= 26) {
            return true;
        }
        return false;
    }

    public static boolean i() {
        if (Build.VERSION.SDK_INT >= 28) {
            return true;
        }
        return false;
    }

    public static boolean j() {
        if (Build.VERSION.SDK_INT >= 29) {
            return true;
        }
        return false;
    }

    public static boolean k() {
        if (Build.VERSION.SDK_INT >= 33) {
            return true;
        }
        return false;
    }

    public static boolean l() {
        if (Build.VERSION.SDK_INT >= 31) {
            return true;
        }
        return false;
    }

    public static a c(WindowInsets windowInsets, com.applovin.impl.sdk.k kVar) {
        int statusBars;
        Insets insetsIgnoringVisibility;
        if (kVar == null || !((Boolean) kVar.a(v4.B4)).booleanValue() || windowInsets == null || !b()) {
            return null;
        }
        statusBars = WindowInsets.Type.statusBars();
        insetsIgnoringVisibility = windowInsets.getInsetsIgnoringVisibility(statusBars);
        return a.a(insetsIgnoringVisibility);
    }

    public static Point a(Context context) {
        Display defaultDisplay = k7.f(context).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public static Map c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (Map) f9057b.get(str);
    }

    public static a a(WindowInsets windowInsets, com.applovin.impl.sdk.k kVar) {
        int displayCutout;
        Insets insetsIgnoringVisibility;
        int i10;
        int i11;
        int i12;
        int i13;
        if (kVar == null || !((Boolean) kVar.a(v4.B4)).booleanValue() || windowInsets == null || !b()) {
            return null;
        }
        displayCutout = WindowInsets.Type.displayCutout();
        insetsIgnoringVisibility = windowInsets.getInsetsIgnoringVisibility(displayCutout);
        i10 = insetsIgnoringVisibility.left;
        i11 = insetsIgnoringVisibility.top;
        i12 = insetsIgnoringVisibility.right;
        i13 = insetsIgnoringVisibility.bottom;
        return new a(i10, i11, i12, i13);
    }

    public static void c(a aVar, String str) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        f9057b.put(str, aVar.e());
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 35;
    }

    public static Map a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (Map) f9056a.get(str);
    }

    public static void a(a aVar, String str) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        f9056a.put(str, aVar.e());
    }

    public static a b(WindowInsets windowInsets, com.applovin.impl.sdk.k kVar) {
        int navigationBars;
        Insets insetsIgnoringVisibility;
        if (kVar == null || !((Boolean) kVar.a(v4.B4)).booleanValue() || windowInsets == null || !b()) {
            return null;
        }
        navigationBars = WindowInsets.Type.navigationBars();
        insetsIgnoringVisibility = windowInsets.getInsetsIgnoringVisibility(navigationBars);
        return a.a(insetsIgnoringVisibility);
    }

    public static b a(Context context, com.applovin.impl.sdk.k kVar) {
        WindowManager f10;
        if (((Boolean) kVar.a(v4.V3)).booleanValue() && l() && (f10 = k7.f(context)) != null) {
            try {
                Display defaultDisplay = f10.getDefaultDisplay();
                return new b.a().c(a(0, defaultDisplay)).d(a(1, defaultDisplay)).a(a(3, defaultDisplay)).b(a(2, defaultDisplay)).a();
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static Map b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (Map) f9058c.get(str);
    }

    public static void b(a aVar, String str) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        f9058c.put(str, aVar.e());
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 30;
    }

    private static int a(int i10, Display display) {
        RoundedCorner roundedCorner;
        int radius;
        roundedCorner = display.getRoundedCorner(i10);
        if (roundedCorner != null) {
            radius = roundedCorner.getRadius();
            return radius;
        }
        return -1;
    }

    public static boolean a(String str, Context context) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
