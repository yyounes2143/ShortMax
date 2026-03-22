package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f35579a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f35580b;

    public h(@NotNull String clickThroughUrl, @NotNull List<String> clickTrackingUrls) {
        Intrinsics.checkNotNullParameter(clickThroughUrl, "clickThroughUrl");
        Intrinsics.checkNotNullParameter(clickTrackingUrls, "clickTrackingUrls");
        this.f35579a = clickThroughUrl;
        this.f35580b = clickTrackingUrls;
    }

    @NotNull
    public final String a() {
        return this.f35579a;
    }

    @NotNull
    public final List<String> b() {
        return this.f35580b;
    }
}
