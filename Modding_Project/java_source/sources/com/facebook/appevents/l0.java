package com.facebook.appevents;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.Patterns;
import androidx.annotation.RestrictTo;
import com.facebook.internal.u0;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
/* compiled from: UserDataStore.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nUserDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserDataStore.kt\ncom/facebook/appevents/UserDataStore\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,275:1\n107#2:276\n79#2,22:277\n107#2:301\n79#2,22:302\n37#3,2:299\n*S KotlinDebug\n*F\n+ 1 UserDataStore.kt\ncom/facebook/appevents/UserDataStore\n*L\n216#1:276\n216#1:277,22\n247#1:301\n247#1:302,22\n219#1:299,2\n*E\n"})
/* loaded from: classes3.dex */
public final class l0 {

    /* renamed from: c  reason: collision with root package name */
    private static SharedPreferences f15142c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l0 f15140a = new l0();

    /* renamed from: b  reason: collision with root package name */
    private static final String f15141b = l0.class.getSimpleName();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicBoolean f15143d = new AtomicBoolean(false);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final ConcurrentHashMap<String, String> f15144e = new ConcurrentHashMap<>();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final ConcurrentHashMap<String, String> f15145f = new ConcurrentHashMap<>();

    private l0() {
    }

    @NotNull
    public static final String b() {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            if (!f15143d.get()) {
                f15140a.d();
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(f15144e);
            hashMap.putAll(f15140a.c());
            return u0.m0(hashMap);
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    private final Map<String, String> c() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            Set<String> b10 = q1.d.f65025d.b();
            for (String str : f15145f.keySet()) {
                if (b10.contains(str)) {
                    hashMap.put(str, f15145f.get(str));
                }
            }
            return hashMap;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final synchronized void d() {
        if (o4.a.d(this)) {
            return;
        }
        AtomicBoolean atomicBoolean = f15143d;
        if (atomicBoolean.get()) {
            return;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(com.facebook.v.l());
        Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferen….getApplicationContext())");
        f15142c = defaultSharedPreferences;
        SharedPreferences sharedPreferences = null;
        if (defaultSharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
            defaultSharedPreferences = null;
        }
        String string = defaultSharedPreferences.getString("com.facebook.appevents.UserDataStore.userData", "");
        if (string == null) {
            string = "";
        }
        SharedPreferences sharedPreferences2 = f15142c;
        if (sharedPreferences2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
        } else {
            sharedPreferences = sharedPreferences2;
        }
        String string2 = sharedPreferences.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
        if (string2 == null) {
            string2 = "";
        }
        f15144e.putAll(u0.i0(string));
        f15145f.putAll(u0.i0(string2));
        atomicBoolean.set(true);
    }

    public static final void e() {
        if (o4.a.d(l0.class)) {
            return;
        }
        try {
            if (f15143d.get()) {
                return;
            }
            f15140a.d();
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
        }
    }

    private final String f(String str, String str2) {
        String str3;
        int i10;
        boolean z10;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            int length = str2.length() - 1;
            int i11 = 0;
            boolean z11 = false;
            while (i11 <= length) {
                if (!z11) {
                    i10 = i11;
                } else {
                    i10 = length;
                }
                if (Intrinsics.compare((int) str2.charAt(i10), 32) <= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z11) {
                    if (!z10) {
                        z11 = true;
                    } else {
                        i11++;
                    }
                } else if (!z10) {
                    break;
                } else {
                    length--;
                }
            }
            String lowerCase = str2.subSequence(i11, length + 1).toString().toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
            if (Intrinsics.areEqual("em", str)) {
                if (!Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                    Log.e(f15141b, "Setting email failure: this is not a valid email address");
                    return "";
                }
                return lowerCase;
            } else if (Intrinsics.areEqual("ph", str)) {
                return new Regex("[^0-9]").replace(lowerCase, "");
            } else {
                if (Intrinsics.areEqual("ge", str)) {
                    if (lowerCase.length() <= 0) {
                        str3 = "";
                    } else {
                        str3 = lowerCase.substring(0, 1);
                        Intrinsics.checkNotNullExpressionValue(str3, "this as java.lang.String…ing(startIndex, endIndex)");
                    }
                    if (!Intrinsics.areEqual("f", str3) && !Intrinsics.areEqual("m", str3)) {
                        Log.e(f15141b, "Setting gender failure: the supported value for gender is f or m");
                        return "";
                    }
                    return str3;
                }
                return lowerCase;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static final void g(@NotNull Map<String, String> ud2) {
        String[] strArr;
        List<String> q10;
        int i10;
        boolean z10;
        if (o4.a.d(l0.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(ud2, "ud");
            if (!f15143d.get()) {
                f15140a.d();
            }
            for (Map.Entry<String, String> entry : ud2.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                l0 l0Var = f15140a;
                int length = value.length() - 1;
                int i11 = 0;
                boolean z11 = false;
                while (i11 <= length) {
                    if (!z11) {
                        i10 = i11;
                    } else {
                        i10 = length;
                    }
                    if (Intrinsics.compare((int) value.charAt(i10), 32) <= 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z11) {
                        if (!z10) {
                            z11 = true;
                        } else {
                            i11++;
                        }
                    } else if (!z10) {
                        break;
                    } else {
                        length--;
                    }
                }
                String G0 = u0.G0(l0Var.f(key, value.subSequence(i11, length + 1).toString()));
                ConcurrentHashMap<String, String> concurrentHashMap = f15145f;
                if (concurrentHashMap.containsKey(key)) {
                    String str = concurrentHashMap.get(key);
                    if (str == null || (q10 = new Regex(",").q(str, 0)) == null || (strArr = (String[]) q10.toArray(new String[0])) == null) {
                        strArr = new String[0];
                    }
                    Set h10 = y0.h(Arrays.copyOf(strArr, strArr.length));
                    if (h10.contains(G0)) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    if (strArr.length == 0) {
                        sb2.append(G0);
                    } else if (strArr.length < 5) {
                        sb2.append(str);
                        sb2.append(",");
                        sb2.append(G0);
                    } else {
                        for (int i12 = 1; i12 < 5; i12++) {
                            sb2.append(strArr[i12]);
                            sb2.append(",");
                        }
                        sb2.append(G0);
                        h10.remove(strArr[0]);
                    }
                    f15145f.put(key, sb2.toString());
                } else {
                    concurrentHashMap.put(key, G0);
                }
            }
            f15140a.h("com.facebook.appevents.UserDataStore.internalUserData", u0.m0(f15145f));
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
        }
    }

    private final void h(final String str, final String str2) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            com.facebook.v.u().execute(new Runnable() { // from class: com.facebook.appevents.k0
                @Override // java.lang.Runnable
                public final void run() {
                    l0.i(str, str2);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String key, String value) {
        if (o4.a.d(l0.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(key, "$key");
            Intrinsics.checkNotNullParameter(value, "$value");
            if (!f15143d.get()) {
                f15140a.d();
            }
            SharedPreferences sharedPreferences = f15142c;
            if (sharedPreferences == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
                sharedPreferences = null;
            }
            sharedPreferences.edit().putString(key, value).apply();
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
        }
    }
}
