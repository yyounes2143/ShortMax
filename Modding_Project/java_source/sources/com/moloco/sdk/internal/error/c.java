package com.moloco.sdk.internal.error;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class c implements b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.config.a f32104a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.error.api.a f32105b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f32106c;

    public c(@NotNull com.moloco.sdk.internal.services.config.a configService, @NotNull com.moloco.sdk.internal.error.api.a errorReportingApi) {
        Intrinsics.checkNotNullParameter(configService, "configService");
        Intrinsics.checkNotNullParameter(errorReportingApi, "errorReportingApi");
        this.f32104a = configService;
        this.f32105b = errorReportingApi;
        this.f32106c = "ErrorReportingServiceImpl";
    }

    @Override // com.moloco.sdk.internal.error.b
    public void a(@NotNull String error, @NotNull a errorMetadata) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(errorMetadata, "errorMetadata");
        if (!this.f32104a.a("ReportSDKError")) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str = this.f32106c;
            MolocoLogger.warn$default(molocoLogger, str, "Error reporting is disabled. Tried to report error: " + error, null, false, 12, null);
            return;
        }
        String b10 = this.f32104a.b("ReportSDKError");
        if (b10 == null) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f32106c, "Error reporting is enabled but with invalid url", null, false, 12, null);
        } else {
            this.f32105b.b(error, b10, errorMetadata);
        }
    }
}
