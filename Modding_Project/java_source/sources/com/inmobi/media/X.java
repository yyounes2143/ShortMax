package com.inmobi.media;

import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class X {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f24346a;

    /* renamed from: b  reason: collision with root package name */
    private long f24347b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f24348c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f24349d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f24350e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final String f24351f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private String f24352g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f24353h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private String f24354i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String f24355j;

    public X(@NotNull String mAdType) {
        Intrinsics.checkNotNullParameter(mAdType, "mAdType");
        this.f24346a = mAdType;
        this.f24347b = Long.MIN_VALUE;
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        this.f24351f = uuid;
        this.f24352g = "";
        this.f24354i = "activity";
    }

    private static /* synthetic */ void b() {
    }

    private static /* synthetic */ void c() {
    }

    @NotNull
    public final X a(long j10) {
        this.f24347b = j10;
        return this;
    }

    @NotNull
    public final X d(@NotNull String m10Context) {
        Intrinsics.checkNotNullParameter(m10Context, "m10Context");
        this.f24354i = m10Context;
        return this;
    }

    @NotNull
    public final X e(@Nullable String str) {
        this.f24350e = str;
        return this;
    }

    @NotNull
    public final X a(@NotNull Z placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.f24347b = placement.g();
        this.f24354i = placement.j();
        this.f24348c = placement.f();
        this.f24352g = placement.a();
        return this;
    }

    @NotNull
    public final X b(@Nullable String str) {
        this.f24355j = str;
        return this;
    }

    @NotNull
    public final X c(@Nullable String str) {
        this.f24349d = str;
        return this;
    }

    @NotNull
    public final X a(@NotNull String adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        this.f24352g = adSize;
        return this;
    }

    @NotNull
    public final X a(@Nullable Map<String, String> map) {
        this.f24348c = map;
        return this;
    }

    @NotNull
    public final X a(boolean z10) {
        this.f24353h = z10;
        return this;
    }

    @NotNull
    public final Z a() throws IllegalStateException {
        long j10 = this.f24347b;
        if (j10 != Long.MIN_VALUE) {
            Map<String, String> map = this.f24348c;
            Z z10 = new Z(j10, (map == null || (r0 = map.get("tp")) == null) ? "" : "", this.f24346a, this.f24350e, null);
            z10.f24420d = this.f24349d;
            z10.a(this.f24348c);
            z10.a(this.f24352g);
            z10.b(this.f24354i);
            z10.f24423g = this.f24351f;
            z10.f24426j = this.f24353h;
            z10.f24427k = this.f24355j;
            return z10;
        }
        throw new IllegalStateException("When the integration type is IM, IM-Plc can't be empty");
    }
}
