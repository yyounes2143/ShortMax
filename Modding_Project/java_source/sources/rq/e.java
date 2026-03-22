package rq;

import android.content.Context;
import io.bidmachine.rendering.model.FontStyleType;
import io.bidmachine.rendering.model.HorizontalGravity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f66028r = new a(null);
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private static final HorizontalGravity f66029s = HorizontalGravity.Center;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final f f66030a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Integer f66031b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f66032c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f66033d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final Float f66034e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final Float f66035f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final FontStyleType f66036g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final Boolean f66037h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final Float f66038i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final Integer f66039j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Integer f66040k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final g0 f66041l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final Float f66042m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final Integer f66043n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final Float f66044o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final HorizontalGravity f66045p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final Integer f66046q;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public e(@Nullable f fVar, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Float f10, @Nullable Float f11, @Nullable FontStyleType fontStyleType, @Nullable Boolean bool3, @Nullable Float f12, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable g0 g0Var, @Nullable Float f13, @Nullable Integer num5, @Nullable Float f14, @NotNull HorizontalGravity textHorizontalGravity) {
        Intrinsics.checkNotNullParameter(textHorizontalGravity, "textHorizontalGravity");
        this.f66030a = fVar;
        Integer num6 = num;
        this.f66031b = num6;
        this.f66032c = bool;
        this.f66033d = bool2;
        this.f66034e = f10;
        this.f66035f = f11;
        this.f66036g = fontStyleType;
        this.f66037h = bool3;
        this.f66038i = f12;
        this.f66039j = num2;
        this.f66040k = num4;
        this.f66041l = g0Var;
        this.f66042m = f13;
        this.f66043n = num5;
        this.f66044o = f14;
        this.f66045p = textHorizontalGravity;
        this.f66046q = num3 != null ? num3 : num6;
    }

    public static /* synthetic */ int d(e eVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return eVar.c(i10);
    }

    public static /* synthetic */ int h(e eVar, Context context, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return eVar.g(context, i10);
    }

    @Nullable
    public final f a() {
        return this.f66030a;
    }

    @Nullable
    public final Integer b() {
        return this.f66031b;
    }

    public final int c(int i10) {
        Integer num = this.f66031b;
        if (num != null) {
            return num.intValue();
        }
        return i10;
    }

    @Nullable
    public final j e(@NotNull Context context) {
        Integer p10;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!Intrinsics.areEqual(this.f66037h, Boolean.TRUE) || this.f66039j == null || (p10 = p(context)) == null || p10.intValue() <= 0) {
            return null;
        }
        return new j(p10.intValue(), this.f66039j.intValue());
    }

    @Nullable
    public final Boolean f() {
        return this.f66033d;
    }

    public final int g(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Float f10 = this.f66042m;
        if (f10 != null) {
            return yq.s.j(context, f10.floatValue());
        }
        return i10;
    }

    @Nullable
    public final Integer i() {
        return this.f66046q;
    }

    @Nullable
    public final Float j() {
        return this.f66035f;
    }

    @Nullable
    public final FontStyleType k() {
        return this.f66036g;
    }

    @Nullable
    public final Float l() {
        return this.f66034e;
    }

    @Nullable
    public final g0 m() {
        return this.f66041l;
    }

    @Nullable
    public final Integer n() {
        return this.f66040k;
    }

    @Nullable
    public final Integer o() {
        return this.f66039j;
    }

    @Nullable
    public final Integer p(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Float f10 = this.f66038i;
        if (f10 != null) {
            return Integer.valueOf(yq.s.j(context, f10.floatValue()));
        }
        return null;
    }

    @NotNull
    public final HorizontalGravity q() {
        return this.f66045p;
    }

    @Nullable
    public final Integer r(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Float f10 = this.f66044o;
        if (f10 != null) {
            return Integer.valueOf(yq.s.j(context, f10.floatValue()));
        }
        return null;
    }

    @Nullable
    public final Integer s() {
        return this.f66043n;
    }

    @Nullable
    public final Boolean t() {
        return this.f66032c;
    }

    public /* synthetic */ e(f fVar, Integer num, Boolean bool, Boolean bool2, Float f10, Float f11, FontStyleType fontStyleType, Boolean bool3, Float f12, Integer num2, Integer num3, Integer num4, g0 g0Var, Float f13, Integer num5, Float f14, HorizontalGravity horizontalGravity, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : fVar, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? null : bool, (i10 & 8) != 0 ? null : bool2, (i10 & 16) != 0 ? null : f10, (i10 & 32) != 0 ? null : f11, (i10 & 64) != 0 ? null : fontStyleType, (i10 & 128) != 0 ? null : bool3, (i10 & 256) != 0 ? null : f12, (i10 & 512) != 0 ? null : num2, (i10 & 1024) != 0 ? null : num3, (i10 & 2048) != 0 ? null : num4, (i10 & 4096) != 0 ? null : g0Var, (i10 & 8192) != 0 ? null : f13, (i10 & 16384) != 0 ? null : num5, (i10 & 32768) != 0 ? null : f14, (i10 & 65536) != 0 ? f66029s : horizontalGravity);
    }
}
