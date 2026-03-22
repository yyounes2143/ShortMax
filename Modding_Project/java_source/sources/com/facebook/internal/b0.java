package com.facebook.internal;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageResponse.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final a0 f16161a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Exception f16162b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f16163c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Bitmap f16164d;

    public b0(@NotNull a0 request, @Nullable Exception exc, boolean z10, @Nullable Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f16161a = request;
        this.f16162b = exc;
        this.f16163c = z10;
        this.f16164d = bitmap;
    }

    @Nullable
    public final Bitmap a() {
        return this.f16164d;
    }

    @Nullable
    public final Exception b() {
        return this.f16162b;
    }

    @NotNull
    public final a0 c() {
        return this.f16161a;
    }

    public final boolean d() {
        return this.f16163c;
    }
}
