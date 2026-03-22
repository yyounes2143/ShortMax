package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.hardware.display.DisplayManager;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.huawei.hms.framework.common.ContainerUtils;
import com.inmobi.media.U3;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class U3 {

    /* renamed from: c  reason: collision with root package name */
    public static String f24246c;

    /* renamed from: f  reason: collision with root package name */
    public static JSONObject f24249f;

    /* renamed from: g  reason: collision with root package name */
    public static Integer f24250g;

    /* renamed from: h  reason: collision with root package name */
    public static Float f24251h;

    /* renamed from: a  reason: collision with root package name */
    public static final V3 f24244a = new V3(0, 2.0f, 0);

    /* renamed from: b  reason: collision with root package name */
    public static final T3 f24245b = new T3(0, 0);

    /* renamed from: d  reason: collision with root package name */
    public static float f24247d = -1.0f;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f24248e = true;

    /* renamed from: i  reason: collision with root package name */
    public static final boolean f24252i = L3.f23796a.F();

    public static String a() {
        Display a10;
        Context d10 = Uc.d();
        if (d10 == null || (a10 = a(d10)) == null) {
            return "0x0";
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        a10.getMetrics(displayMetrics);
        int i10 = displayMetrics.widthPixels;
        int i11 = displayMetrics.heightPixels;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        sb2.append('x');
        sb2.append(i11);
        return sb2.toString();
    }

    public static float b() {
        Display a10;
        if (f24247d == -1.0f) {
            Context d10 = Uc.d();
            if (d10 == null || (a10 = a(d10)) == null) {
                return 2.0f;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            a10.getMetrics(displayMetrics);
            float f10 = displayMetrics.density;
            if (f10 == 0.0f) {
                return 2.0f;
            }
            f24247d = f10;
        }
        return f24247d;
    }

    public static HashMap c() {
        float f10;
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("d-device-screen-density", String.valueOf(b()));
            V3 d10 = d();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(d10.f24297a);
            sb2.append('X');
            sb2.append(d10.f24298b);
            hashMap.put("d-device-screen-size", sb2.toString());
            hashMap.put("d-density-dependent-screen-size", a());
            hashMap.put("d-orientation", String.valueOf((int) g()));
            Float f11 = f24251h;
            if (f11 != null) {
                f10 = f11.floatValue();
            } else {
                f10 = 37.0f;
            }
            hashMap.put("d-textsize", String.valueOf(f10));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("U3", "TAG");
        }
        return hashMap;
    }

    public static V3 d() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return f24244a;
        }
        Display a10 = a(d10);
        if (a10 == null) {
            return f24244a;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        a10.getMetrics(displayMetrics);
        float f10 = displayMetrics.density;
        return new V3((int) (displayMetrics.widthPixels / f10), f10, (int) (displayMetrics.heightPixels / f10));
    }

    public static String e() {
        String str = null;
        if (f24248e) {
            return null;
        }
        String str2 = f24246c;
        if (str2 != null) {
            return str2;
        }
        Context d10 = Uc.d();
        if (d10 != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            C6 a10 = B6.a(d10, "display_info_store");
            Intrinsics.checkNotNullParameter("gesture_margin", "key");
            str = a10.f23530a.getString("gesture_margin", null);
        }
        f24246c = str;
        return str;
    }

    public static Integer f() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return null;
        }
        int i10 = Settings.Secure.getInt(d10.getContentResolver(), "navigation_mode", -1);
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                return null;
            }
            return 1;
        }
        return 0;
    }

    public static byte g() {
        Display a10;
        int rotation;
        Context d10 = Uc.d();
        if (d10 == null || (a10 = a(d10)) == null || (rotation = a10.getRotation()) == 0) {
            return (byte) 1;
        }
        if (rotation == 1) {
            return (byte) 3;
        }
        if (rotation == 2) {
            return (byte) 2;
        }
        if (rotation != 3) {
            Intrinsics.checkNotNullExpressionValue("U3", "TAG");
            return (byte) 1;
        }
        return (byte) 4;
    }

    public static V3 h() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return f24244a;
        }
        Display a10 = a(d10);
        if (a10 == null) {
            return f24244a;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        a10.getRealMetrics(displayMetrics);
        float f10 = displayMetrics.density;
        return new V3((int) (displayMetrics.widthPixels / f10), f10, (int) (displayMetrics.heightPixels / f10));
    }

    public static final void b(Context context) {
        Window window;
        WindowInsets rootWindowInsets;
        if (f24248e || !(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null) {
            return;
        }
        a(rootWindowInsets, context);
    }

    public static void a(final WindowInsets insets, final Context context) {
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (f24248e) {
            return;
        }
        Uc.a(new Runnable() { // from class: ub.j2
            @Override // java.lang.Runnable
            public final void run() {
                U3.b(insets, context);
            }
        });
    }

    public static Display a(Context context) {
        if (L3.f23796a.E()) {
            Object systemService = context.getSystemService("display");
            DisplayManager displayManager = systemService instanceof DisplayManager ? (DisplayManager) systemService : null;
            if (displayManager != null) {
                return displayManager.getDisplay(0);
            }
            return null;
        }
        Object systemService2 = context.getSystemService("window");
        WindowManager windowManager = systemService2 instanceof WindowManager ? (WindowManager) systemService2 : null;
        if (windowManager != null) {
            return windowManager.getDefaultDisplay();
        }
        return null;
    }

    public static final void b(WindowInsets insets, Context context) {
        Insets systemGestureInsets;
        String insets2;
        Intrinsics.checkNotNullParameter(insets, "$insets");
        try {
            systemGestureInsets = insets.getSystemGestureInsets();
            insets2 = systemGestureInsets.toString();
            Intrinsics.checkNotNullExpressionValue(insets2, "toString(...)");
            String[] strArr = (String[]) new Regex("Insets").q(insets2, 0).toArray(new String[0]);
            StringBuffer stringBuffer = new StringBuffer();
            if (strArr.length > 1) {
                String[] strArr2 = (String[]) new Regex(",").q(new Regex("[^0-9,=a-zA-Z]*").replace(strArr[1], ""), 0).toArray(new String[0]);
                stringBuffer.append("{");
                int length = strArr2.length;
                for (int i10 = 0; i10 < length; i10++) {
                    String[] strArr3 = (String[]) new Regex(ContainerUtils.KEY_VALUE_DELIMITER).q(strArr2[i10], 0).toArray(new String[0]);
                    if (strArr3.length == 2) {
                        stringBuffer.append('\"' + strArr3[0] + '\"');
                        stringBuffer.append(":");
                        stringBuffer.append(B2.b(((float) Integer.parseInt(strArr3[1])) / b()));
                        if (i10 < strArr2.length - 1) {
                            stringBuffer.append(", ");
                        }
                    }
                }
                stringBuffer.append("}");
            }
            if (stringBuffer.length() > 0) {
                f24246c = stringBuffer.toString();
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                Intrinsics.checkNotNull(context);
                C6.a(B6.a(context, "display_info_store"), "gesture_margin", stringBuffer.toString(), false, 4, (Object) null);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("U3", "TAG");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
        if (r3 == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004e, code lost:
        if (r3 == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
        if (r3 == 0) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.view.WindowInsets r3) {
        /*
            java.lang.String r0 = "insets"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            com.inmobi.media.L3 r0 = com.inmobi.media.L3.f23796a
            boolean r0 = r0.z()
            if (r0 == 0) goto L5d
            byte r0 = g()
            com.inmobi.media.pa r0 = com.inmobi.media.AbstractC3131qa.a(r0)
            int r1 = androidx.core.view.WindowInsetsCompat.Type.systemGestures()
            android.graphics.Insets r3 = androidx.core.view.v1.a(r3, r1)
            java.lang.String r1 = "getInsets(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r1)
            int r0 = r0.ordinal()
            r1 = 1
            if (r0 == 0) goto L51
            if (r0 == r1) goto L44
            r2 = 2
            if (r0 == r2) goto L51
            r2 = 3
            if (r0 != r2) goto L3e
            int r0 = androidx.appcompat.widget.l.a(r3)
            if (r0 != 0) goto L5e
            int r3 = androidx.appcompat.widget.m.a(r3)
            if (r3 != 0) goto L5e
            goto L5d
        L3e:
            kotlin.NoWhenBranchMatchedException r3 = new kotlin.NoWhenBranchMatchedException
            r3.<init>()
            throw r3
        L44:
            int r0 = androidx.appcompat.widget.j.a(r3)
            if (r0 != 0) goto L5e
            int r3 = androidx.appcompat.widget.m.a(r3)
            if (r3 != 0) goto L5e
            goto L5d
        L51:
            int r0 = androidx.appcompat.widget.j.a(r3)
            if (r0 != 0) goto L5e
            int r3 = androidx.appcompat.widget.l.a(r3)
            if (r3 != 0) goto L5e
        L5d:
            r1 = 0
        L5e:
            java.lang.String r3 = "U3"
            java.lang.String r0 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.U3.a(android.view.WindowInsets):int");
    }

    public static void a(final LinkedHashMap value) {
        Intrinsics.checkNotNullParameter(value, "value");
        final Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        Uc.a(new Runnable() { // from class: ub.k2
            @Override // java.lang.Runnable
            public final void run() {
                U3.a(value, d10);
            }
        });
    }

    public static final void a(Map value, Context context) {
        Intrinsics.checkNotNullParameter(value, "$value");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("U3", "TAG");
        Objects.toString(value);
        if (f24249f == null) {
            f24249f = new JSONObject();
        }
        for (Number number : value.keySet()) {
            int intValue = number.intValue();
            JSONObject jSONObject = f24249f;
            if (jSONObject != null) {
                jSONObject.put(String.valueOf(intValue), value.get(Integer.valueOf(intValue)));
            }
        }
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6 a10 = B6.a(context, "display_info_store");
        JSONObject jSONObject2 = f24249f;
        C6.a(a10, "safe_area", jSONObject2 != null ? jSONObject2.toString() : null, false, 4, (Object) null);
    }

    public static void a(final Integer num) {
        final Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        Uc.a(new Runnable() { // from class: ub.i2
            @Override // java.lang.Runnable
            public final void run() {
                U3.a(num, d10);
            }
        });
    }

    public static final void a(Integer num, Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("U3", "TAG");
        f24250g = num;
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6.a(B6.a(context, "display_info_store"), "nav_bar_type", num != null ? num.intValue() : -1, false, 4, (Object) null);
    }
}
