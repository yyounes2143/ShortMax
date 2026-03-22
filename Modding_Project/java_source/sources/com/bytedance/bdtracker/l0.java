package com.bytedance.bdtracker;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.bytedance.applog.IEventObserver;
import com.bytedance.applog.IPresetEventObserver;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class l0 implements IPresetEventObserver, IEventObserver {

    /* renamed from: a  reason: collision with root package name */
    public final IEventObserver f12192a;

    /* renamed from: b  reason: collision with root package name */
    public final IPresetEventObserver f12193b;

    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static String f12194a;

        @Nullable
        public static Activity a(@NonNull Context context) {
            if (context instanceof ContextWrapper) {
                do {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper instanceof Activity) {
                        return (Activity) contextWrapper;
                    }
                    context = contextWrapper.getBaseContext();
                } while (context instanceof ContextWrapper);
                return null;
            }
            return null;
        }

        public static Class<?> b(String str) {
            try {
                return Class.forName(str);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }

        public static synchronized String c() {
            String str;
            synchronized (b.class) {
                str = UUID.randomUUID().toString().replace("-", "").toLowerCase() + System.currentTimeMillis();
            }
            return str;
        }

        @NotNull
        public static List d() {
            return CollectionsKt.n();
        }

        public static boolean e(View view) {
            boolean d10 = d(view);
            if (d10) {
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    if (!(parent instanceof View)) {
                        return d10;
                    }
                    if (!d((View) parent)) {
                        break;
                    }
                }
                return false;
            }
            return d10;
        }

        public static l0 a(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver) {
            return new l0(iEventObserver, iPresetEventObserver, null);
        }

        public static String b(View view) {
            if (view == null) {
                return null;
            }
            return c(view) + "$$" + view.hashCode();
        }

        public static boolean c(String str) {
            return !d(str);
        }

        @RequiresApi(api = 11)
        public static boolean d(View view) {
            if (view == null) {
                return false;
            }
            if (e5.a(view)) {
                return true;
            }
            if (view.getWidth() <= 0 || view.getHeight() <= 0 || view.getAlpha() <= 0.0f || !view.getLocalVisibleRect(new Rect())) {
                return false;
            }
            return !(view.getVisibility() == 0 || view.getAnimation() == null || !view.getAnimation().getFillAfter()) || view.getVisibility() == 0;
        }

        public static boolean e(String str) {
            int length = str != null ? str.length() : 0;
            if (length < 13 || length > 128) {
                return false;
            }
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'f') && ((charAt < 'A' || charAt > 'F') && charAt != '-'))) {
                    return false;
                }
            }
            return true;
        }

        public static Class<?> a(String... strArr) {
            if (strArr != null && strArr.length != 0) {
                for (String str : strArr) {
                    Class<?> b10 = b(str);
                    if (b10 != null) {
                        return b10;
                    }
                }
            }
            return null;
        }

        public static JSONObject b(JSONObject jSONObject, JSONObject jSONObject2) {
            if (jSONObject == null) {
                return jSONObject2;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    String next = keys.next();
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException e10) {
                    LoggerImpl.global().error(Collections.singletonList("JsonUtils"), "Merge json interrupted.", e10, new Object[0]);
                }
            }
            return jSONObject2;
        }

        public static String c(View view) {
            if (view == null) {
                return "";
            }
            if (view instanceof CheckBox) {
                return "CheckBox";
            }
            if (view instanceof RadioButton) {
                return "RadioButton";
            }
            if (view instanceof ToggleButton) {
                return "ToggleButton";
            }
            if (view instanceof CompoundButton) {
                return a((Object) view, "android.widget.Switch") ? "Switch" : a((Object) view, "android.support.v7.widget.SwitchCompat", "androidx.appcompat.widget.SwitchCompat") ? "SwitchCompat" : "";
            } else if (view instanceof Button) {
                return "Button";
            } else {
                if (view instanceof CheckedTextView) {
                    return "CheckedTextView";
                }
                if (view instanceof TextView) {
                    return "TextView";
                }
                if (view instanceof ImageView) {
                    return "ImageView";
                }
                if (view instanceof RatingBar) {
                    return "RatingBar";
                }
                if (view instanceof SeekBar) {
                    return "SeekBar";
                }
                if (view instanceof Spinner) {
                    return "Spinner";
                }
                try {
                    Class<?> a10 = a("android.support.design.widget.TabLayout$TabView", "com.google.android.material.tabs.TabLayout$TabView");
                    if (a10 != null) {
                        if (a10.isAssignableFrom(view.getClass())) {
                            return "TabLayout";
                        }
                    }
                } catch (Throwable th2) {
                    LoggerImpl.global().error(Collections.singletonList("WidgetUtils"), "Check isTabView failed", th2, new Object[0]);
                }
                if (a((Object) view, "android.support.design.widget.NavigationView", "com.google.android.material.navigation.NavigationView")) {
                    return "NavigationView";
                }
                if (view instanceof ViewGroup) {
                    if (a((Object) view, "android.support.v7.widget.CardView", "androidx.cardview.widget.CardView")) {
                        return "CardView";
                    }
                    if (a((Object) view, "android.support.design.widget.NavigationView", "com.google.android.material.navigation.NavigationView")) {
                        return "NavigationView";
                    }
                }
                try {
                    return view.getClass().getCanonicalName();
                } catch (Throwable th3) {
                    LoggerImpl.global().error(Collections.singletonList("WidgetUtils"), "getCanonicalName failed", th3, new Object[0]);
                    return "";
                }
            }
        }

        public static boolean d(String str) {
            return str != null && str.length() > 0;
        }

        public static String a(Object obj) {
            return obj != null ? obj.toString() : "";
        }

        public static boolean b(Object obj, Object obj2) {
            return obj == obj2 || (obj != null && obj.equals(obj2));
        }

        public static String a(boolean z10) {
            return z10 ? "yes" : "no";
        }

        public static String b() {
            BufferedReader bufferedReader;
            String str = f12194a;
            if (TextUtils.isEmpty(str)) {
                String str2 = null;
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            int read = bufferedReader.read();
                            if (read <= 0) {
                                break;
                            }
                            sb2.append((char) read);
                        }
                        str2 = sb2.toString();
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    bufferedReader = null;
                }
                a((Closeable) bufferedReader);
                f12194a = str2;
                IAppLogLogger global = LoggerImpl.global();
                StringBuilder a10 = com.bytedance.bdtracker.a.a("getProcessName: ");
                a10.append(f12194a);
                global.debug(a10.toString(), new Object[0]);
                return f12194a;
            }
            return str;
        }

        @NotNull
        public static List a() {
            return CollectionsKt.q("metrics_category", "metrics_name");
        }

        public static JSONObject a(JSONObject jSONObject) {
            if (jSONObject != null) {
                JSONObject jSONObject2 = new JSONObject();
                a(jSONObject2, jSONObject);
                try {
                    String a10 = h5.a(jSONObject2.optJSONObject("oaid"));
                    if (TextUtils.isEmpty(a10)) {
                        return jSONObject2;
                    }
                    jSONObject2.put("oaid", a10);
                    return jSONObject2;
                } catch (Throwable th2) {
                    LoggerImpl.global().error("transferHeaderOaid error", th2, new Object[0]);
                    return jSONObject2;
                }
            }
            return null;
        }

        public static final void b(@NotNull View setViewExposureVisible, boolean z10) {
            Intrinsics.checkParameterIsNotNull(setViewExposureVisible, "$this$setViewExposureVisible");
            int i10 = z10 ? SupportMenu.CATEGORY_MASK : InputDeviceCompat.SOURCE_ANY;
            if (setViewExposureVisible instanceof ImageView) {
                ImageView imageView = (ImageView) setViewExposureVisible;
                if (imageView.getDrawable() instanceof o0) {
                    Drawable drawable = imageView.getDrawable();
                    if (drawable != null) {
                        ((o0) drawable).f12289b.setColor(i10);
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable");
                    }
                }
            }
            if (setViewExposureVisible.getBackground() instanceof o0) {
                Drawable background = setViewExposureVisible.getBackground();
                if (background != null) {
                    ((o0) background).f12289b.setColor(i10);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable");
                }
            }
            setViewExposureVisible.invalidate();
        }

        public static JSONObject a(JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
            if (jSONObject2 != null) {
                try {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject.put(next, jSONObject2.opt(next));
                    }
                } catch (Throwable th2) {
                    LoggerImpl.global().error("copy json error", th2, new Object[0]);
                }
            }
            return jSONObject;
        }

        public static void a(Cursor cursor) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable th2) {
                    LoggerImpl.global().error("closeSafely error", th2, new Object[0]);
                }
            }
        }

        public static void a(SQLiteDatabase sQLiteDatabase) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th2) {
                    LoggerImpl.global().error("endDbTransactionSafely error", th2, new Object[0]);
                }
            }
        }

        public static void a(Closeable closeable) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable th2) {
                    LoggerImpl.global().error("closeSafely error", th2, new Object[0]);
                }
            }
        }

        public static boolean a(Object obj, Object obj2) {
            return (obj != null || obj2 == null) && (obj == null || obj2 != null);
        }

        public static boolean a(Object obj, String str) {
            return a(obj == null, str);
        }

        public static boolean a(Object obj, String... strArr) {
            if (strArr != null && strArr.length != 0) {
                for (String str : strArr) {
                    Class<?> b10 = b(str);
                    if (b10 != null && b10.isInstance(obj)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public static boolean a(String str) {
            boolean z10 = false;
            if (TextUtils.isEmpty(str) || "unknown".equalsIgnoreCase(str) || "Null".equalsIgnoreCase(str)) {
                return false;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= str.length()) {
                    z10 = true;
                    break;
                } else if (str.charAt(i10) != '0') {
                    break;
                } else {
                    i10++;
                }
            }
            return !z10;
        }

        public static boolean a(String str, String str2) {
            return (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || (str != null && str.equals(str2));
        }

        public static boolean a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
            if (a((Object) jSONObject, (Object) jSONObject2)) {
                if (jSONObject == null || jSONObject.length() == jSONObject2.length()) {
                    Iterator<String> keys = jSONObject.keys();
                    boolean z10 = true;
                    while (keys.hasNext()) {
                        String next = keys.next();
                        z10 = a(jSONObject.get(next), jSONObject2.get(next), next);
                        if (!z10) {
                            break;
                        }
                    }
                    return z10;
                }
                return false;
            }
            return false;
        }

        public static boolean a(JSONObject jSONObject, @Nullable Class<?>[] clsArr, @Nullable Class<?>[] clsArr2) {
            if (jSONObject == null) {
                return false;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                Object obj = jSONObject.get(keys.next());
                if (obj == null) {
                    return false;
                }
                if (obj instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) obj;
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        Object obj2 = jSONArray.get(i10);
                        if (clsArr2 != null && !a(clsArr2, obj2.getClass())) {
                            return false;
                        }
                    }
                    continue;
                } else if (clsArr != null && !a(clsArr, obj.getClass())) {
                    return false;
                }
            }
            return true;
        }

        public static <T> boolean a(T[] tArr, T t10) {
            for (T t11 : tArr) {
                if (t11 == t10) {
                    return true;
                }
            }
            return false;
        }

        public static boolean a(Object obj, Object obj2, String str) {
            if (a(obj, obj2)) {
                if (obj instanceof JSONObject) {
                    return a((JSONObject) obj, (JSONObject) obj2, str);
                }
                if (obj instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) obj;
                    JSONArray jSONArray2 = (JSONArray) obj2;
                    if (a(jSONArray, jSONArray2)) {
                        HashMap hashMap = new HashMap();
                        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                            Object obj3 = jSONArray.get(i10);
                            hashMap.put(obj3, (!hashMap.containsKey(obj3) || hashMap.get(obj3) == null) ? 1 : Integer.valueOf(((Integer) hashMap.get(obj3)).intValue() + 1));
                        }
                        HashMap hashMap2 = new HashMap();
                        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                            Object obj4 = jSONArray2.get(i11);
                            hashMap2.put(obj4, (!hashMap2.containsKey(obj4) || hashMap2.get(obj4) == null) ? 1 : Integer.valueOf(((Integer) hashMap2.get(obj4)).intValue() + 1));
                        }
                        if (hashMap.size() != hashMap2.size()) {
                            return false;
                        }
                        for (Map.Entry entry : hashMap.entrySet()) {
                            if (!((Integer) entry.getValue()).equals((Integer) hashMap2.get(entry.getKey()))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    return false;
                } else if (obj.getClass() != obj2.getClass()) {
                    return false;
                } else {
                    String obj5 = obj.toString();
                    String obj6 = obj2.toString();
                    return a((Object) obj5, (Object) obj6) && obj5.equals(obj6);
                }
            }
            return false;
        }

        public static final void a(@NotNull View disableViewExposureDebugMode) {
            Intrinsics.checkParameterIsNotNull(disableViewExposureDebugMode, "$this$disableViewExposureDebugMode");
            if (disableViewExposureDebugMode instanceof ImageView) {
                ImageView imageView = (ImageView) disableViewExposureDebugMode;
                if (imageView.getDrawable() instanceof o0) {
                    Drawable drawable = imageView.getDrawable();
                    if (drawable == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable");
                    }
                    imageView.setImageDrawable(((o0) drawable).f12301a);
                }
            }
            if (disableViewExposureDebugMode.getBackground() instanceof o0) {
                Drawable background = disableViewExposureDebugMode.getBackground();
                if (background == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.exposure.DebugDrawable");
                }
                disableViewExposureDebugMode.setBackground(((o0) background).f12301a);
            }
        }

        public static boolean a(boolean z10, String str) {
            if (z10) {
                LoggerImpl.global().ast("[Assert failed] {}", null, str);
                return true;
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:105:0x020a, code lost:
            if (r0 < 0) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:210:0x055e, code lost:
            if (android.text.TextUtils.isEmpty(r0) == false) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0080, code lost:
            if (r6 < 2999) goto L219;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0090, code lost:
            if (r6 == com.bytedance.bdtracker.e5.f12005d) goto L216;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0095, code lost:
            r6 = "/CustomWindow";
         */
        /* JADX WARN: Removed duplicated region for block: B:170:0x049f  */
        /* JADX WARN: Removed duplicated region for block: B:173:0x04b4  */
        /* JADX WARN: Removed duplicated region for block: B:197:0x0516  */
        /* JADX WARN: Removed duplicated region for block: B:209:0x0558  */
        /* JADX WARN: Removed duplicated region for block: B:230:0x056a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00ee  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.bytedance.bdtracker.w3 a(android.view.View r35, boolean r36) {
            /*
                Method dump skipped, instructions count: 1438
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.l0.b.a(android.view.View, boolean):com.bytedance.bdtracker.w3");
        }

        public static void a(z2 z2Var, @NotNull JSONObject params) {
            Intrinsics.checkParameterIsNotNull(params, "params");
            Intrinsics.checkParameterIsNotNull(params, "params");
        }
    }

    public /* synthetic */ l0(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver, a aVar) {
        this.f12192a = iEventObserver;
        this.f12193b = iPresetEventObserver;
    }

    @Override // com.bytedance.applog.IEventObserver
    public void onEvent(@NonNull String str, @NonNull String str2, String str3, long j10, long j11, String str4) {
        IEventObserver iEventObserver = this.f12192a;
        if (iEventObserver == null) {
            return;
        }
        iEventObserver.onEvent(str, str2, str3, j10, j11, str4);
    }

    @Override // com.bytedance.applog.IEventObserver
    public void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject) {
        IEventObserver iEventObserver = this.f12192a;
        if (iEventObserver == null) {
            return;
        }
        iEventObserver.onEventV3(str, jSONObject);
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onLaunch(JSONObject jSONObject) {
        IPresetEventObserver iPresetEventObserver = this.f12193b;
        if (iPresetEventObserver == null) {
            return;
        }
        iPresetEventObserver.onLaunch(jSONObject);
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onPageEnter(JSONObject jSONObject) {
        IPresetEventObserver iPresetEventObserver = this.f12193b;
        if (iPresetEventObserver == null) {
            return;
        }
        iPresetEventObserver.onPageEnter(jSONObject);
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onPageLeave(JSONObject jSONObject) {
        IPresetEventObserver iPresetEventObserver = this.f12193b;
        if (iPresetEventObserver == null) {
            return;
        }
        iPresetEventObserver.onPageLeave(jSONObject);
    }
}
