package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class y {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Function0<Unit> f36144a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Function0<Unit> f36145b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Function0<Unit> f36146c;

    public y() {
        this(null, null, null, 7, null);
    }

    @Nullable
    public final Function0<Unit> a() {
        return this.f36145b;
    }

    @Nullable
    public final Function0<Unit> b() {
        return this.f36146c;
    }

    @Nullable
    public final Function0<Unit> c() {
        return this.f36144a;
    }

    public y(@Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02, @Nullable Function0<Unit> function03) {
        this.f36144a = function0;
        this.f36145b = function02;
        this.f36146c = function03;
    }

    public /* synthetic */ y(Function0 function0, Function0 function02, Function0 function03, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : function0, (i10 & 2) != 0 ? null : function02, (i10 & 4) != 0 ? null : function03);
    }
}
