package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class r {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final t f35615a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final e f35616b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Long f35617c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final List<s> f35618d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final List<y> f35619e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final a f35620f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final List<n> f35621g;

    public r(@Nullable t tVar, @Nullable e eVar, @Nullable Long l10, @NotNull List<s> mediaFiles, @NotNull List<y> trackingList, @Nullable a aVar, @NotNull List<n> icons) {
        Intrinsics.checkNotNullParameter(mediaFiles, "mediaFiles");
        Intrinsics.checkNotNullParameter(trackingList, "trackingList");
        Intrinsics.checkNotNullParameter(icons, "icons");
        this.f35615a = tVar;
        this.f35616b = eVar;
        this.f35617c = l10;
        this.f35618d = mediaFiles;
        this.f35619e = trackingList;
        this.f35620f = aVar;
        this.f35621g = icons;
    }

    @Nullable
    public final Long a() {
        return this.f35617c;
    }

    @NotNull
    public final List<n> b() {
        return this.f35621g;
    }

    @NotNull
    public final List<s> c() {
        return this.f35618d;
    }

    @Nullable
    public final t d() {
        return this.f35615a;
    }

    @NotNull
    public final List<y> e() {
        return this.f35619e;
    }

    @Nullable
    public final a f() {
        return this.f35620f;
    }
}
