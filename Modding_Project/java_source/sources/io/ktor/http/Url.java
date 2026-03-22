package io.ktor.http;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Url.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Url.kt\nio/ktor/http/Url\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,174:1\n1#2:175\n*E\n"})
/* loaded from: classes8.dex */
public final class Url {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f59197q = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final k f59198a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f59199b;

    /* renamed from: c  reason: collision with root package name */
    private final int f59200c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f59201d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final e f59202e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final String f59203f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f59204g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final String f59205h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f59206i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final String f59207j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final ms.i f59208k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final ms.i f59209l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final ms.i f59210m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ms.i f59211n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ms.i f59212o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final ms.i f59213p;

    /* compiled from: Url.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public Url(@NotNull k protocol, @NotNull String host, int i10, @NotNull List<String> pathSegments, @NotNull e parameters, @NotNull String fragment, @Nullable String str, @Nullable String str2, boolean z10, @NotNull String urlString) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(pathSegments, "pathSegments");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        this.f59198a = protocol;
        this.f59199b = host;
        this.f59200c = i10;
        this.f59201d = pathSegments;
        this.f59202e = parameters;
        this.f59203f = fragment;
        this.f59204g = str;
        this.f59205h = str2;
        this.f59206i = z10;
        this.f59207j = urlString;
        if ((i10 >= 0 && i10 < 65536) || i10 == 0) {
            this.f59208k = kotlin.c.b(new Function0<String>() { // from class: io.ktor.http.Url$encodedPath$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    String str3;
                    String str4;
                    String str5;
                    String str6;
                    if (Url.this.i().isEmpty()) {
                        return "";
                    }
                    str3 = Url.this.f59207j;
                    int p02 = StringsKt.p0(str3, '/', Url.this.k().d().length() + 3, false, 4, null);
                    if (p02 == -1) {
                        return "";
                    }
                    str4 = Url.this.f59207j;
                    int s02 = StringsKt.s0(str4, new char[]{'?', '#'}, p02, false, 4, null);
                    if (s02 == -1) {
                        str6 = Url.this.f59207j;
                        String substring = str6.substring(p02);
                        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                        return substring;
                    }
                    str5 = Url.this.f59207j;
                    String substring2 = str5.substring(p02, s02);
                    Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    return substring2;
                }
            });
            this.f59209l = kotlin.c.b(new Function0<String>() { // from class: io.ktor.http.Url$encodedQuery$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    String str3;
                    String str4;
                    String str5;
                    String str6;
                    str3 = Url.this.f59207j;
                    int p02 = StringsKt.p0(str3, '?', 0, false, 6, null) + 1;
                    if (p02 != 0) {
                        str4 = Url.this.f59207j;
                        int p03 = StringsKt.p0(str4, '#', p02, false, 4, null);
                        if (p03 == -1) {
                            str6 = Url.this.f59207j;
                            String substring = str6.substring(p02);
                            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                            return substring;
                        }
                        str5 = Url.this.f59207j;
                        String substring2 = str5.substring(p02, p03);
                        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        return substring2;
                    }
                    return "";
                }
            });
            this.f59210m = kotlin.c.b(new Function0<String>() { // from class: io.ktor.http.Url$encodedPathAndQuery$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    String str3;
                    String str4;
                    String str5;
                    String str6;
                    str3 = Url.this.f59207j;
                    int p02 = StringsKt.p0(str3, '/', Url.this.k().d().length() + 3, false, 4, null);
                    if (p02 != -1) {
                        str4 = Url.this.f59207j;
                        int p03 = StringsKt.p0(str4, '#', p02, false, 4, null);
                        if (p03 == -1) {
                            str6 = Url.this.f59207j;
                            String substring = str6.substring(p02);
                            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                            return substring;
                        }
                        str5 = Url.this.f59207j;
                        String substring2 = str5.substring(p02, p03);
                        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        return substring2;
                    }
                    return "";
                }
            });
            this.f59211n = kotlin.c.b(new Function0<String>() { // from class: io.ktor.http.Url$encodedUser$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final String invoke() {
                    String str3;
                    String str4;
                    if (Url.this.n() == null) {
                        return null;
                    }
                    if (Url.this.n().length() == 0) {
                        return "";
                    }
                    int length = Url.this.k().d().length() + 3;
                    str3 = Url.this.f59207j;
                    int s02 = StringsKt.s0(str3, new char[]{':', '@'}, length, false, 4, null);
                    str4 = Url.this.f59207j;
                    String substring = str4.substring(length, s02);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return substring;
                }
            });
            this.f59212o = kotlin.c.b(new Function0<String>() { // from class: io.ktor.http.Url$encodedPassword$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final String invoke() {
                    String str3;
                    String str4;
                    String str5;
                    if (Url.this.h() == null) {
                        return null;
                    }
                    if (Url.this.h().length() == 0) {
                        return "";
                    }
                    str3 = Url.this.f59207j;
                    str4 = Url.this.f59207j;
                    int p02 = StringsKt.p0(str4, '@', 0, false, 6, null);
                    str5 = Url.this.f59207j;
                    String substring = str5.substring(StringsKt.p0(str3, ':', Url.this.k().d().length() + 3, false, 4, null) + 1, p02);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return substring;
                }
            });
            this.f59213p = kotlin.c.b(new Function0<String>() { // from class: io.ktor.http.Url$encodedFragment$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    String str3;
                    String str4;
                    str3 = Url.this.f59207j;
                    int p02 = StringsKt.p0(str3, '#', 0, false, 6, null) + 1;
                    if (p02 != 0) {
                        str4 = Url.this.f59207j;
                        String substring = str4.substring(p02);
                        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                        return substring;
                    }
                    return "";
                }
            });
            return;
        }
        throw new IllegalArgumentException("port must be between 0 and 65535, or 0 if not set");
    }

    @NotNull
    public final String b() {
        return (String) this.f59213p.getValue();
    }

    @Nullable
    public final String c() {
        return (String) this.f59212o.getValue();
    }

    @NotNull
    public final String d() {
        return (String) this.f59208k.getValue();
    }

    @NotNull
    public final String e() {
        return (String) this.f59209l.getValue();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Url.class == obj.getClass() && Intrinsics.areEqual(this.f59207j, ((Url) obj).f59207j)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String f() {
        return (String) this.f59211n.getValue();
    }

    @NotNull
    public final String g() {
        return this.f59199b;
    }

    @Nullable
    public final String h() {
        return this.f59205h;
    }

    public int hashCode() {
        return this.f59207j.hashCode();
    }

    @NotNull
    public final List<String> i() {
        return this.f59201d;
    }

    public final int j() {
        Integer valueOf = Integer.valueOf(this.f59200c);
        if (valueOf.intValue() == 0) {
            valueOf = null;
        }
        if (valueOf != null) {
            return valueOf.intValue();
        }
        return this.f59198a.c();
    }

    @NotNull
    public final k k() {
        return this.f59198a;
    }

    public final int l() {
        return this.f59200c;
    }

    public final boolean m() {
        return this.f59206i;
    }

    @Nullable
    public final String n() {
        return this.f59204g;
    }

    @NotNull
    public String toString() {
        return this.f59207j;
    }
}
