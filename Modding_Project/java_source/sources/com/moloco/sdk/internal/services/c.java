package com.moloco.sdk.internal.services;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.telephony.TelephonyManager;
import androidx.annotation.RequiresApi;
import androidx.autofill.HintConstants;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.services.a;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c implements b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33333a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final j0 f33334b;

    public c(@NotNull Context context, @NotNull j0 deviceInfoService) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceInfoService, "deviceInfoService");
        this.f33333a = context;
        this.f33334b = deviceInfoService;
    }

    @Override // com.moloco.sdk.internal.services.b
    public boolean a() {
        Object systemService = this.f33333a.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        return b((ConnectivityManager) systemService);
    }

    @Override // com.moloco.sdk.internal.services.b
    @Nullable
    public Integer b() {
        Object systemService = this.f33333a.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String networkOperator = ((TelephonyManager) systemService).getNetworkOperator();
        if (networkOperator == null || networkOperator.length() == 0) {
            return null;
        }
        String substring = networkOperator.substring(3);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return Integer.valueOf(Integer.parseInt(substring));
    }

    @Override // com.moloco.sdk.internal.services.b
    @NotNull
    public a c() {
        Object systemService = this.f33333a.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (connectivityManager.getActiveNetwork() == null) {
            return a.b.f33095a;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities == null) {
            return a.b.f33095a;
        }
        if (networkCapabilities.hasTransport(1)) {
            return a.c.f33096a;
        }
        if (networkCapabilities.hasTransport(0)) {
            return new a.C0488a(this.f33334b.invoke().g());
        }
        return a.b.f33095a;
    }

    @Override // com.moloco.sdk.internal.services.b
    @Nullable
    public Integer d() {
        Object systemService = this.f33333a.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String networkOperator = ((TelephonyManager) systemService).getNetworkOperator();
        if (networkOperator != null && networkOperator.length() != 0) {
            String substring = networkOperator.substring(0, 3);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return Integer.valueOf(Integer.parseInt(substring));
        }
        return null;
    }

    @Override // com.moloco.sdk.internal.services.b
    @ms.c
    @NotNull
    public a invoke() {
        return c();
    }

    @RequiresApi(24)
    public final boolean b(ConnectivityManager connectivityManager) {
        return connectivityManager.getRestrictBackgroundStatus() == 3;
    }
}
