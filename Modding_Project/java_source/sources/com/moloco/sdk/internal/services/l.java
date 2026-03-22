package com.moloco.sdk.internal.services;

import android.content.Context;
import android.content.pm.PackageInfo;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.webkit.WebViewCompat;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33504a;

    public l(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33504a = context;
    }

    @NotNull
    public final Object a() {
        PackageInfo currentWebViewPackage = WebViewCompat.getCurrentWebViewPackage(this.f33504a);
        if (currentWebViewPackage == null) {
            Result.a aVar = Result.f60901b;
            return Result.d(kotlin.f.a(new Exception("No current WebView package exists")));
        }
        int applicationEnabledSetting = this.f33504a.getPackageManager().getApplicationEnabledSetting(currentWebViewPackage.packageName);
        if (applicationEnabledSetting != 2) {
            if (applicationEnabledSetting != 3) {
                if (applicationEnabledSetting != 4) {
                    Result.a aVar2 = Result.f60901b;
                    return Result.d(Unit.f60915a);
                }
                Result.a aVar3 = Result.f60901b;
                return Result.d(kotlin.f.a(new Exception("WebView component is disabled until used")));
            }
            Result.a aVar4 = Result.f60901b;
            return Result.d(kotlin.f.a(new Exception("WebView component is disabled by user")));
        }
        Result.a aVar5 = Result.f60901b;
        return Result.d(kotlin.f.a(new Exception("WebView component is disabled by system")));
    }
}
