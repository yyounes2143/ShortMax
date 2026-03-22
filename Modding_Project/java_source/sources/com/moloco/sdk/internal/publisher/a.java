package com.moloco.sdk.internal.publisher;

import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdShowListener;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class a {
    @NotNull
    public static final t0 a(@Nullable AdShowListener adShowListener, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull Function0<com.moloco.sdk.internal.ortb.model.r> provideSdkEvents, @NotNull Function0<e0> provideBUrlData, @NotNull com.moloco.sdk.internal.h0 sdkEventUrlTracker, @NotNull com.moloco.sdk.internal.i bUrlTracker, @NotNull AdFormatType adType, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(provideSdkEvents, "provideSdkEvents");
        Intrinsics.checkNotNullParameter(provideBUrlData, "provideBUrlData");
        Intrinsics.checkNotNullParameter(sdkEventUrlTracker, "sdkEventUrlTracker");
        Intrinsics.checkNotNullParameter(bUrlTracker, "bUrlTracker");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return new z(adShowListener, appLifecycleTrackerService, customUserEventBuilderService, provideSdkEvents, provideBUrlData, sdkEventUrlTracker, bUrlTracker, adType, metricsRecorder);
    }

    public static /* synthetic */ t0 b(AdShowListener adShowListener, com.moloco.sdk.internal.services.r rVar, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, Function0 function0, Function0 function02, com.moloco.sdk.internal.h0 h0Var, com.moloco.sdk.internal.i iVar, AdFormatType adFormatType, com.moloco.sdk.acm.recorder.a aVar2, int i10, Object obj) {
        com.moloco.sdk.internal.h0 h0Var2;
        com.moloco.sdk.internal.i iVar2;
        if ((i10 & 32) != 0) {
            h0Var2 = com.moloco.sdk.internal.k0.b();
        } else {
            h0Var2 = h0Var;
        }
        if ((i10 & 64) != 0) {
            iVar2 = com.moloco.sdk.internal.l.a();
        } else {
            iVar2 = iVar;
        }
        return a(adShowListener, rVar, aVar, function0, function02, h0Var2, iVar2, adFormatType, aVar2);
    }
}
