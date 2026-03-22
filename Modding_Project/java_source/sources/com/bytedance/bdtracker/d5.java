package com.bytedance.bdtracker;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.SparseArray;
import android.view.Display;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.applog.R;
import com.bytedance.applog.log.LoggerImpl;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
@TargetApi(12)
/* loaded from: classes3.dex */
public class d5 {

    /* renamed from: a  reason: collision with root package name */
    public static SparseArray<String> f11947a;

    /* renamed from: b  reason: collision with root package name */
    public static Set<Integer> f11948b;

    /* renamed from: c  reason: collision with root package name */
    public static LruCache<Class, String> f11949c = new LruCache<>(100);

    public static int a(View view) {
        Display display;
        if (view == null || (display = view.getDisplay()) == null) {
            return 0;
        }
        return display.getDisplayId();
    }

    public static boolean b(View view) {
        if (view != null && view.getTag(R.id.applog_tag_ignore) == null) {
            return false;
        }
        return true;
    }

    public static String a(View view, boolean z10) {
        Object tag = view.getTag(84159242);
        if (tag == null || !(tag instanceof String)) {
            if (z10) {
                return null;
            }
            if (f11947a == null) {
                f11947a = new SparseArray<>();
            }
            if (f11948b == null) {
                f11948b = new HashSet();
            }
            int id2 = view.getId();
            if (id2 > 2130706432 && !f11948b.contains(Integer.valueOf(id2))) {
                String str = f11947a.get(id2);
                if (str != null) {
                    return str;
                }
                try {
                    String resourceEntryName = view.getResources().getResourceEntryName(id2);
                    f11947a.put(id2, resourceEntryName);
                    return resourceEntryName;
                } catch (Exception unused) {
                    f11948b.add(Integer.valueOf(id2));
                }
            }
            return null;
        }
        return (String) tag;
    }

    public static String a(String str) {
        return str == null ? "" : (TextUtils.isEmpty(str) || str.length() <= 20) ? str : str.substring(0, 20);
    }

    public static boolean a(Context context, int i10) {
        try {
            return ((DisplayManager) context.getSystemService("display")).getDisplays()[0].getDisplayId() == i10;
        } catch (Exception unused) {
            return true;
        }
    }

    public static String a(Class cls) {
        String str = f11949c.get(cls);
        if (TextUtils.isEmpty(str)) {
            str = cls.getSimpleName();
            if (TextUtils.isEmpty(str)) {
                str = "Anonymous";
            }
            f11949c.put(cls, str);
            if (!k4.f12161h && !k4.f12158e && !k4.f12154a && str.contains("RecyclerView")) {
                try {
                    if (k4.a((Class<?>) cls) != null && k4.f12156c != null) {
                        k4.f12155b = cls;
                        k4.f12154a = true;
                    }
                } catch (Exception e10) {
                    LoggerImpl.global().error("checkCustomRecyclerView failed", e10, new Object[0]);
                }
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c6, code lost:
        if (r0.getText() != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f5, code lost:
        if (r0.getText() != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0103, code lost:
        if (r0.getText() != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0105, code lost:
        r0 = r0.getText();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x012b, code lost:
        if (r0 != null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x013b, code lost:
        if (r0 != null) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> a(android.view.View r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.d5.a(android.view.View, java.lang.String):java.util.ArrayList");
    }

    public static boolean a(WebView webView) {
        Object obj;
        try {
            Field declaredField = WebView.class.getDeclaredField("mProvider");
            declaredField.setAccessible(true);
            obj = declaredField.get(webView);
        } catch (Exception e10) {
            LoggerImpl.global().error(Collections.singletonList("ViewUtils"), "Check isDestroyed failed", e10, new Object[0]);
        }
        if ("android.webkit.WebViewClassic".equals(obj)) {
            Field declaredField2 = obj.getClass().getDeclaredField("mWebViewCore");
            declaredField2.setAccessible(true);
            return declaredField2.get(obj) == null;
        }
        Field declaredField3 = obj.getClass().getDeclaredField("mAwContents");
        declaredField3.setAccessible(true);
        Object obj2 = declaredField3.get(obj);
        Method declaredMethod = obj2.getClass().getDeclaredMethod("isDestroyed", Integer.TYPE);
        declaredMethod.setAccessible(true);
        Object invoke = declaredMethod.invoke(obj2, 0);
        if (invoke instanceof Boolean) {
            return ((Boolean) invoke).booleanValue();
        }
        return false;
    }
}
