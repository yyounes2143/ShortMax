package io.ktor.http;

import androidx.webkit.ProxyConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.ktor.http.c;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContentTypes.kt */
@Metadata
@SourceDebugExtension({"SMAP\nContentTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n1#2:319\n1747#3,3:320\n1747#3,3:323\n*S KotlinDebug\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType\n*L\n44#1:320,3\n72#1:323,3\n*E\n"})
/* loaded from: classes8.dex */
public final class a extends io.ktor.http.c {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final b f59220f = new b(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final a f59221g = new a(ProxyConfig.MATCH_ALL_SCHEMES, ProxyConfig.MATCH_ALL_SCHEMES, null, 4, null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f59222d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f59223e;

    /* compiled from: ContentTypes.kt */
    @Metadata
    /* renamed from: io.ktor.http.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0827a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0827a f59224a = new C0827a();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static final a f59225b = new a(MimeTypes.BASE_TYPE_APPLICATION, ProxyConfig.MATCH_ALL_SCHEMES, null, 4, null);
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private static final a f59226c = new a(MimeTypes.BASE_TYPE_APPLICATION, "atom+xml", null, 4, null);
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private static final a f59227d = new a(MimeTypes.BASE_TYPE_APPLICATION, "cbor", null, 4, null);
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private static final a f59228e = new a(MimeTypes.BASE_TYPE_APPLICATION, "json", null, 4, null);
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private static final a f59229f = new a(MimeTypes.BASE_TYPE_APPLICATION, "hal+json", null, 4, null);
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private static final a f59230g = new a(MimeTypes.BASE_TYPE_APPLICATION, "javascript", null, 4, null);
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private static final a f59231h = new a(MimeTypes.BASE_TYPE_APPLICATION, "octet-stream", null, 4, null);
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private static final a f59232i = new a(MimeTypes.BASE_TYPE_APPLICATION, "rss+xml", null, 4, null);
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private static final a f59233j = new a(MimeTypes.BASE_TYPE_APPLICATION, "xml", null, 4, null);
        @NotNull

        /* renamed from: k  reason: collision with root package name */
        private static final a f59234k = new a(MimeTypes.BASE_TYPE_APPLICATION, "xml-dtd", null, 4, null);
        @NotNull

        /* renamed from: l  reason: collision with root package name */
        private static final a f59235l = new a(MimeTypes.BASE_TYPE_APPLICATION, "zip", null, 4, null);
        @NotNull

        /* renamed from: m  reason: collision with root package name */
        private static final a f59236m = new a(MimeTypes.BASE_TYPE_APPLICATION, "gzip", null, 4, null);
        @NotNull

        /* renamed from: n  reason: collision with root package name */
        private static final a f59237n = new a(MimeTypes.BASE_TYPE_APPLICATION, "x-www-form-urlencoded", null, 4, null);
        @NotNull

        /* renamed from: o  reason: collision with root package name */
        private static final a f59238o = new a(MimeTypes.BASE_TYPE_APPLICATION, "pdf", null, 4, null);
        @NotNull

        /* renamed from: p  reason: collision with root package name */
        private static final a f59239p = new a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.spreadsheetml.sheet", null, 4, null);
        @NotNull

        /* renamed from: q  reason: collision with root package name */
        private static final a f59240q = new a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.wordprocessingml.document", null, 4, null);
        @NotNull

        /* renamed from: r  reason: collision with root package name */
        private static final a f59241r = new a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.presentationml.presentation", null, 4, null);
        @NotNull

        /* renamed from: s  reason: collision with root package name */
        private static final a f59242s = new a(MimeTypes.BASE_TYPE_APPLICATION, "protobuf", null, 4, null);
        @NotNull

        /* renamed from: t  reason: collision with root package name */
        private static final a f59243t = new a(MimeTypes.BASE_TYPE_APPLICATION, "wasm", null, 4, null);
        @NotNull

        /* renamed from: u  reason: collision with root package name */
        private static final a f59244u = new a(MimeTypes.BASE_TYPE_APPLICATION, "problem+json", null, 4, null);
        @NotNull

        /* renamed from: v  reason: collision with root package name */
        private static final a f59245v = new a(MimeTypes.BASE_TYPE_APPLICATION, "problem+xml", null, 4, null);

        private C0827a() {
        }

        @NotNull
        public final a a() {
            return f59231h;
        }

        @NotNull
        public final a b() {
            return f59242s;
        }
    }

    /* compiled from: ContentTypes.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nContentTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n+ 2 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParameters$Companion\n*L\n1#1,318:1\n63#2,2:319\n*S KotlinDebug\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n*L\n117#1:319,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final a a() {
            return a.f59221g;
        }

        @NotNull
        public final a b(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (StringsKt.t0(value)) {
                return a();
            }
            c.a aVar = io.ktor.http.c.f59257c;
            wr.c cVar = (wr.c) CollectionsKt.C0(HttpHeaderValueParserKt.b(value));
            String b10 = cVar.b();
            List<wr.d> a10 = cVar.a();
            int p02 = StringsKt.p0(b10, '/', 0, false, 6, null);
            if (p02 == -1) {
                if (Intrinsics.areEqual(StringsKt.v1(b10).toString(), ProxyConfig.MATCH_ALL_SCHEMES)) {
                    return a.f59220f.a();
                }
                throw new BadContentTypeFormatException(value);
            }
            String substring = b10.substring(0, p02);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String obj = StringsKt.v1(substring).toString();
            if (obj.length() != 0) {
                String substring2 = b10.substring(p02 + 1);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                String obj2 = StringsKt.v1(substring2).toString();
                if (!StringsKt.a0(obj, ' ', false, 2, null) && !StringsKt.a0(obj2, ' ', false, 2, null)) {
                    if (obj2.length() != 0 && !StringsKt.a0(obj2, '/', false, 2, null)) {
                        return new a(obj, obj2, a10);
                    }
                    throw new BadContentTypeFormatException(value);
                }
                throw new BadContentTypeFormatException(value);
            }
            throw new BadContentTypeFormatException(value);
        }

        private b() {
        }
    }

    /* compiled from: ContentTypes.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f59246a = new c();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static final a f59247b = new a(MimeTypes.BASE_TYPE_TEXT, ProxyConfig.MATCH_ALL_SCHEMES, null, 4, null);
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private static final a f59248c = new a(MimeTypes.BASE_TYPE_TEXT, "plain", null, 4, null);
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private static final a f59249d = new a(MimeTypes.BASE_TYPE_TEXT, "css", null, 4, null);
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private static final a f59250e = new a(MimeTypes.BASE_TYPE_TEXT, "csv", null, 4, null);
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private static final a f59251f = new a(MimeTypes.BASE_TYPE_TEXT, "html", null, 4, null);
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private static final a f59252g = new a(MimeTypes.BASE_TYPE_TEXT, "javascript", null, 4, null);
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private static final a f59253h = new a(MimeTypes.BASE_TYPE_TEXT, "vcard", null, 4, null);
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private static final a f59254i = new a(MimeTypes.BASE_TYPE_TEXT, "xml", null, 4, null);
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private static final a f59255j = new a(MimeTypes.BASE_TYPE_TEXT, "event-stream", null, 4, null);

        private c() {
        }

        @NotNull
        public final a a() {
            return f59248c;
        }
    }

    private a(String str, String str2, String str3, List<wr.d> list) {
        super(str3, list);
        this.f59222d = str;
        this.f59223e = str2;
    }

    private final boolean f(String str, String str2) {
        int size = b().size();
        if (size == 0) {
            return false;
        }
        if (size != 1) {
            List<wr.d> b10 = b();
            if ((b10 instanceof Collection) && b10.isEmpty()) {
                return false;
            }
            for (wr.d dVar : b10) {
                if (!StringsKt.G(dVar.a(), str, true) || !StringsKt.G(dVar.b(), str2, true)) {
                }
            }
            return false;
        }
        wr.d dVar2 = b().get(0);
        if (!StringsKt.G(dVar2.a(), str, true) || !StringsKt.G(dVar2.b(), str2, true)) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String e() {
        return this.f59222d;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (StringsKt.G(this.f59222d, aVar.f59222d, true) && StringsKt.G(this.f59223e, aVar.f59223e, true) && Intrinsics.areEqual(b(), aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final a g(@NotNull String name, @NotNull String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        if (f(name, value)) {
            return this;
        }
        return new a(this.f59222d, this.f59223e, a(), CollectionsKt.L0(b(), new wr.d(name, value)));
    }

    public int hashCode() {
        String str = this.f59222d;
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        int hashCode = lowerCase.hashCode();
        String lowerCase2 = this.f59223e.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return hashCode + (hashCode * 31) + lowerCase2.hashCode() + (b().hashCode() * 31);
    }

    public /* synthetic */ a(String str, String str2, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? CollectionsKt.n() : list);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull String contentType, @NotNull String contentSubtype, @NotNull List<wr.d> parameters) {
        this(contentType, contentSubtype, contentType + '/' + contentSubtype, parameters);
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(contentSubtype, "contentSubtype");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
    }
}
