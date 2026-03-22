package com.moloco.sdk.internal.error.api;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.j;
import com.moloco.sdk.internal.utils.d;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class b implements a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final j f32101a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.a f32102b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f32103c;

    public b(@NotNull j timeProviderService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.a httpClient) {
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.f32101a = timeProviderService;
        this.f32102b = httpClient;
        this.f32103c = "ErrorReportingApi";
    }

    @Override // com.moloco.sdk.internal.error.api.a
    public void a(@NotNull Throwable error) {
        Intrinsics.checkNotNullParameter(error, "error");
        MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f32103c, "SDK Crashed", error, false, 8, null);
    }

    @Override // com.moloco.sdk.internal.error.api.a
    public void b(@NotNull String error, @NotNull String url, @NotNull com.moloco.sdk.internal.error.a errorMetadata) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(errorMetadata, "errorMetadata");
        String e10 = d.e(d.d(url, error, this.f32101a.invoke()), errorMetadata.a());
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str = this.f32103c;
        MolocoLogger.info$default(molocoLogger, str, "Reporting error: " + error + " to url: " + e10, null, false, 12, null);
        this.f32102b.a(e10);
    }
}
