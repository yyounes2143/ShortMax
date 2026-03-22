package com.moloco.sdk.internal.services.bidtoken.providers;

import android.app.ActivityManager;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nMemorySignalProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemorySignalProvider.kt\ncom/moloco/sdk/internal/services/bidtoken/providers/MemorySignalProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"})
/* loaded from: classes6.dex */
public final class t implements j<s> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33247d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33248e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final ActivityManager f33249b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public s f33250c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public t(@NotNull ActivityManager activityManager) {
        Intrinsics.checkNotNullParameter(activityManager, "activityManager");
        this.f33249b = activityManager;
        this.f33250c = e();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "MemorySignalProvider", "[CBT] Updating m state", false, 4, null);
        this.f33250c = e();
    }

    public final boolean b(s sVar, s sVar2) {
        return (Intrinsics.areEqual(sVar.a(), sVar2.a()) && Intrinsics.areEqual(sVar.b(), sVar2.b()) && Intrinsics.areEqual(sVar.c(), sVar2.c())) ? false : true;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "MemorySignalProvider";
    }

    public final s e() {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            this.f33249b.getMemoryInfo(memoryInfo);
            return new s(Boolean.valueOf(memoryInfo.lowMemory), Long.valueOf(memoryInfo.threshold), Long.valueOf(memoryInfo.totalMem));
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "MemorySignalProvider", "[CBT] MI Error", e10, false, 8, null);
            return new s(null, null, null, 7, null);
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: f */
    public s d() {
        s sVar = this.f33250c;
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debugBuildLog$default(molocoLogger, "MemorySignalProvider", "[CBT] lm: " + sVar.a() + ", t: " + sVar.b() + ", tm: " + sVar.c(), false, 4, null);
        return sVar;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        s e10 = e();
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debugBuildLog$default(molocoLogger, "MemorySignalProvider", "[CBT] cached lm: " + this.f33250c.a() + ", t: " + this.f33250c.b() + ", tm: " + this.f33250c.c(), false, 4, null);
        MolocoLogger.debugBuildLog$default(molocoLogger, "MemorySignalProvider", "[CBT] current lm: " + e10.a() + ", t: " + e10.b() + ", tm: " + e10.c(), false, 4, null);
        boolean b10 = b(e10, this.f33250c);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[CBT] m needsRefresh: ");
        sb2.append(b10);
        MolocoLogger.debugBuildLog$default(molocoLogger, "MemorySignalProvider", sb2.toString(), false, 4, null);
        return b10;
    }
}
