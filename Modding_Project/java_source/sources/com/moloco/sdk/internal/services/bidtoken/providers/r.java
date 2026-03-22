package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class r implements j<q> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33240d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33241e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Function0<com.moloco.sdk.internal.ilrd.e> f33242b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public q f33243c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public r(@NotNull Function0<com.moloco.sdk.internal.ilrd.e> _ilrdService) {
        Intrinsics.checkNotNullParameter(_ilrdService, "_ilrdService");
        this.f33242b = _ilrdService;
        this.f33243c = f();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33243c = f();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        q f10 = f();
        boolean z10 = !Intrinsics.areEqual(f10, this.f33243c);
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "IlrdSignalProvider", "[Ilrd] needsRefresh: " + z10 + ", with current: " + f10 + ", cached: " + this.f33243c, false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "IlrdSignalProvider";
    }

    public final q e() {
        return new q("", -1L, -1L, -1, -1, -1, -1, -1);
    }

    public final q f() {
        q f10;
        try {
            com.moloco.sdk.internal.ilrd.e invoke = this.f33242b.invoke();
            if (invoke != null && (f10 = invoke.f()) != null) {
                return f10;
            }
            return e();
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "IlrdSignalProvider", "Error retrieving ILRD signal", e10, false, 8, null);
            return e();
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: g */
    public q d() {
        return this.f33243c;
    }
}
