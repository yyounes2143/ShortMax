package com.moloco.sdk.internal.services;

import android.content.Context;
import android.content.pm.PackageInfo;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nAppInfoService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppInfoService.kt\ncom/moloco/sdk/internal/services/AppInfoServiceImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n1#2:36\n*E\n"})
/* loaded from: classes6.dex */
public final class y implements x {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33541a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public w f33542b;

    public y(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33541a = context;
    }

    @Override // com.moloco.sdk.internal.services.x
    @NotNull
    public w invoke() {
        Object d10;
        w wVar = this.f33542b;
        if (wVar == null) {
            try {
                Result.a aVar = Result.f60901b;
                Context context = this.f33541a;
                String obj = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
                PackageInfo a10 = a0.a(this.f33541a);
                String packageName = a10.packageName;
                Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
                String versionName = a10.versionName;
                Intrinsics.checkNotNullExpressionValue(versionName, "versionName");
                w wVar2 = new w(obj, packageName, versionName);
                this.f33542b = wVar2;
                d10 = Result.d(wVar2);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            if (Result.i(d10)) {
                d10 = null;
            }
            w wVar3 = (w) d10;
            if (wVar3 == null) {
                return new w("", "", "");
            }
            return wVar3;
        }
        return wVar;
    }
}
