package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class s {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f35622a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f35623b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f35624c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f35625d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Integer f35626e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Integer f35627f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f35628g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final Integer f35629h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final Integer f35630i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final Integer f35631j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final Boolean f35632k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final String f35633l;

    public s(@NotNull String mediaFileUrl, @Nullable String str, boolean z10, @NotNull String type, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Boolean bool, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(mediaFileUrl, "mediaFileUrl");
        Intrinsics.checkNotNullParameter(type, "type");
        this.f35622a = mediaFileUrl;
        this.f35623b = str;
        this.f35624c = z10;
        this.f35625d = type;
        this.f35626e = num;
        this.f35627f = num2;
        this.f35628g = str2;
        this.f35629h = num3;
        this.f35630i = num4;
        this.f35631j = num5;
        this.f35632k = bool;
        this.f35633l = str3;
    }

    @Nullable
    public final String a() {
        return this.f35633l;
    }

    @Nullable
    public final Integer b() {
        return this.f35629h;
    }

    @Nullable
    public final Integer c() {
        return this.f35627f;
    }

    @Nullable
    public final Integer d() {
        return this.f35631j;
    }

    @NotNull
    public final String e() {
        return this.f35622a;
    }

    @Nullable
    public final Integer f() {
        return this.f35630i;
    }

    @NotNull
    public final String g() {
        return this.f35625d;
    }

    @Nullable
    public final Integer h() {
        return this.f35626e;
    }

    public final boolean i() {
        return this.f35624c;
    }
}
