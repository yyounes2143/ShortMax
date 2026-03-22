package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c implements j<com.moloco.sdk.internal.services.o> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33186d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33187e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.p f33188b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public com.moloco.sdk.internal.services.o f33189c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public c(@NotNull com.moloco.sdk.internal.services.p advertisingService) {
        Intrinsics.checkNotNullParameter(advertisingService, "advertisingService");
        this.f33188b = advertisingService;
        this.f33189c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33189c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        boolean z10 = !Intrinsics.areEqual(this.f33189c, e());
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "AdvertisingSignalProvider", "[CBT][ASP]: needsRefresh: " + z10, false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "AdvertisingSignalProvider";
    }

    public final com.moloco.sdk.internal.services.o e() {
        com.moloco.sdk.internal.services.o a10 = this.f33188b.a();
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debugBuildLog$default(molocoLogger, "AdvertisingSignalProvider", "[CBT][ASP]: adData: " + a10, false, 4, null);
        return a10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: f */
    public com.moloco.sdk.internal.services.o d() {
        return e();
    }
}
