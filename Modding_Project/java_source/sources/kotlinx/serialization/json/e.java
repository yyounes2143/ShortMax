package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JsonConfiguration.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f61972a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f61973b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f61974c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f61975d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f61976e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f61977f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final String f61978g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f61979h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f61980i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final String f61981j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f61982k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f61983l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f61984m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f61985n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f61986o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private ClassDiscriminatorMode f61987p;

    public e(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, @NotNull String prettyPrintIndent, boolean z16, boolean z17, @NotNull String classDiscriminator, boolean z18, boolean z19, @Nullable w wVar, boolean z20, boolean z21, boolean z22, @NotNull ClassDiscriminatorMode classDiscriminatorMode) {
        Intrinsics.checkNotNullParameter(prettyPrintIndent, "prettyPrintIndent");
        Intrinsics.checkNotNullParameter(classDiscriminator, "classDiscriminator");
        Intrinsics.checkNotNullParameter(classDiscriminatorMode, "classDiscriminatorMode");
        this.f61972a = z10;
        this.f61973b = z11;
        this.f61974c = z12;
        this.f61975d = z13;
        this.f61976e = z14;
        this.f61977f = z15;
        this.f61978g = prettyPrintIndent;
        this.f61979h = z16;
        this.f61980i = z17;
        this.f61981j = classDiscriminator;
        this.f61982k = z18;
        this.f61983l = z19;
        this.f61984m = z20;
        this.f61985n = z21;
        this.f61986o = z22;
        this.f61987p = classDiscriminatorMode;
    }

    public final boolean a() {
        return this.f61986o;
    }

    public final boolean b() {
        return this.f61982k;
    }

    public final boolean c() {
        return this.f61975d;
    }

    public final boolean d() {
        return this.f61985n;
    }

    @NotNull
    public final String e() {
        return this.f61981j;
    }

    @NotNull
    public final ClassDiscriminatorMode f() {
        return this.f61987p;
    }

    public final boolean g() {
        return this.f61979h;
    }

    public final boolean h() {
        return this.f61984m;
    }

    public final boolean i() {
        return this.f61972a;
    }

    public final boolean j() {
        return this.f61977f;
    }

    public final boolean k() {
        return this.f61973b;
    }

    @Nullable
    public final w l() {
        return null;
    }

    public final boolean m() {
        return this.f61976e;
    }

    @NotNull
    public final String n() {
        return this.f61978g;
    }

    public final boolean o() {
        return this.f61983l;
    }

    public final boolean p() {
        return this.f61980i;
    }

    public final boolean q() {
        return this.f61974c;
    }

    @NotNull
    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.f61972a + ", ignoreUnknownKeys=" + this.f61973b + ", isLenient=" + this.f61974c + ", allowStructuredMapKeys=" + this.f61975d + ", prettyPrint=" + this.f61976e + ", explicitNulls=" + this.f61977f + ", prettyPrintIndent='" + this.f61978g + "', coerceInputValues=" + this.f61979h + ", useArrayPolymorphism=" + this.f61980i + ", classDiscriminator='" + this.f61981j + "', allowSpecialFloatingPointValues=" + this.f61982k + ", useAlternativeNames=" + this.f61983l + ", namingStrategy=" + ((Object) null) + ", decodeEnumsCaseInsensitive=" + this.f61984m + ", allowTrailingComma=" + this.f61985n + ", allowComments=" + this.f61986o + ", classDiscriminatorMode=" + this.f61987p + ')';
    }

    public /* synthetic */ e(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String str, boolean z16, boolean z17, String str2, boolean z18, boolean z19, w wVar, boolean z20, boolean z21, boolean z22, ClassDiscriminatorMode classDiscriminatorMode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12, (i10 & 8) != 0 ? false : z13, (i10 & 16) != 0 ? false : z14, (i10 & 32) != 0 ? true : z15, (i10 & 64) != 0 ? "    " : str, (i10 & 128) != 0 ? false : z16, (i10 & 256) != 0 ? false : z17, (i10 & 512) != 0 ? "type" : str2, (i10 & 1024) != 0 ? false : z18, (i10 & 2048) == 0 ? z19 : true, (i10 & 4096) != 0 ? null : wVar, (i10 & 8192) != 0 ? false : z20, (i10 & 16384) != 0 ? false : z21, (i10 & 32768) != 0 ? false : z22, (i10 & 65536) != 0 ? ClassDiscriminatorMode.POLYMORPHIC : classDiscriminatorMode);
    }
}
