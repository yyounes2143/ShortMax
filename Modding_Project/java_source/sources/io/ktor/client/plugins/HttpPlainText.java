package io.ktor.client.plugins;

import hs.l;
import hs.q;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.http.a;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.g;
import wr.i;
/* compiled from: HttpPlainText.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpPlainText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1054#2:182\n766#2:183\n857#2,2:184\n1045#2:186\n1855#2,2:187\n1855#2,2:189\n*S KotlinDebug\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText\n*L\n38#1:182\n39#1:183\n39#1:184,2\n39#1:186\n42#1:187,2\n47#1:189,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpPlainText {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final Plugin f58966d = new Plugin(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final yr.a<HttpPlainText> f58967e = new yr.a<>("HttpPlainText");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Charset f58968a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Charset f58969b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f58970c;

    /* compiled from: HttpPlainText.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Plugin implements qr.d<a, HttpPlainText> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // qr.d
        /* renamed from: c */
        public void b(@NotNull HttpPlainText plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            scope.p().l(sr.d.f66601h.b(), new HttpPlainText$Plugin$install$1(plugin, null));
            scope.q().l(tr.e.f67687h.c(), new HttpPlainText$Plugin$install$2(plugin, null));
        }

        @Override // qr.d
        @NotNull
        /* renamed from: d */
        public HttpPlainText a(@NotNull Function1<? super a, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            a aVar = new a();
            block.invoke(aVar);
            return new HttpPlainText(aVar.b(), aVar.a(), aVar.d(), aVar.c());
        }

        @Override // qr.d
        @NotNull
        public yr.a<HttpPlainText> getKey() {
            return HttpPlainText.f58967e;
        }

        private Plugin() {
        }
    }

    /* compiled from: HttpPlainText.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttpPlainText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText$Config\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Charset f58981c;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Set<Charset> f58979a = new LinkedHashSet();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Map<Charset, Float> f58980b = new LinkedHashMap();
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private Charset f58982d = Charsets.UTF_8;

        @NotNull
        public final Map<Charset, Float> a() {
            return this.f58980b;
        }

        @NotNull
        public final Set<Charset> b() {
            return this.f58979a;
        }

        @NotNull
        public final Charset c() {
            return this.f58982d;
        }

        @Nullable
        public final Charset d() {
            return this.f58981c;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText\n*L\n1#1,328:1\n39#2:329\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(gs.a.i((Charset) t10), gs.a.i((Charset) t11));
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText\n*L\n1#1,328:1\n38#2:329\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class c<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a((Float) ((Pair) t11).f(), (Float) ((Pair) t10).f());
        }
    }

    public HttpPlainText(@NotNull Set<? extends Charset> charsets, @NotNull Map<Charset, Float> charsetQuality, @Nullable Charset charset, @NotNull Charset responseCharsetFallback) {
        Charset charset2;
        Intrinsics.checkNotNullParameter(charsets, "charsets");
        Intrinsics.checkNotNullParameter(charsetQuality, "charsetQuality");
        Intrinsics.checkNotNullParameter(responseCharsetFallback, "responseCharsetFallback");
        this.f58968a = responseCharsetFallback;
        List<Pair> U0 = CollectionsKt.U0(p0.C(charsetQuality), new c());
        ArrayList arrayList = new ArrayList();
        for (Object obj : charsets) {
            if (!charsetQuality.containsKey((Charset) obj)) {
                arrayList.add(obj);
            }
        }
        List<Charset> U02 = CollectionsKt.U0(arrayList, new b());
        StringBuilder sb2 = new StringBuilder();
        for (Charset charset3 : U02) {
            if (sb2.length() > 0) {
                sb2.append(",");
            }
            sb2.append(gs.a.i(charset3));
        }
        for (Pair pair : U0) {
            Charset charset4 = (Charset) pair.b();
            float floatValue = ((Number) pair.d()).floatValue();
            if (sb2.length() > 0) {
                sb2.append(",");
            }
            double d10 = floatValue;
            if (0.0d <= d10 && d10 <= 1.0d) {
                sb2.append(gs.a.i(charset4) + ";q=" + (bt.a.c(100 * floatValue) / 100.0d));
            } else {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (sb2.length() == 0) {
            sb2.append(gs.a.i(this.f58968a));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        this.f58970c = sb3;
        if (charset == null && (charset = (Charset) CollectionsKt.firstOrNull(U02)) == null) {
            Pair pair2 = (Pair) CollectionsKt.firstOrNull(U0);
            if (pair2 != null) {
                charset2 = (Charset) pair2.e();
            } else {
                charset2 = null;
            }
            charset = charset2;
            if (charset == null) {
                charset = Charsets.UTF_8;
            }
        }
        this.f58969b = charset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object e(HttpRequestBuilder httpRequestBuilder, String str, io.ktor.http.a aVar) {
        io.ktor.http.a aVar2;
        Charset charset;
        du.a aVar3;
        if (aVar == null) {
            aVar2 = a.c.f59246a.a();
        } else {
            aVar2 = aVar;
        }
        if (aVar == null || (charset = wr.a.a(aVar)) == null) {
            charset = this.f58969b;
        }
        aVar3 = io.ktor.client.plugins.b.f59124a;
        aVar3.b("Sending request body to " + httpRequestBuilder.i() + " as text/plain with charset " + charset);
        return new xr.c(str, wr.a.b(aVar2, charset), null, 4, null);
    }

    public final void c(@NotNull HttpRequestBuilder context) {
        du.a aVar;
        Intrinsics.checkNotNullParameter(context, "context");
        g a10 = context.a();
        i iVar = i.f70141a;
        if (a10.h(iVar.d()) == null) {
            aVar = io.ktor.client.plugins.b.f59124a;
            aVar.b("Adding Accept-Charset=" + this.f58970c + " to " + context.i());
            context.a().k(iVar.d(), this.f58970c);
        }
    }

    @NotNull
    public final String d(@NotNull HttpClientCall call, @NotNull l body) {
        du.a aVar;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(body, "body");
        Charset a10 = io.ktor.http.d.a(call.e());
        if (a10 == null) {
            a10 = this.f58968a;
        }
        aVar = io.ktor.client.plugins.b.f59124a;
        aVar.b("Reading response body for " + call.d().getUrl() + " as String with charset " + a10);
        return q.e(body, a10, 0, 2, null);
    }
}
