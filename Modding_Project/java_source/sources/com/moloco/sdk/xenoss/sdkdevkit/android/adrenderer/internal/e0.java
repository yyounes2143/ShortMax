package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e0 f33962a = new e0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Map<Integer, C3281d> f33963b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    public static final int f33964c = 8;

    public final int a(@NotNull C3281d wv) {
        Intrinsics.checkNotNullParameter(wv, "wv");
        int hashCode = wv.hashCode();
        f33963b.put(Integer.valueOf(hashCode), wv);
        return hashCode;
    }

    public final void c(int i10) {
        f33963b.remove(Integer.valueOf(i10));
    }
}
