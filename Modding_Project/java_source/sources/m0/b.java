package m0;

import android.graphics.Bitmap;
import androidx.lifecycle.Lifecycle;
import coil.request.CachePolicy;
import coil.size.Precision;
import coil.size.Scale;
import gt.c0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
import q0.c;
/* compiled from: DefinedRequestOptions.kt */
@Metadata
/* loaded from: classes2.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Lifecycle f62333a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final n0.h f62334b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Scale f62335c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final c0 f62336d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final c0 f62337e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final c0 f62338f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final c0 f62339g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final c.a f62340h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final Precision f62341i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final Bitmap.Config f62342j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Boolean f62343k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final Boolean f62344l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final CachePolicy f62345m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final CachePolicy f62346n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final CachePolicy f62347o;

    public b(@Nullable Lifecycle lifecycle, @Nullable n0.h hVar, @Nullable Scale scale, @Nullable c0 c0Var, @Nullable c0 c0Var2, @Nullable c0 c0Var3, @Nullable c0 c0Var4, @Nullable c.a aVar, @Nullable Precision precision, @Nullable Bitmap.Config config, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable CachePolicy cachePolicy, @Nullable CachePolicy cachePolicy2, @Nullable CachePolicy cachePolicy3) {
        this.f62333a = lifecycle;
        this.f62334b = hVar;
        this.f62335c = scale;
        this.f62336d = c0Var;
        this.f62337e = c0Var2;
        this.f62338f = c0Var3;
        this.f62339g = c0Var4;
        this.f62340h = aVar;
        this.f62341i = precision;
        this.f62342j = config;
        this.f62343k = bool;
        this.f62344l = bool2;
        this.f62345m = cachePolicy;
        this.f62346n = cachePolicy2;
        this.f62347o = cachePolicy3;
    }

    @Nullable
    public final Boolean a() {
        return this.f62343k;
    }

    @Nullable
    public final Boolean b() {
        return this.f62344l;
    }

    @Nullable
    public final Bitmap.Config c() {
        return this.f62342j;
    }

    @Nullable
    public final c0 d() {
        return this.f62338f;
    }

    @Nullable
    public final CachePolicy e() {
        return this.f62346n;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f62333a, bVar.f62333a) && Intrinsics.areEqual(this.f62334b, bVar.f62334b) && this.f62335c == bVar.f62335c && Intrinsics.areEqual(this.f62336d, bVar.f62336d) && Intrinsics.areEqual(this.f62337e, bVar.f62337e) && Intrinsics.areEqual(this.f62338f, bVar.f62338f) && Intrinsics.areEqual(this.f62339g, bVar.f62339g) && Intrinsics.areEqual(this.f62340h, bVar.f62340h) && this.f62341i == bVar.f62341i && this.f62342j == bVar.f62342j && Intrinsics.areEqual(this.f62343k, bVar.f62343k) && Intrinsics.areEqual(this.f62344l, bVar.f62344l) && this.f62345m == bVar.f62345m && this.f62346n == bVar.f62346n && this.f62347o == bVar.f62347o) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final c0 f() {
        return this.f62337e;
    }

    @Nullable
    public final c0 g() {
        return this.f62336d;
    }

    @Nullable
    public final Lifecycle h() {
        return this.f62333a;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        Lifecycle lifecycle = this.f62333a;
        int i24 = 0;
        if (lifecycle != null) {
            i10 = lifecycle.hashCode();
        } else {
            i10 = 0;
        }
        int i25 = i10 * 31;
        n0.h hVar = this.f62334b;
        if (hVar != null) {
            i11 = hVar.hashCode();
        } else {
            i11 = 0;
        }
        int i26 = (i25 + i11) * 31;
        Scale scale = this.f62335c;
        if (scale != null) {
            i12 = scale.hashCode();
        } else {
            i12 = 0;
        }
        int i27 = (i26 + i12) * 31;
        c0 c0Var = this.f62336d;
        if (c0Var != null) {
            i13 = c0Var.hashCode();
        } else {
            i13 = 0;
        }
        int i28 = (i27 + i13) * 31;
        c0 c0Var2 = this.f62337e;
        if (c0Var2 != null) {
            i14 = c0Var2.hashCode();
        } else {
            i14 = 0;
        }
        int i29 = (i28 + i14) * 31;
        c0 c0Var3 = this.f62338f;
        if (c0Var3 != null) {
            i15 = c0Var3.hashCode();
        } else {
            i15 = 0;
        }
        int i30 = (i29 + i15) * 31;
        c0 c0Var4 = this.f62339g;
        if (c0Var4 != null) {
            i16 = c0Var4.hashCode();
        } else {
            i16 = 0;
        }
        int i31 = (i30 + i16) * 31;
        c.a aVar = this.f62340h;
        if (aVar != null) {
            i17 = aVar.hashCode();
        } else {
            i17 = 0;
        }
        int i32 = (i31 + i17) * 31;
        Precision precision = this.f62341i;
        if (precision != null) {
            i18 = precision.hashCode();
        } else {
            i18 = 0;
        }
        int i33 = (i32 + i18) * 31;
        Bitmap.Config config = this.f62342j;
        if (config != null) {
            i19 = config.hashCode();
        } else {
            i19 = 0;
        }
        int i34 = (i33 + i19) * 31;
        Boolean bool = this.f62343k;
        if (bool != null) {
            i20 = bool.hashCode();
        } else {
            i20 = 0;
        }
        int i35 = (i34 + i20) * 31;
        Boolean bool2 = this.f62344l;
        if (bool2 != null) {
            i21 = bool2.hashCode();
        } else {
            i21 = 0;
        }
        int i36 = (i35 + i21) * 31;
        CachePolicy cachePolicy = this.f62345m;
        if (cachePolicy != null) {
            i22 = cachePolicy.hashCode();
        } else {
            i22 = 0;
        }
        int i37 = (i36 + i22) * 31;
        CachePolicy cachePolicy2 = this.f62346n;
        if (cachePolicy2 != null) {
            i23 = cachePolicy2.hashCode();
        } else {
            i23 = 0;
        }
        int i38 = (i37 + i23) * 31;
        CachePolicy cachePolicy3 = this.f62347o;
        if (cachePolicy3 != null) {
            i24 = cachePolicy3.hashCode();
        }
        return i38 + i24;
    }

    @Nullable
    public final CachePolicy i() {
        return this.f62345m;
    }

    @Nullable
    public final CachePolicy j() {
        return this.f62347o;
    }

    @Nullable
    public final Precision k() {
        return this.f62341i;
    }

    @Nullable
    public final Scale l() {
        return this.f62335c;
    }

    @Nullable
    public final n0.h m() {
        return this.f62334b;
    }

    @Nullable
    public final c0 n() {
        return this.f62339g;
    }

    @Nullable
    public final c.a o() {
        return this.f62340h;
    }
}
