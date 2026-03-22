package com.moloco.sdk.internal.ilrd;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.services.p;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l;
import gt.g0;
import gt.r1;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnit;
import kotlin.time.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f32269c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    public static final int f32270d = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f32271a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public e f32272b;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public g(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f32271a = context;
    }

    public final Init$SDKInitResponse.ILRDConfig a(Init$SDKInitResponse init$SDKInitResponse) {
        if (init$SDKInitResponse.hasIlrdConfig()) {
            return init$SDKInitResponse.getIlrdConfig();
        }
        return null;
    }

    public final IlrdEventsRepository b(g0 g0Var, Init$SDKInitResponse.ILRDConfig iLRDConfig, Init$SDKInitResponse init$SDKInitResponse) {
        String rawImpUrl = iLRDConfig.getRawImpUrl();
        Intrinsics.checkNotNullExpressionValue(rawImpUrl, "getRawImpUrl(...)");
        l c10 = b.i.f33662a.c();
        b.a aVar = kotlin.time.b.f61250b;
        int sessionExp = iLRDConfig.getSessionExp();
        DurationUnit durationUnit = DurationUnit.SECONDS;
        long s10 = kotlin.time.c.s(sessionExp, durationUnit);
        int maxBatchSize = iLRDConfig.getMaxBatchSize();
        long s11 = kotlin.time.c.s(iLRDConfig.getUploadInterval(), durationUnit);
        long s12 = kotlin.time.c.s(iLRDConfig.getMaxSessionLen(), durationUnit);
        b.h hVar = b.h.f33655a;
        com.moloco.sdk.internal.services.j h10 = hVar.h();
        Lifecycle lifecycle = ProcessLifecycleOwner.Companion.get().getLifecycle();
        p d10 = hVar.d();
        String publisherId = init$SDKInitResponse.getPublisherId();
        Intrinsics.checkNotNullExpressionValue(publisherId, "getPublisherId(...)");
        String appId = init$SDKInitResponse.getAppId();
        Intrinsics.checkNotNullExpressionValue(appId, "getAppId(...)");
        return new IlrdEventsRepository(g0Var, rawImpUrl, c10, s10, maxBatchSize, s11, s12, h10, lifecycle, d10, publisherId, appId, b.j.f33668a.b(), null, null, null, 57344, null);
    }

    @Nullable
    public final e c() {
        return this.f32272b;
    }

    public final e d(g0 g0Var, IlrdEventsRepository ilrdEventsRepository, List<? extends Init$SDKInitResponse.SupportedNetworks> list) {
        e eVar = new e(g0Var, this.f32271a, ilrdEventsRepository, list);
        this.f32272b = eVar;
        eVar.h();
        return eVar;
    }

    @NotNull
    public final Object e(@NotNull Init$SDKInitResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (this.f32272b != null) {
            Result.a aVar = Result.f60901b;
            return Result.d(Unit.f60915a);
        }
        Init$SDKInitResponse.ILRDConfig a10 = a(response);
        if (a10 == null) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(new Exception("No ILRD configuration found")));
        }
        List<Init$SDKInitResponse.SupportedNetworks> supportedNetworksList = a10.getSupportedNetworksList();
        if (!a10.getEnabled()) {
            Result.a aVar3 = Result.f60901b;
            return Result.d(kotlin.f.a(new Exception("Publisher has not opted into ILRD collection")));
        } else if (supportedNetworksList.isEmpty()) {
            Result.a aVar4 = Result.f60901b;
            return Result.d(kotlin.f.a(new Exception("No ILRD supported networks available")));
        } else {
            g0 a11 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getDefault().plus(r1.b(null, 1, null)));
            IlrdEventsRepository b10 = b(a11, a10, response);
            Intrinsics.checkNotNull(supportedNetworksList);
            d(a11, b10, supportedNetworksList);
            Result.a aVar5 = Result.f60901b;
            return Result.d(Unit.f60915a);
        }
    }
}
