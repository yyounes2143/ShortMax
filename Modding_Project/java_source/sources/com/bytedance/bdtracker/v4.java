package com.bytedance.bdtracker;

import android.app.ActionBar;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.applog.IPageMeta;
import com.bytedance.applog.annotation.PageMeta;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.l0;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class v4 {

    /* renamed from: a  reason: collision with root package name */
    public static final List<String> f12474a;

    /* renamed from: b  reason: collision with root package name */
    public static final List<String> f12475b;

    /* renamed from: c  reason: collision with root package name */
    public static final List<Class<?>> f12476c;

    /* renamed from: d  reason: collision with root package name */
    public static final List<Class<?>> f12477d;

    /* renamed from: e  reason: collision with root package name */
    public static final List<String> f12478e;

    static {
        List<String> singletonList = Collections.singletonList("android.app.Activity");
        f12474a = singletonList;
        f12475b = Arrays.asList("android.app.Fragment", "androidx.fragment.app.Fragment", "android.support.v4.app.Fragment");
        f12476c = new ArrayList();
        f12477d = new ArrayList();
        f12478e = Collections.singletonList("PageUtils");
        for (String str : singletonList) {
            Class<?> b10 = l0.b.b(str);
            if (b10 != null) {
                f12476c.add(b10);
            }
        }
        for (String str2 : f12475b) {
            Class<?> b11 = l0.b.b(str2);
            if (b11 != null) {
                f12477d.add(b11);
            }
        }
    }

    public static View a(Object obj) {
        try {
            Method method = obj.getClass().getMethod("getView", new Class[0]);
            if (method != null) {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke instanceof View) {
                    return (View) invoke;
                }
                return null;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Object obj) {
        PageMeta pageMeta;
        if (obj == null) {
            return "";
        }
        if (obj instanceof IPageMeta) {
            try {
                return ((IPageMeta) obj).path();
            } catch (Throwable th2) {
                LoggerImpl.global().error(f12478e, "Cannot get path from IPageMeta", th2, new Object[0]);
            }
        }
        if (b.a(b.f11876c)) {
            LoggerImpl.global().info(f12478e, "PageMeta Annotation Disable", new Object[0]);
        } else if (obj.getClass().isAnnotationPresent(PageMeta.class) && (pageMeta = (PageMeta) obj.getClass().getAnnotation(PageMeta.class)) != null && !TextUtils.isEmpty(pageMeta.path())) {
            return pageMeta.path();
        }
        return obj.getClass().getCanonicalName();
    }

    public static String c(Object obj) {
        PageMeta pageMeta;
        Object invoke;
        CharSequence charSequence;
        String charSequence2;
        if (obj == null) {
            return "";
        }
        if (obj instanceof IPageMeta) {
            try {
                return ((IPageMeta) obj).title();
            } catch (Throwable th2) {
                LoggerImpl.global().error(f12478e, "Cannot get title from IPageMeta", th2, new Object[0]);
            }
        }
        if (b.a(b.f11876c)) {
            LoggerImpl.global().info(f12478e, "PageMeta Annotation Disable", new Object[0]);
        } else if (obj.getClass().isAnnotationPresent(PageMeta.class) && (pageMeta = (PageMeta) obj.getClass().getAnnotation(PageMeta.class)) != null && !TextUtils.isEmpty(pageMeta.title())) {
            return pageMeta.title();
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (!TextUtils.isEmpty(activity.getTitle())) {
                return activity.getTitle().toString();
            }
            ActionBar actionBar = activity.getActionBar();
            if (actionBar != null) {
                if (!TextUtils.isEmpty(actionBar.getTitle())) {
                    charSequence2 = actionBar.getTitle().toString();
                }
                charSequence2 = null;
            } else {
                try {
                    Class<?> a10 = l0.b.a("android.support.v7.app.AppCompatActivity", "androidx.appcompat.app.AppCompatActivity");
                    if (a10 != null && a10.isInstance(activity) && (invoke = activity.getClass().getMethod("getSupportActionBar", new Class[0]).invoke(activity, new Object[0])) != null && (charSequence = (CharSequence) invoke.getClass().getMethod("getTitle", new Class[0]).invoke(invoke, new Object[0])) != null) {
                        charSequence2 = charSequence.toString();
                    }
                } catch (Exception unused) {
                }
                charSequence2 = null;
            }
            if (!TextUtils.isEmpty(charSequence2)) {
                return charSequence2;
            }
            try {
                PackageManager packageManager = ((Activity) obj).getPackageManager();
                if (packageManager != null) {
                    CharSequence loadLabel = packageManager.getActivityInfo(((Activity) obj).getComponentName(), 0).loadLabel(packageManager);
                    if (!TextUtils.isEmpty(loadLabel)) {
                        return loadLabel.toString();
                    }
                }
            } catch (Exception e10) {
                LoggerImpl.global().error(f12478e, "Cannot get title from activity label", e10, new Object[0]);
            }
        }
        return obj.getClass().getName();
    }

    public static JSONObject d(Object obj) {
        if (obj instanceof IPageMeta) {
            try {
                return ((IPageMeta) obj).pageProperties();
            } catch (Throwable th2) {
                LoggerImpl.global().error(f12478e, "Cannot get track properties from activity", th2, new Object[0]);
                return null;
            }
        }
        return null;
    }
}
