package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.input.InputManager;
import android.os.Build;
import android.text.TextUtils;
import android.view.InputDevice;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private static int f36846a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static int f36847b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static int f36848c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static int f36849d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static int f36850e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static int f36851f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static volatile boolean f36852g = false;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f36853h = false;

    /* renamed from: i  reason: collision with root package name */
    private static InputManager f36854i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36855a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f36856b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f36857c;

        a(String str, Context context, int i10) {
            this.f36855a = str;
            this.f36856b = context;
            this.f36857c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean isExternal;
            if (y.f36852g) {
                com.pgl.ssdk.ces.a.meta(171, null, this.f36855a);
            }
            InputManager b10 = y.b(this.f36856b);
            if (b10 == null) {
                return;
            }
            InputDevice inputDevice = b10.getInputDevice(this.f36857c);
            y.h();
            if (inputDevice == null) {
                y.b();
                y.c();
                y.c("nihc");
            } else if (inputDevice.isVirtual()) {
                y.d();
                y.e();
                y.c("vihc");
            } else if (Build.VERSION.SDK_INT >= 29) {
                isExternal = inputDevice.isExternal();
                if (isExternal) {
                    y.f();
                    y.g();
                    y.c("eihc");
                }
            }
        }
    }

    static /* synthetic */ int b() {
        int i10 = f36848c;
        f36848c = i10 + 1;
        return i10;
    }

    static /* synthetic */ int c() {
        int i10 = f36851f;
        f36851f = i10 + 1;
        return i10;
    }

    static /* synthetic */ int d() {
        int i10 = f36846a;
        f36846a = i10 + 1;
        return i10;
    }

    static /* synthetic */ int e() {
        int i10 = f36849d;
        f36849d = i10 + 1;
        return i10;
    }

    static /* synthetic */ int f() {
        int i10 = f36847b;
        f36847b = i10 + 1;
        return i10;
    }

    static /* synthetic */ int g() {
        int i10 = f36850e;
        f36850e = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h() {
        if (f36853h) {
            return;
        }
        try {
            SharedPreferences a10 = x0.a(z.b());
            if (a10 != null) {
                f36851f = a10.getInt("nihc", 0);
                f36850e = a10.getInt("eihc", 0);
                f36849d = a10.getInt("vihc", 0);
                f36853h = true;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int b(String str) {
        char c10;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        h();
        str.hashCode();
        switch (str.hashCode()) {
            case 100415:
                if (str.equals("eic")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 109064:
                if (str.equals("nic")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 116752:
                if (str.equals("vic")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 3113119:
                if (str.equals("eihc")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 3381238:
                if (str.equals("nihc")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 3619566:
                if (str.equals("vihc")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return f36847b;
            case 1:
                return f36848c;
            case 2:
                return f36846a;
            case 3:
                return f36850e;
            case 4:
                return f36851f;
            case 5:
                return f36849d;
            default:
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str) {
        try {
            SharedPreferences a10 = x0.a(z.b());
            if (a10 != null) {
                a10.edit().putInt(str, a10.getInt(str, 0) + 1).apply();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
        if (r0.contains("android.view.ViewRootImpl$InputStage") == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.view.MotionEvent r2, android.content.Context r3) {
        /*
            if (r2 == 0) goto L4f
            if (r3 == 0) goto L4f
            boolean r0 = com.pgl.ssdk.y.f36852g
            if (r0 == 0) goto L42
            r0 = 0
            int r0 = r2.getToolType(r0)     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L1c
            int r0 = r2.getSource()     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L1c
            int r0 = r2.getSource()     // Catch: java.lang.Throwable -> L42
            r1 = 2
            if (r0 != r1) goto L42
        L1c:
            java.lang.Exception r0 = new java.lang.Exception     // Catch: java.lang.Throwable -> L42
            r0.<init>()     // Catch: java.lang.Throwable -> L42
            java.lang.StackTraceElement[] r0 = r0.getStackTrace()     // Catch: java.lang.Throwable -> L42
            java.lang.String r0 = java.util.Arrays.toString(r0)     // Catch: java.lang.Throwable -> L42
            java.lang.String r1 = "android.view.InputEventReceiver"
            boolean r1 = r0.contains(r1)     // Catch: java.lang.Throwable -> L42
            if (r1 != 0) goto L42
            java.lang.String r1 = "android.view.ViewRootImpl$WindowInputEventReceiver"
            boolean r1 = r0.contains(r1)     // Catch: java.lang.Throwable -> L42
            if (r1 != 0) goto L42
            java.lang.String r1 = "android.view.ViewRootImpl$InputStage"
            boolean r1 = r0.contains(r1)     // Catch: java.lang.Throwable -> L42
            if (r1 != 0) goto L42
            goto L43
        L42:
            r0 = 0
        L43:
            int r2 = r2.getDeviceId()
            com.pgl.ssdk.y$a r1 = new com.pgl.ssdk.y$a
            r1.<init>(r0, r3, r2)
            com.pgl.ssdk.r0.b(r1)
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.y.a(android.view.MotionEvent, android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputManager b(Context context) {
        if (f36854i == null) {
            f36854i = (InputManager) context.getSystemService("input");
        }
        return f36854i;
    }

    public static void a(JSONObject jSONObject) {
        h();
        try {
            jSONObject.put("vihc", f36849d);
            jSONObject.put("eihc", f36850e);
            jSONObject.put("nihc", f36851f);
            jSONObject.put("vic", f36846a);
            jSONObject.put("nic", f36848c);
            jSONObject.put("eic", f36847b);
        } catch (JSONException unused) {
        }
    }
}
