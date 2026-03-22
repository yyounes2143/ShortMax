package m0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Build;
import coil.request.CachePolicy;
import coil.size.Scale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Options.kt */
@Metadata
/* loaded from: classes2.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f62405a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap.Config f62406b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ColorSpace f62407c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final n0.g f62408d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Scale f62409e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f62410f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f62411g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f62412h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f62413i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final Headers f62414j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final n f62415k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final k f62416l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final CachePolicy f62417m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final CachePolicy f62418n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final CachePolicy f62419o;

    public j(@NotNull Context context, @NotNull Bitmap.Config config, @Nullable ColorSpace colorSpace, @NotNull n0.g gVar, @NotNull Scale scale, boolean z10, boolean z11, boolean z12, @Nullable String str, @NotNull Headers headers, @NotNull n nVar, @NotNull k kVar, @NotNull CachePolicy cachePolicy, @NotNull CachePolicy cachePolicy2, @NotNull CachePolicy cachePolicy3) {
        this.f62405a = context;
        this.f62406b = config;
        this.f62407c = colorSpace;
        this.f62408d = gVar;
        this.f62409e = scale;
        this.f62410f = z10;
        this.f62411g = z11;
        this.f62412h = z12;
        this.f62413i = str;
        this.f62414j = headers;
        this.f62415k = nVar;
        this.f62416l = kVar;
        this.f62417m = cachePolicy;
        this.f62418n = cachePolicy2;
        this.f62419o = cachePolicy3;
    }

    @NotNull
    public final j a(@NotNull Context context, @NotNull Bitmap.Config config, @Nullable ColorSpace colorSpace, @NotNull n0.g gVar, @NotNull Scale scale, boolean z10, boolean z11, boolean z12, @Nullable String str, @NotNull Headers headers, @NotNull n nVar, @NotNull k kVar, @NotNull CachePolicy cachePolicy, @NotNull CachePolicy cachePolicy2, @NotNull CachePolicy cachePolicy3) {
        return new j(context, config, colorSpace, gVar, scale, z10, z11, z12, str, headers, nVar, kVar, cachePolicy, cachePolicy2, cachePolicy3);
    }

    public final boolean c() {
        return this.f62410f;
    }

    public final boolean d() {
        return this.f62411g;
    }

    @Nullable
    public final ColorSpace e() {
        return this.f62407c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (Intrinsics.areEqual(this.f62405a, jVar.f62405a) && this.f62406b == jVar.f62406b && ((Build.VERSION.SDK_INT < 26 || Intrinsics.areEqual(this.f62407c, jVar.f62407c)) && Intrinsics.areEqual(this.f62408d, jVar.f62408d) && this.f62409e == jVar.f62409e && this.f62410f == jVar.f62410f && this.f62411g == jVar.f62411g && this.f62412h == jVar.f62412h && Intrinsics.areEqual(this.f62413i, jVar.f62413i) && Intrinsics.areEqual(this.f62414j, jVar.f62414j) && Intrinsics.areEqual(this.f62415k, jVar.f62415k) && Intrinsics.areEqual(this.f62416l, jVar.f62416l) && this.f62417m == jVar.f62417m && this.f62418n == jVar.f62418n && this.f62419o == jVar.f62419o)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final Bitmap.Config f() {
        return this.f62406b;
    }

    @NotNull
    public final Context g() {
        return this.f62405a;
    }

    @Nullable
    public final String h() {
        return this.f62413i;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((this.f62405a.hashCode() * 31) + this.f62406b.hashCode()) * 31;
        ColorSpace colorSpace = this.f62407c;
        int i11 = 0;
        if (colorSpace != null) {
            i10 = colorSpace.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode2 = (((((((((((hashCode + i10) * 31) + this.f62408d.hashCode()) * 31) + this.f62409e.hashCode()) * 31) + Boolean.hashCode(this.f62410f)) * 31) + Boolean.hashCode(this.f62411g)) * 31) + Boolean.hashCode(this.f62412h)) * 31;
        String str = this.f62413i;
        if (str != null) {
            i11 = str.hashCode();
        }
        return ((((((((((((hashCode2 + i11) * 31) + this.f62414j.hashCode()) * 31) + this.f62415k.hashCode()) * 31) + this.f62416l.hashCode()) * 31) + this.f62417m.hashCode()) * 31) + this.f62418n.hashCode()) * 31) + this.f62419o.hashCode();
    }

    @NotNull
    public final CachePolicy i() {
        return this.f62418n;
    }

    @NotNull
    public final Headers j() {
        return this.f62414j;
    }

    @NotNull
    public final CachePolicy k() {
        return this.f62419o;
    }

    public final boolean l() {
        return this.f62412h;
    }

    @NotNull
    public final Scale m() {
        return this.f62409e;
    }

    @NotNull
    public final n0.g n() {
        return this.f62408d;
    }

    @NotNull
    public final n o() {
        return this.f62415k;
    }
}
