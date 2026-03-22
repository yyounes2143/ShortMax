package com.moloco.sdk.internal.publisher.nativead.model;

import android.net.Uri;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.publisher.nativead.model.a;
import com.moloco.sdk.internal.publisher.nativead.model.b;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Map<Integer, b.a> f32862a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Map<Integer, b.C0484b> f32863b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Map<Integer, b.c> f32864c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Map<Integer, b.d> f32865d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final List<Pair<a.AbstractC0482a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>> f32866e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final i f32867f;

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull Map<Integer, b.a> data, @NotNull Map<Integer, b.C0484b> images, @NotNull Map<Integer, b.c> titles, @NotNull Map<Integer, b.d> videos, @NotNull List<? extends Pair<? extends a.AbstractC0482a, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>> failedAssets) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(images, "images");
        Intrinsics.checkNotNullParameter(titles, "titles");
        Intrinsics.checkNotNullParameter(videos, "videos");
        Intrinsics.checkNotNullParameter(failedAssets, "failedAssets");
        this.f32862a = data;
        this.f32863b = images;
        this.f32864c = titles;
        this.f32865d = videos;
        this.f32866e = failedAssets;
        this.f32867f = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.publisher.nativead.model.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.b(d.this);
            }
        });
    }

    public static final Map b(d dVar) {
        return p0.q(p0.q(p0.q(dVar.f32862a, dVar.f32863b), dVar.f32864c), dVar.f32865d);
    }

    @Nullable
    public final String a(int i10) {
        b.a aVar = this.f32862a.get(Integer.valueOf(i10));
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    @Nullable
    public final Uri c(int i10) {
        b.C0484b c0484b = this.f32863b.get(Integer.valueOf(i10));
        if (c0484b != null) {
            return c0484b.b();
        }
        return null;
    }

    @Nullable
    public final String d(int i10) {
        b.c cVar = this.f32864c.get(Integer.valueOf(i10));
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    @Nullable
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a e(int i10) {
        b.d dVar = this.f32865d.get(Integer.valueOf(i10));
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (Intrinsics.areEqual(this.f32862a, dVar.f32862a) && Intrinsics.areEqual(this.f32863b, dVar.f32863b) && Intrinsics.areEqual(this.f32864c, dVar.f32864c) && Intrinsics.areEqual(this.f32865d, dVar.f32865d) && Intrinsics.areEqual(this.f32866e, dVar.f32866e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.f32862a.hashCode() * 31) + this.f32863b.hashCode()) * 31) + this.f32864c.hashCode()) * 31) + this.f32865d.hashCode()) * 31) + this.f32866e.hashCode();
    }

    @NotNull
    public String toString() {
        return "PreparedNativeAssets(data=" + this.f32862a + ", images=" + this.f32863b + ", titles=" + this.f32864c + ", videos=" + this.f32865d + ", failedAssets=" + this.f32866e + ')';
    }
}
