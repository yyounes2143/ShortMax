package com.pgl.ssdk;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.view.Display;
/* loaded from: classes6.dex */
public class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static volatile DisplayManager.DisplayListener f36688a = null;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f36689b = false;

    /* renamed from: c  reason: collision with root package name */
    private static String f36690c = null;

    /* renamed from: d  reason: collision with root package name */
    private static String f36691d = null;

    /* renamed from: e  reason: collision with root package name */
    private static String f36692e = null;

    /* renamed from: f  reason: collision with root package name */
    private static volatile boolean f36693f = false;

    /* renamed from: g  reason: collision with root package name */
    private static volatile boolean f36694g = false;

    /* renamed from: h  reason: collision with root package name */
    private static DisplayManager f36695h;

    /* loaded from: classes6.dex */
    static class a implements DisplayManager.DisplayListener {
        a() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i10) {
            a0.b(i10, 1);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            a0.b(i10, 3);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i10) {
            a0.b(i10, 2);
        }
    }

    public static void b(Context context) {
        Handler b10;
        if (f36689b) {
            return;
        }
        if (f36688a == null) {
            f36688a = new a();
        }
        if (f36695h == null) {
            f36695h = (DisplayManager) context.getSystemService("display");
        }
        if (f36695h == null || (b10 = r0.b()) == null) {
            return;
        }
        try {
            f36695h.registerDisplayListener(f36688a, b10);
            f36689b = true;
        } catch (Exception unused) {
        }
    }

    private static String a(Display display) {
        String name = display.getName();
        boolean z10 = false;
        Object a10 = v0.a(display, display.getClass(), "getType", new Class[0], new Object[0]);
        Object a11 = v0.a(display, display.getClass(), "getOwnerPackageName", new Class[0], new Object[0]);
        Object a12 = v0.a(null, display.getClass(), "TYPE_VIRTUAL", null);
        if (a10 != null && a12 != null && ((Integer) a10).intValue() == ((Integer) a12).intValue()) {
            z10 = true;
        }
        return String.format("%s#%s#%b", a11, name, Boolean.valueOf(z10));
    }

    private static String a(int i10) {
        Display display = f36695h.getDisplay(i10);
        return display != null ? a(display) : "pd";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int i10, int i11) {
        if (i10 == 0) {
            return;
        }
        try {
            String a10 = a(i10);
            if (i11 == 1) {
                if (a10.equals(f36690c)) {
                    return;
                }
                f36690c = a10;
            } else if (i11 != 2) {
                if (i11 != 3 || a10.equals(f36692e)) {
                    return;
                }
                f36692e = a10;
            } else if (a10.equals(f36691d)) {
            } else {
                f36691d = a10;
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean a(Context context) {
        Display[] displays;
        if (!f36689b || (f36690c == null && f36691d == null && f36692e == null)) {
            if (f36689b && f36693f) {
                return f36694g;
            }
            int i10 = 0;
            if (context == null) {
                return false;
            }
            if (f36695h == null) {
                f36695h = (DisplayManager) context.getSystemService("display");
            }
            DisplayManager displayManager = f36695h;
            if (displayManager != null && (displays = displayManager.getDisplays()) != null) {
                int length = displays.length;
                while (true) {
                    if (i10 < length) {
                        Display display = displays[i10];
                        if (display != null && display.getDisplayId() != 0) {
                            f36694g = true;
                            break;
                        }
                        i10++;
                    } else {
                        break;
                    }
                }
            }
            f36693f = true;
            return f36694g;
        }
        return true;
    }
}
