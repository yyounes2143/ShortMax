package com.bytedance.bdtracker;

import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.recyclerview.widget.RecyclerView;
import com.bytedance.bdtracker.l0;
import java.lang.reflect.Method;
/* loaded from: classes3.dex */
public class k4 {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f12154a = false;

    /* renamed from: b  reason: collision with root package name */
    public static Class f12155b;

    /* renamed from: c  reason: collision with root package name */
    public static Method f12156c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f12157d = a("com.tencent.smtt.sdk.WebView");

    /* renamed from: e  reason: collision with root package name */
    public static boolean f12158e = a("android.support.v7.widget.RecyclerView");

    /* renamed from: f  reason: collision with root package name */
    public static boolean f12159f = a("android.support.v4.view.ViewPager");

    /* renamed from: g  reason: collision with root package name */
    public static boolean f12160g = a("android.support.v4.widget.SwipeRefreshLayout");

    /* renamed from: h  reason: collision with root package name */
    public static boolean f12161h;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f12162i;

    /* renamed from: j  reason: collision with root package name */
    public static boolean f12163j;

    static {
        a("android.support.v4.app.Fragment");
        a("android.support.v4.app.FragmentActivity");
        a("android.support.v7.app.AlertDialog");
        a("android.support.v7.view.menu.ListMenuItemView");
        f12161h = a("androidx.recyclerview.widget.RecyclerView");
        f12162i = a("androidx.viewpager.widget.ViewPager");
        f12163j = a("androidx.swiperefreshlayout.widget.SwipeRefreshLayout");
        a("androidx.fragment.app.Fragment");
        a("androidx.fragment.app.FragmentActivity");
        a("androidx.appcompat.app.AlertDialog");
        a("androidx.appcompat.view.menu.ListMenuItemView");
    }

    public static Class<?> a(Class<?> cls) {
        while (cls != null && !cls.equals(ViewGroup.class)) {
            try {
                f12156c = cls.getDeclaredMethod("getChildAdapterPosition", View.class);
            } catch (NoSuchMethodException unused) {
            }
            if (f12156c == null) {
                try {
                    f12156c = cls.getDeclaredMethod("getChildPosition", View.class);
                } catch (NoSuchMethodException unused2) {
                }
            }
            if (f12156c != null) {
                return cls;
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    public static boolean b(View view) {
        boolean z10 = f12157d;
        return false;
    }

    public static boolean c(Object obj) {
        if (f12159f && l0.b.a(obj, "android.support.v4.view.ViewPager")) {
            return true;
        }
        return false;
    }

    public static boolean a(View view) {
        return (view instanceof WebView) || b(view);
    }

    public static boolean b(Object obj) {
        return f12158e && l0.b.a(obj, "android.support.v7.widget.RecyclerView");
    }

    public static boolean a(Object obj) {
        return f12161h && (obj instanceof RecyclerView);
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
