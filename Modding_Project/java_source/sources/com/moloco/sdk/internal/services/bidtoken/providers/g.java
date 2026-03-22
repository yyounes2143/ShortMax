package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.b0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g implements j<f> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33197d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33198e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final b0 f33199b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public f f33200c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public g(@NotNull b0 audioService) {
        Intrinsics.checkNotNullParameter(audioService, "audioService");
        this.f33199b = audioService;
        this.f33200c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33200c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        f e10 = e();
        boolean z10 = !Intrinsics.areEqual(e10, this.f33200c);
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "AudSignalProvider", "[CBT] needsRefresh: " + z10 + ", with current: " + e10 + ", cached: " + this.f33200c, false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "AudSignalProvider";
    }

    public final f e() {
        try {
            return new f(this.f33199b.a(), Integer.valueOf(this.f33199b.b()));
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "AudSignalProvider", "[CBT] AS Error", e10, false, 8, null);
            return new f(null, null, 3, null);
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: f */
    public f d() {
        return this.f33200c;
    }
}
