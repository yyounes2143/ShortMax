package com.inmobi.media;

import android.util.Log;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.commons.core.configs.CrashConfig;
import com.inmobi.sdk.InMobiSdk;
import com.inmobi.sdk.SdkInitializationListener;
import java.lang.reflect.Method;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class Ie {

    /* renamed from: a  reason: collision with root package name */
    public static final ScheduledExecutorService f23745a = Executors.newSingleThreadScheduledExecutor();

    public static final String a(Thread thread, Throwable error) {
        Intrinsics.checkNotNullParameter(error, "error");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", error.getClass().getSimpleName());
            jSONObject.put("message", error.getMessage());
            jSONObject.put("stack", Log.getStackTraceString(error));
            if (thread != null) {
                jSONObject.put("thread", thread.getName());
            }
            long currentTimeMillis = System.currentTimeMillis();
            StackTraceElement[] stackTrace = error.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
            boolean b10 = b(stackTrace);
            S5.a(jSONObject, b10, currentTimeMillis);
            CrashConfig crashConfig = AbstractC2939ea.f24660a;
            AbstractC2939ea.a(jSONObject, error instanceof OutOfMemoryError, b10, currentTimeMillis);
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
            return jSONObject2;
        } catch (JSONException e10) {
            e10.toString();
            return "";
        }
    }

    public static final boolean b(StackTraceElement[] stackTraceElementArr) {
        Intrinsics.checkNotNullParameter(stackTraceElementArr, "<this>");
        Regex regex = new Regex("com\\.inmobi\\.(media|ads|commons|unification|sdk|unifiedId|adquality|compliance)");
        int length = stackTraceElementArr.length;
        for (int i10 = 0; i10 < length && !a(stackTraceElementArr[i10], InMobiInterstitial.a.class.getSuperclass()) && !a(stackTraceElementArr[i10], InMobiInterstitial.a.class) && !a(stackTraceElementArr[i10], InMobiNative.NativeCallbacks.class) && !a(stackTraceElementArr[i10], InMobiBanner.a.class) && !a(stackTraceElementArr[i10], InMobiBanner.a.class.getSuperclass()) && (!Intrinsics.areEqual(stackTraceElementArr[i10].getClassName(), InMobiSdk.class.getName()) || !Intrinsics.areEqual(stackTraceElementArr[i10].getMethodName(), InMobiSdk.class.getDeclaredMethod("a", SdkInitializationListener.class, String.class).getName())); i10++) {
            String className = stackTraceElementArr[i10].getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            String name = C3044l3.class.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (StringsKt.b0(className, name, false, 2, null)) {
                break;
            }
            String className2 = stackTraceElementArr[i10].getClassName();
            Intrinsics.checkNotNullExpressionValue(className2, "getClassName(...)");
            if (regex.d(className2)) {
                return true;
            }
        }
        return false;
    }

    public static final String a(StackTraceElement[] stackTraceElementArr) {
        Intrinsics.checkNotNullParameter(stackTraceElementArr, "<this>");
        StringBuilder sb2 = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            sb2.append(stackTraceElement.toString());
            Intrinsics.checkNotNullExpressionValue(sb2, "append(value)");
            sb2.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb2, "append('\\n')");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public static final boolean a(T5 t52) {
        Intrinsics.checkNotNullParameter(t52, "<this>");
        if (t52 instanceof C3060m3) {
            StackTraceElement[] stackTraceElementArr = ((C3060m3) t52).f25019g;
            if (stackTraceElementArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("stackTrace");
                stackTraceElementArr = null;
            }
            return b(stackTraceElementArr);
        }
        if (t52 instanceof C2913d1) {
            C2913d1 c2913d1 = (C2913d1) t52;
            if (c2913d1.f24570g == 6) {
                return new Regex("com\\.inmobi\\.(media|ads|commons|unification|sdk|unifiedId|adquality|compliance)").d(c2913d1.f24571h);
            }
        } else if (t52 instanceof mf) {
            return b(((mf) t52).f25046g);
        }
        return false;
    }

    public static final boolean a(StackTraceElement stackTraceElement, Class cls) {
        Intrinsics.checkNotNullParameter(stackTraceElement, "<this>");
        if (cls != null && Intrinsics.areEqual(stackTraceElement.getClassName(), cls.getName())) {
            Method[] declaredMethods = PublisherCallbacks.class.getDeclaredMethods();
            Intrinsics.checkNotNullExpressionValue(declaredMethods, "getDeclaredMethods(...)");
            for (Method method : declaredMethods) {
                if (Intrinsics.areEqual(stackTraceElement.getMethodName(), method.getName())) {
                    return true;
                }
            }
        }
        return false;
    }
}
