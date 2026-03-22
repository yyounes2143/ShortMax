package com.moloco.sdk.internal.services;

import android.content.Context;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.content.ContextCompat;
import java.util.Locale;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class u implements j0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33520a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final ms.i f33521b;

    public u(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33520a = context;
        this.f33521b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.services.s
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(u.b(u.this));
            }
        });
    }

    public static final boolean b(u uVar) {
        return uVar.f33520a.getResources().getBoolean(com.moloco.sdk.n.f33595a);
    }

    @Override // com.moloco.sdk.internal.services.j0
    @Nullable
    public Boolean a() {
        boolean z10;
        try {
            Object systemService = this.f33520a.getSystemService("sensor");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
            if (((SensorManager) systemService).getDefaultSensor(4) != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.moloco.sdk.internal.services.j0
    @NotNull
    public String c() {
        String language = Locale.getDefault().getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
        return language;
    }

    @Override // com.moloco.sdk.internal.services.j0
    @Nullable
    public String d() {
        Object systemService = this.f33520a.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodSubtype currentInputMethodSubtype = ((InputMethodManager) systemService).getCurrentInputMethodSubtype();
        if (currentInputMethodSubtype != null) {
            return currentInputMethodSubtype.getLocale();
        }
        return null;
    }

    public final boolean e() {
        return ((Boolean) this.f33521b.getValue()).booleanValue();
    }

    @Override // com.moloco.sdk.internal.services.j0
    @ms.c
    @NotNull
    public i0 invoke() {
        return b();
    }

    @Override // com.moloco.sdk.internal.services.j0
    @NotNull
    public i0 b() {
        String str = Build.MANUFACTURER;
        String str2 = str == null ? "" : str;
        String str3 = Build.MODEL;
        String str4 = str3 == null ? "" : str3;
        String str5 = Build.HARDWARE;
        String str6 = str5 == null ? "" : str5;
        boolean e10 = e();
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        int i10 = Build.VERSION.SDK_INT;
        String language = Locale.getDefault().getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
        TelephonyManager telephonyManager = (TelephonyManager) ContextCompat.getSystemService(this.f33520a, TelephonyManager.class);
        String str7 = (telephonyManager == null || (str7 = telephonyManager.getNetworkOperatorName()) == null) ? "" : "";
        float f10 = Resources.getSystem().getDisplayMetrics().density;
        long currentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        String str8 = str5 == null ? "" : str5;
        String str9 = Build.BRAND;
        return new i0(str2, str4, str6, e10, "android", RELEASE, i10, language, str7, f10, currentTimeMillis, str8, str9 == null ? "" : str9);
    }
}
