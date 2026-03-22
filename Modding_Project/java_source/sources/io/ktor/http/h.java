package io.ktor.http;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.q;
import wr.u;
import wr.v;
/* compiled from: URLBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nURLBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLBuilder.kt\nio/ktor/http/URLBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,308:1\n1549#2:309\n1620#2,3:310\n1549#2:313\n1620#2,3:314\n1549#2:317\n1620#2,3:318\n*S KotlinDebug\n*F\n+ 1 URLBuilder.kt\nio/ktor/http/URLBuilder\n*L\n58#1:309\n58#1:310,3\n61#1:313\n61#1:314,3\n63#1:317\n63#1:318,3\n*E\n"})
/* loaded from: classes8.dex */
public final class h {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f59263k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final Url f59264l;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private k f59265a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private String f59266b;

    /* renamed from: c  reason: collision with root package name */
    private int f59267c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f59268d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f59269e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f59270f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private String f59271g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private List<String> f59272h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private q f59273i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private q f59274j;

    /* compiled from: URLBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        a aVar = new a(null);
        f59263k = aVar;
        f59264l = URLUtilsKt.c(i.a(aVar));
    }

    public h(@NotNull k protocol, @NotNull String host, int i10, @Nullable String str, @Nullable String str2, @NotNull List<String> pathSegments, @NotNull e parameters, @NotNull String fragment, boolean z10) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(pathSegments, "pathSegments");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f59265a = protocol;
        this.f59266b = host;
        this.f59267c = i10;
        this.f59268d = z10;
        this.f59269e = str != null ? CodecsKt.m(str, false, 1, null) : null;
        this.f59270f = str2 != null ? CodecsKt.m(str2, false, 1, null) : null;
        this.f59271g = CodecsKt.r(fragment, false, false, null, 7, null);
        List<String> list = pathSegments;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        for (String str3 : list) {
            arrayList.add(CodecsKt.p(str3));
        }
        this.f59272h = arrayList;
        q e10 = v.e(parameters);
        this.f59273i = e10;
        this.f59274j = new u(e10);
    }

    private final void a() {
        if (this.f59266b.length() > 0 || Intrinsics.areEqual(this.f59265a.d(), "file")) {
            return;
        }
        Url url = f59264l;
        this.f59266b = url.g();
        if (Intrinsics.areEqual(this.f59265a, k.f59275c.c())) {
            this.f59265a = url.k();
        }
        if (this.f59267c == 0) {
            this.f59267c = url.l();
        }
    }

    public final void A(@Nullable String str) {
        String str2 = null;
        if (str != null) {
            str2 = CodecsKt.m(str, false, 1, null);
        }
        this.f59269e = str2;
    }

    @NotNull
    public final Url b() {
        a();
        return new Url(this.f59265a, this.f59266b, this.f59267c, m(), this.f59274j.build(), i(), q(), l(), this.f59268d, c());
    }

    @NotNull
    public final String c() {
        Appendable d10;
        a();
        d10 = j.d(this, new StringBuilder(256));
        String sb2 = ((StringBuilder) d10).toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "appendTo(StringBuilder(256)).toString()");
        return sb2;
    }

    @NotNull
    public final String d() {
        return this.f59271g;
    }

    @NotNull
    public final q e() {
        return this.f59273i;
    }

    @Nullable
    public final String f() {
        return this.f59270f;
    }

    @NotNull
    public final List<String> g() {
        return this.f59272h;
    }

    @Nullable
    public final String h() {
        return this.f59269e;
    }

    @NotNull
    public final String i() {
        return CodecsKt.k(this.f59271g, 0, 0, false, null, 15, null);
    }

    @NotNull
    public final String j() {
        return this.f59266b;
    }

    @NotNull
    public final q k() {
        return this.f59274j;
    }

    @Nullable
    public final String l() {
        String str = this.f59270f;
        if (str != null) {
            return CodecsKt.i(str, 0, 0, null, 7, null);
        }
        return null;
    }

    @NotNull
    public final List<String> m() {
        List<String> list = this.f59272h;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        for (String str : list) {
            arrayList.add(CodecsKt.i(str, 0, 0, null, 7, null));
        }
        return arrayList;
    }

    public final int n() {
        return this.f59267c;
    }

    @NotNull
    public final k o() {
        return this.f59265a;
    }

    public final boolean p() {
        return this.f59268d;
    }

    @Nullable
    public final String q() {
        String str = this.f59269e;
        if (str != null) {
            return CodecsKt.i(str, 0, 0, null, 7, null);
        }
        return null;
    }

    public final void r(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f59271g = str;
    }

    public final void s(@NotNull q value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f59273i = value;
        this.f59274j = new u(value);
    }

    public final void t(@Nullable String str) {
        this.f59270f = str;
    }

    @NotNull
    public String toString() {
        Appendable d10;
        d10 = j.d(this, new StringBuilder(256));
        String sb2 = ((StringBuilder) d10).toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "appendTo(StringBuilder(256)).toString()");
        return sb2;
    }

    public final void u(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f59272h = list;
    }

    public final void v(@Nullable String str) {
        this.f59269e = str;
    }

    public final void w(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f59266b = str;
    }

    public final void x(int i10) {
        this.f59267c = i10;
    }

    public final void y(@NotNull k kVar) {
        Intrinsics.checkNotNullParameter(kVar, "<set-?>");
        this.f59265a = kVar;
    }

    public final void z(boolean z10) {
        this.f59268d = z10;
    }

    public /* synthetic */ h(k kVar, String str, int i10, String str2, String str3, List list, e eVar, String str4, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? k.f59275c.c() : kVar, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? 0 : i10, (i11 & 8) != 0 ? null : str2, (i11 & 16) == 0 ? str3 : null, (i11 & 32) != 0 ? CollectionsKt.n() : list, (i11 & 64) != 0 ? e.f59260a.a() : eVar, (i11 & 128) == 0 ? str4 : "", (i11 & 256) == 0 ? z10 : false);
    }
}
