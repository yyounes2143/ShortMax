package com.bytedance.bdtracker;

import android.view.View;
import com.bytedance.applog.log.LoggerImpl;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class e5 {

    /* renamed from: b  reason: collision with root package name */
    public static Field f12003b;

    /* renamed from: c  reason: collision with root package name */
    public static Class f12004c;

    /* renamed from: d  reason: collision with root package name */
    public static Class f12005d;

    /* renamed from: a  reason: collision with root package name */
    public static final List<String> f12002a = Collections.singletonList("WindowHelper");

    /* renamed from: e  reason: collision with root package name */
    public static boolean f12006e = false;

    public static void a() {
        if (f12006e) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
            f12003b = cls.getDeclaredField("mViews");
            Field declaredField = cls.getDeclaredField("sDefaultWindowManager");
            f12003b.setAccessible(true);
            if (f12003b.getType() != ArrayList.class) {
                f12003b.getType();
            }
            declaredField.setAccessible(true);
            declaredField.get(null);
        } catch (Throwable th2) {
            LoggerImpl.global().error(f12002a, "Get window manager views failed", th2, new Object[0]);
        }
        try {
            try {
                f12004c = Class.forName("com.android.internal.policy.PhoneWindow$DecorView");
            } catch (ClassNotFoundException unused) {
                f12004c = Class.forName("com.android.internal.policy.DecorView");
            }
        } catch (Throwable th3) {
            LoggerImpl.global().error(f12002a, "Get DecorView failed", th3, new Object[0]);
        }
        try {
            f12005d = Class.forName("android.widget.PopupWindow$PopupDecorView");
        } catch (Throwable th4) {
            LoggerImpl.global().error(f12002a, "Get popup view failed", th4, new Object[0]);
        }
        f12006e = true;
    }

    public static boolean a(View view) {
        if (!f12006e) {
            a();
        }
        Class<?> cls = view.getClass();
        return cls == f12004c || cls == f12005d;
    }
}
