package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f35570a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f35571b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Integer f35572c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f35573d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f35574e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final h f35575f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final e f35576g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final List<y> f35577h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final List<a0> f35578i;

    /* JADX WARN: Multi-variable type inference failed */
    public g(@Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2, @Nullable String str3, @Nullable h hVar, @Nullable e eVar, @NotNull List<y> creativeViewTrackingList, @NotNull List<? extends a0> resources) {
        Intrinsics.checkNotNullParameter(creativeViewTrackingList, "creativeViewTrackingList");
        Intrinsics.checkNotNullParameter(resources, "resources");
        this.f35570a = str;
        this.f35571b = num;
        this.f35572c = num2;
        this.f35573d = str2;
        this.f35574e = str3;
        this.f35575f = hVar;
        this.f35576g = eVar;
        this.f35577h = creativeViewTrackingList;
        this.f35578i = resources;
    }

    @Nullable
    public final String a() {
        return this.f35574e;
    }

    @Nullable
    public final h b() {
        return this.f35575f;
    }

    @NotNull
    public final List<y> c() {
        return this.f35577h;
    }

    @Nullable
    public final Integer d() {
        return this.f35572c;
    }

    @NotNull
    public final List<a0> e() {
        return this.f35578i;
    }

    @Nullable
    public final Integer f() {
        return this.f35571b;
    }
}
