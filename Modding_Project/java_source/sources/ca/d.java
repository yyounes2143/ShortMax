package ca;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.hades.aar.admanager.core.AdPriority;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p000admanager.b.m;
@Metadata
/* loaded from: classes5.dex */
public final class d {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final c.e f3359n = new c.e();
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final String f3360o = "ADMOB";
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final String f3361p = "CUSTOMIZE";
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f3362a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f3363b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f3364c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AdFormat f3365d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final AdAggregatedSdk f3366e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private AdPriority f3367f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private String f3368g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private volatile m f3369h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Object f3370i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Object f3371j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final c f3372k;

    /* renamed from: l  reason: collision with root package name */
    private long f3373l;

    /* renamed from: m  reason: collision with root package name */
    private long f3374m;

    public d(@NotNull String id2, @NotNull String name, @NotNull String adUnitId, @NotNull AdFormat format, @NotNull AdAggregatedSdk aggregatedSdk, @NotNull AdPriority priority, @NotNull String preType) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(aggregatedSdk, "aggregatedSdk");
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(preType, "preType");
        this.f3362a = id2;
        this.f3363b = name;
        this.f3364c = adUnitId;
        this.f3365d = format;
        this.f3366e = aggregatedSdk;
        this.f3367f = priority;
        this.f3368g = preType;
        this.f3369h = m.LOADING;
        this.f3372k = new c();
        this.f3373l = -1L;
        this.f3374m = -1L;
    }

    public final void b() {
        this.f3370i = null;
        this.f3371j = null;
    }

    @NotNull
    public final String c() {
        return this.f3364c;
    }

    @NotNull
    public final AdAggregatedSdk d() {
        return this.f3366e;
    }

    public final long e() {
        return this.f3373l;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (Intrinsics.areEqual(this.f3362a, dVar.f3362a) && Intrinsics.areEqual(this.f3363b, dVar.f3363b) && Intrinsics.areEqual(this.f3364c, dVar.f3364c) && this.f3365d == dVar.f3365d && this.f3366e == dVar.f3366e && this.f3367f == dVar.f3367f && Intrinsics.areEqual(this.f3368g, dVar.f3368g)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final c f() {
        return this.f3372k;
    }

    @Nullable
    public final Object g() {
        return this.f3371j;
    }

    @NotNull
    public final AdFormat h() {
        return this.f3365d;
    }

    public int hashCode() {
        int hashCode = this.f3363b.hashCode();
        int hashCode2 = this.f3364c.hashCode();
        int hashCode3 = this.f3365d.hashCode();
        int hashCode4 = this.f3366e.hashCode();
        int hashCode5 = this.f3367f.hashCode();
        return this.f3368g.hashCode() + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (this.f3362a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    @NotNull
    public final String i() {
        return this.f3362a;
    }

    @NotNull
    public final String j() {
        return this.f3363b;
    }

    @NotNull
    public final String k() {
        return this.f3368g;
    }

    @NotNull
    public final AdPriority l() {
        return this.f3367f;
    }

    @Nullable
    public final Object m() {
        return this.f3370i;
    }

    @NotNull
    public final m n() {
        return this.f3369h;
    }

    public final boolean o() {
        if (Intrinsics.areEqual(this.f3368g, f3360o) || this.f3369h != m.READY || System.currentTimeMillis() < this.f3373l) {
            return false;
        }
        return true;
    }

    public final boolean p() {
        if (this.f3369h == m.LOADING) {
            return true;
        }
        return false;
    }

    public final boolean q() {
        if (Intrinsics.areEqual(this.f3368g, f3360o) || this.f3369h != m.LOADING || System.currentTimeMillis() < this.f3374m) {
            return false;
        }
        return true;
    }

    public final boolean r() {
        if (Intrinsics.areEqual(this.f3368g, f3360o)) {
            if (this.f3369h != m.READY) {
                return false;
            }
            return true;
        } else if (this.f3370i == null || this.f3369h != m.READY) {
            return false;
        } else {
            return true;
        }
    }

    public final boolean s() {
        if (this.f3369h == m.SHOWING) {
            return true;
        }
        return false;
    }

    public final boolean t() {
        return Intrinsics.areEqual(this.f3368g, f3360o);
    }

    @NotNull
    public String toString() {
        return "AdInfo(" + System.identityHashCode(this) + ")[fmt=" + this.f3365d.name() + ",state=" + this.f3369h + ",id=" + StringsKt.l1(this.f3364c, DomExceptionUtils.SEPARATOR, null, 2, null) + ",name=" + this.f3363b + ",type=" + this.f3368g + ",prio=" + this.f3367f.getValue() + ']';
    }

    public final void u(long j10) {
        this.f3373l = j10;
    }

    public final void v(@Nullable Object obj) {
        this.f3371j = obj;
    }

    public final void w(long j10) {
        this.f3374m = j10;
    }

    public final void x(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f3368g = str;
    }

    public final void y(@Nullable Object obj) {
        this.f3370i = obj;
    }

    public final void z(@NotNull m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f3369h = mVar;
    }

    public /* synthetic */ d(String str, String str2, String str3, AdFormat adFormat, AdAggregatedSdk adAggregatedSdk, AdPriority adPriority, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, adFormat, adAggregatedSdk, (i10 & 32) != 0 ? AdPriority.PRIORITY_LOW : adPriority, (i10 & 64) != 0 ? f3361p : str4);
    }
}
