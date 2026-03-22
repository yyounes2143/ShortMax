package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f35603a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f35604b;

    public o(@NotNull String clickThroughUrl, @NotNull List<String> clickTrackingUrlList) {
        Intrinsics.checkNotNullParameter(clickThroughUrl, "clickThroughUrl");
        Intrinsics.checkNotNullParameter(clickTrackingUrlList, "clickTrackingUrlList");
        this.f35603a = clickThroughUrl;
        this.f35604b = clickTrackingUrlList;
    }

    @NotNull
    public final String a() {
        return this.f35603a;
    }

    @NotNull
    public final List<String> b() {
        return this.f35604b;
    }
}
