package com.unity3d.ads.beta;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ShowOptions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShowOptions {
    @NotNull
    private final Map<String, String> extras;

    public ShowOptions() {
        this(null, 1, null);
    }

    @NotNull
    public final Map<String, String> getExtras() {
        return this.extras;
    }

    public ShowOptions(@NotNull Map<String, String> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.extras = extras;
    }

    public /* synthetic */ ShowOptions(Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? p0.i() : map);
    }
}
