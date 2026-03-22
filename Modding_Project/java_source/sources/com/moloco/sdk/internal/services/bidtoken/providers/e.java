package com.moloco.sdk.internal.services.bidtoken.providers;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e implements j<d> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33191d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33192e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Context f33193b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public d f33194c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public e(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33193b = context;
        this.f33194c = new d(e());
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33194c = new d(e());
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        d dVar;
        boolean z10 = !Intrinsics.areEqual(new d(e()), this.f33194c);
        MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, "ADISignalProvider", "[CBT] ADI needsRefresh: " + z10 + ", with adi: " + dVar.a(), false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "ADISignalProvider";
    }

    public final Long e() {
        try {
            return Long.valueOf(this.f33193b.getFilesDir().getTotalSpace());
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "ADISignalProvider", "ADI Error", e10, false, 8, null);
            return null;
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: f */
    public d d() {
        d dVar = this.f33194c;
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debugBuildLog$default(molocoLogger, "ADISignalProvider", "[CBT] ADI providing " + dVar.a(), false, 4, null);
        return dVar;
    }
}
