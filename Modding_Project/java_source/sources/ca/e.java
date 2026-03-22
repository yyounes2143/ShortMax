package ca;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.hades.aar.admanager.core.AdPriority;
import com.hades.aar.admanager.core.AdSize;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class e {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f3375k = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f3376a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final AdFormat f3377b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final AdPriority f3378c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3379d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f3380e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final AdSize f3381f;

    /* renamed from: g  reason: collision with root package name */
    private final int f3382g;

    /* renamed from: h  reason: collision with root package name */
    private int f3383h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private AdAggregatedSdk f3384i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f3385j;

    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public e(@NotNull String adUnitId, @NotNull AdFormat format, @NotNull AdPriority priority, int i10, @NotNull String name, @Nullable AdSize adSize, int i11, int i12, @NotNull AdAggregatedSdk adAggregatedSdk, boolean z10) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(adAggregatedSdk, "adAggregatedSdk");
        this.f3376a = adUnitId;
        this.f3377b = format;
        this.f3378c = priority;
        this.f3379d = i10;
        this.f3380e = name;
        this.f3381f = adSize;
        this.f3382g = i11;
        this.f3383h = i12;
        this.f3384i = adAggregatedSdk;
        this.f3385j = z10;
    }

    public static /* synthetic */ e b(e eVar, String str, AdFormat adFormat, AdPriority adPriority, int i10, String str2, AdSize adSize, int i11, int i12, AdAggregatedSdk adAggregatedSdk, boolean z10, int i13, Object obj) {
        String str3;
        AdFormat adFormat2;
        AdPriority adPriority2;
        int i14;
        String str4;
        AdSize adSize2;
        int i15;
        int i16;
        AdAggregatedSdk adAggregatedSdk2;
        boolean z11;
        if ((i13 & 1) != 0) {
            str3 = eVar.f3376a;
        } else {
            str3 = str;
        }
        if ((i13 & 2) != 0) {
            adFormat2 = eVar.f3377b;
        } else {
            adFormat2 = adFormat;
        }
        if ((i13 & 4) != 0) {
            adPriority2 = eVar.f3378c;
        } else {
            adPriority2 = adPriority;
        }
        if ((i13 & 8) != 0) {
            i14 = eVar.f3379d;
        } else {
            i14 = i10;
        }
        if ((i13 & 16) != 0) {
            str4 = eVar.f3380e;
        } else {
            str4 = str2;
        }
        if ((i13 & 32) != 0) {
            adSize2 = eVar.f3381f;
        } else {
            adSize2 = adSize;
        }
        if ((i13 & 64) != 0) {
            i15 = eVar.f3382g;
        } else {
            i15 = i11;
        }
        if ((i13 & 128) != 0) {
            i16 = eVar.f3383h;
        } else {
            i16 = i12;
        }
        if ((i13 & 256) != 0) {
            adAggregatedSdk2 = eVar.f3384i;
        } else {
            adAggregatedSdk2 = adAggregatedSdk;
        }
        if ((i13 & 512) != 0) {
            z11 = eVar.f3385j;
        } else {
            z11 = z10;
        }
        return eVar.a(str3, adFormat2, adPriority2, i14, str4, adSize2, i15, i16, adAggregatedSdk2, z11);
    }

    @NotNull
    public final e a(@NotNull String adUnitId, @NotNull AdFormat format, @NotNull AdPriority priority, int i10, @NotNull String name, @Nullable AdSize adSize, int i11, int i12, @NotNull AdAggregatedSdk adAggregatedSdk, boolean z10) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(adAggregatedSdk, "adAggregatedSdk");
        return new e(adUnitId, format, priority, i10, name, adSize, i11, i12, adAggregatedSdk, z10);
    }

    @NotNull
    public final AdAggregatedSdk c() {
        return this.f3384i;
    }

    public final int d() {
        return this.f3382g;
    }

    @NotNull
    public final String e() {
        return this.f3376a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (Intrinsics.areEqual(this.f3376a, eVar.f3376a) && this.f3377b == eVar.f3377b && this.f3378c == eVar.f3378c && this.f3379d == eVar.f3379d && Intrinsics.areEqual(this.f3380e, eVar.f3380e) && this.f3381f == eVar.f3381f && this.f3382g == eVar.f3382g && this.f3383h == eVar.f3383h && this.f3384i == eVar.f3384i && this.f3385j == eVar.f3385j) {
            return true;
        }
        return false;
    }

    @NotNull
    public final AdFormat f() {
        return this.f3377b;
    }

    public final int g() {
        return this.f3379d;
    }

    @NotNull
    public final String h() {
        return this.f3380e;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f3377b.hashCode();
        int hashCode3 = this.f3378c.hashCode();
        int hashCode4 = Integer.hashCode(this.f3379d);
        int hashCode5 = (this.f3380e.hashCode() + ((hashCode4 + ((hashCode3 + ((hashCode2 + (this.f3376a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
        AdSize adSize = this.f3381f;
        if (adSize == null) {
            hashCode = 0;
        } else {
            hashCode = adSize.hashCode();
        }
        int hashCode6 = Integer.hashCode(this.f3382g);
        int hashCode7 = Integer.hashCode(this.f3383h);
        int hashCode8 = this.f3384i.hashCode();
        return Boolean.hashCode(this.f3385j) + ((hashCode8 + ((hashCode7 + ((hashCode6 + ((hashCode5 + hashCode) * 31)) * 31)) * 31)) * 31);
    }

    public final boolean i() {
        return this.f3385j;
    }

    @NotNull
    public final AdPriority j() {
        return this.f3378c;
    }

    public final void k(@NotNull AdAggregatedSdk adAggregatedSdk) {
        Intrinsics.checkNotNullParameter(adAggregatedSdk, "<set-?>");
        this.f3384i = adAggregatedSdk;
    }

    @NotNull
    public String toString() {
        return "[" + this.f3377b + ',' + StringsKt.l1(this.f3376a, DomExceptionUtils.SEPARATOR, null, 2, null) + ",name=" + this.f3380e + ",pam=" + this.f3385j + ",priority=" + this.f3378c.getValue() + ",maxSize=" + this.f3379d + ']';
    }

    public /* synthetic */ e(String str, AdFormat adFormat, AdPriority adPriority, int i10, String str2, AdSize adSize, int i11, int i12, AdAggregatedSdk adAggregatedSdk, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, adFormat, adPriority, i10, str2, (i13 & 32) != 0 ? null : adSize, (i13 & 64) != 0 ? 1 : i11, (i13 & 128) != 0 ? 2000 : i12, adAggregatedSdk, (i13 & 512) != 0 ? false : z10);
    }
}
