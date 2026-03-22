package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class r implements n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final f0 f36587a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final p f36588b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final p f36589c;

    public r(@NotNull f0 vastOptions, @NotNull p mraidOptions, @NotNull p staticOptions) {
        Intrinsics.checkNotNullParameter(vastOptions, "vastOptions");
        Intrinsics.checkNotNullParameter(mraidOptions, "mraidOptions");
        Intrinsics.checkNotNullParameter(staticOptions, "staticOptions");
        this.f36587a = vastOptions;
        this.f36588b = mraidOptions;
        this.f36589c = staticOptions;
    }

    @NotNull
    public final p a() {
        return this.f36588b;
    }

    @NotNull
    public final p b() {
        return this.f36589c;
    }

    @NotNull
    public final f0 c() {
        return this.f36587a;
    }
}
