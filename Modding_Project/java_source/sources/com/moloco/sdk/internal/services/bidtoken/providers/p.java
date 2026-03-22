package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.j0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class p implements j<o> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f33227e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    public static final int f33228f = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final j0 f33229b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.f f33230c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public o f33231d;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public p(@NotNull j0 deviceInfoService, @NotNull com.moloco.sdk.internal.services.f screenInfoService) {
        Intrinsics.checkNotNullParameter(deviceInfoService, "deviceInfoService");
        Intrinsics.checkNotNullParameter(screenInfoService, "screenInfoService");
        this.f33229b = deviceInfoService;
        this.f33230c = screenInfoService;
        this.f33231d = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33231d = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        o e10 = e();
        boolean z10 = !Intrinsics.areEqual(e10, this.f33231d);
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "DSignalProvider", "[CBT] DSP needsRefresh: " + z10 + ", with current: " + e10 + ", cached: " + this.f33231d, false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "DSignalProvider";
    }

    public final o e() {
        try {
            return new o(this.f33230c.b(), this.f33229b.c(), this.f33229b.d());
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "DSignalProvider", "[CBT] DSP Error", e10, false, 8, null);
            return new o(null, null, null, 7, null);
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: f */
    public o d() {
        return this.f33231d;
    }
}
