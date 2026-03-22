package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class v implements j<u> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33255d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33256e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.b f33257b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public u f33258c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public v(@NotNull com.moloco.sdk.internal.services.b networkInfoService) {
        Intrinsics.checkNotNullParameter(networkInfoService, "networkInfoService");
        this.f33257b = networkInfoService;
        this.f33258c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33258c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        u e10 = e();
        boolean z10 = !Intrinsics.areEqual(e10, this.f33258c);
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "NISignalProvider", "[CBT] NIS needsRefresh: " + z10 + ", with nis: " + e10 + ", cached: " + this.f33258c, false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "NISignalProvider";
    }

    public final u e() {
        try {
            u uVar = new u(this.f33257b.d(), this.f33257b.b(), Boolean.valueOf(this.f33257b.a()), this.f33257b.c());
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.debugBuildLog$default(molocoLogger, "NISignalProvider", "[CBT] NIS providing " + uVar, false, 4, null);
            return uVar;
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "NISignalProvider", "[CBT] NIS Error", e10, false, 8, null);
            return new u(null, null, null, null, 15, null);
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: f */
    public u d() {
        return this.f33258c;
    }
}
