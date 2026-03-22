package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.d0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class i implements j<h> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33204d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33205e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final d0 f33206b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public h f33207c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public i(@NotNull d0 batteryInfoService) {
        Intrinsics.checkNotNullParameter(batteryInfoService, "batteryInfoService");
        this.f33206b = batteryInfoService;
        this.f33207c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33207c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        boolean z10 = !Intrinsics.areEqual(this.f33207c, e());
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "BInfoSignalProvider", "[CBT][BIS]: needsRefresh: " + z10, false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "BInfoSignalProvider";
    }

    public final h e() {
        try {
            h hVar = new h(Integer.valueOf(this.f33206b.b()), Integer.valueOf(this.f33206b.a()), Boolean.valueOf(this.f33206b.c()));
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.debugBuildLog$default(molocoLogger, "BInfoSignalProvider", "[CBT][BIS]: blev: " + hVar.b() + ", bst: " + hVar.a() + ", psm: " + hVar.c(), false, 4, null);
            return hVar;
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "BInfoSignalProvider", "[CBT][BIS]: Error", e10, false, 8, null);
            return new h(null, null, null, 7, null);
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: f */
    public h d() {
        return this.f33207c;
    }
}
