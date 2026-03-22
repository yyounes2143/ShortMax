package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements j<com.moloco.sdk.internal.services.bidtoken.providers.a> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33182d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33183e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.m f33184b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public com.moloco.sdk.internal.services.bidtoken.providers.a f33185c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public b(@NotNull com.moloco.sdk.internal.services.m accessibilityInfoService) {
        Intrinsics.checkNotNullParameter(accessibilityInfoService, "accessibilityInfoService");
        this.f33184b = accessibilityInfoService;
        this.f33185c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33185c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        com.moloco.sdk.internal.services.bidtoken.providers.a e10 = e();
        boolean z10 = !Intrinsics.areEqual(e10, this.f33185c);
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "AcSignalProvider", "[CBT] needsRefresh: " + z10 + ", with current: " + e10 + ", cached: " + this.f33185c, false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "AcSignalProvider";
    }

    public final com.moloco.sdk.internal.services.bidtoken.providers.a e() {
        try {
            return new com.moloco.sdk.internal.services.bidtoken.providers.a(Boolean.valueOf(this.f33184b.c()), Boolean.valueOf(this.f33184b.b()), Boolean.valueOf(this.f33184b.a()), Float.valueOf(this.f33184b.getFontScale()));
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "AcSignalProvider", "[CBT] ACS Error", e10, false, 8, null);
            return new com.moloco.sdk.internal.services.bidtoken.providers.a(null, null, null, null, 15, null);
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: f */
    public com.moloco.sdk.internal.services.bidtoken.providers.a d() {
        return this.f33185c;
    }
}
