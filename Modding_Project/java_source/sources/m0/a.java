package m0;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import coil.request.CachePolicy;
import coil.size.Precision;
import gt.c0;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q0.c;
/* compiled from: DefaultRequestOptions.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final c0 f62318a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final c0 f62319b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final c0 f62320c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final c0 f62321d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final c.a f62322e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Precision f62323f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Bitmap.Config f62324g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f62325h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f62326i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final Drawable f62327j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Drawable f62328k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final Drawable f62329l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final CachePolicy f62330m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final CachePolicy f62331n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final CachePolicy f62332o;

    public a() {
        this(null, null, null, null, null, null, null, false, false, null, null, null, null, null, null, 32767, null);
    }

    public final boolean a() {
        return this.f62325h;
    }

    public final boolean b() {
        return this.f62326i;
    }

    @NotNull
    public final Bitmap.Config c() {
        return this.f62324g;
    }

    @NotNull
    public final c0 d() {
        return this.f62320c;
    }

    @NotNull
    public final CachePolicy e() {
        return this.f62331n;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f62318a, aVar.f62318a) && Intrinsics.areEqual(this.f62319b, aVar.f62319b) && Intrinsics.areEqual(this.f62320c, aVar.f62320c) && Intrinsics.areEqual(this.f62321d, aVar.f62321d) && Intrinsics.areEqual(this.f62322e, aVar.f62322e) && this.f62323f == aVar.f62323f && this.f62324g == aVar.f62324g && this.f62325h == aVar.f62325h && this.f62326i == aVar.f62326i && Intrinsics.areEqual(this.f62327j, aVar.f62327j) && Intrinsics.areEqual(this.f62328k, aVar.f62328k) && Intrinsics.areEqual(this.f62329l, aVar.f62329l) && this.f62330m == aVar.f62330m && this.f62331n == aVar.f62331n && this.f62332o == aVar.f62332o) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final Drawable f() {
        return this.f62328k;
    }

    @Nullable
    public final Drawable g() {
        return this.f62329l;
    }

    @NotNull
    public final c0 h() {
        return this.f62319b;
    }

    public int hashCode() {
        int i10;
        int i11;
        int hashCode = ((((((((((((((((this.f62318a.hashCode() * 31) + this.f62319b.hashCode()) * 31) + this.f62320c.hashCode()) * 31) + this.f62321d.hashCode()) * 31) + this.f62322e.hashCode()) * 31) + this.f62323f.hashCode()) * 31) + this.f62324g.hashCode()) * 31) + Boolean.hashCode(this.f62325h)) * 31) + Boolean.hashCode(this.f62326i)) * 31;
        Drawable drawable = this.f62327j;
        int i12 = 0;
        if (drawable != null) {
            i10 = drawable.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (hashCode + i10) * 31;
        Drawable drawable2 = this.f62328k;
        if (drawable2 != null) {
            i11 = drawable2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        Drawable drawable3 = this.f62329l;
        if (drawable3 != null) {
            i12 = drawable3.hashCode();
        }
        return ((((((i14 + i12) * 31) + this.f62330m.hashCode()) * 31) + this.f62331n.hashCode()) * 31) + this.f62332o.hashCode();
    }

    @NotNull
    public final c0 i() {
        return this.f62318a;
    }

    @NotNull
    public final CachePolicy j() {
        return this.f62330m;
    }

    @NotNull
    public final CachePolicy k() {
        return this.f62332o;
    }

    @Nullable
    public final Drawable l() {
        return this.f62327j;
    }

    @NotNull
    public final Precision m() {
        return this.f62323f;
    }

    @NotNull
    public final c0 n() {
        return this.f62321d;
    }

    @NotNull
    public final c.a o() {
        return this.f62322e;
    }

    public a(@NotNull c0 c0Var, @NotNull c0 c0Var2, @NotNull c0 c0Var3, @NotNull c0 c0Var4, @NotNull c.a aVar, @NotNull Precision precision, @NotNull Bitmap.Config config, boolean z10, boolean z11, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @NotNull CachePolicy cachePolicy, @NotNull CachePolicy cachePolicy2, @NotNull CachePolicy cachePolicy3) {
        this.f62318a = c0Var;
        this.f62319b = c0Var2;
        this.f62320c = c0Var3;
        this.f62321d = c0Var4;
        this.f62322e = aVar;
        this.f62323f = precision;
        this.f62324g = config;
        this.f62325h = z10;
        this.f62326i = z11;
        this.f62327j = drawable;
        this.f62328k = drawable2;
        this.f62329l = drawable3;
        this.f62330m = cachePolicy;
        this.f62331n = cachePolicy2;
        this.f62332o = cachePolicy3;
    }

    public /* synthetic */ a(c0 c0Var, c0 c0Var2, c0 c0Var3, c0 c0Var4, c.a aVar, Precision precision, Bitmap.Config config, boolean z10, boolean z11, Drawable drawable, Drawable drawable2, Drawable drawable3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? q0.c().m() : c0Var, (i10 & 2) != 0 ? q0.b() : c0Var2, (i10 & 4) != 0 ? q0.b() : c0Var3, (i10 & 8) != 0 ? q0.b() : c0Var4, (i10 & 16) != 0 ? c.a.f65019b : aVar, (i10 & 32) != 0 ? Precision.AUTOMATIC : precision, (i10 & 64) != 0 ? r0.i.f() : config, (i10 & 128) != 0 ? true : z10, (i10 & 256) != 0 ? false : z11, (i10 & 512) != 0 ? null : drawable, (i10 & 1024) != 0 ? null : drawable2, (i10 & 2048) == 0 ? drawable3 : null, (i10 & 4096) != 0 ? CachePolicy.ENABLED : cachePolicy, (i10 & 8192) != 0 ? CachePolicy.ENABLED : cachePolicy2, (i10 & 16384) != 0 ? CachePolicy.ENABLED : cachePolicy3);
    }
}
