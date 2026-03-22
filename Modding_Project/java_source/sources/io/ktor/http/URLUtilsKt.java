package io.ktor.http;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.q;
import yr.s;
/* compiled from: URLUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nURLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLUtils.kt\nio/ktor/http/URLUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1#2:166\n1360#3:167\n1446#3,2:168\n1549#3:170\n1620#3,3:171\n1448#3,3:174\n*S KotlinDebug\n*F\n+ 1 URLUtils.kt\nio/ktor/http/URLUtilsKt\n*L\n118#1:167\n118#1:168,2\n119#1:170\n119#1:171,3\n118#1:174,3\n*E\n"})
/* loaded from: classes8.dex */
public final class URLUtilsKt {
    @NotNull
    public static final h a(@NotNull Url url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return h(new h(null, null, 0, null, null, null, null, null, false, 511, null), url);
    }

    @NotNull
    public static final h b(@NotNull String urlString) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        return URLParserKt.j(new h(null, null, 0, null, null, null, null, null, false, 511, null), urlString);
    }

    @NotNull
    public static final Url c(@NotNull String urlString) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        return b(urlString).b();
    }

    public static final void d(@NotNull Appendable appendable, @NotNull String encodedPath, @NotNull q encodedQueryParameters, boolean z10) {
        List list;
        Intrinsics.checkNotNullParameter(appendable, "<this>");
        Intrinsics.checkNotNullParameter(encodedPath, "encodedPath");
        Intrinsics.checkNotNullParameter(encodedQueryParameters, "encodedQueryParameters");
        if (!StringsKt.t0(encodedPath) && !StringsKt.V(encodedPath, DomExceptionUtils.SEPARATOR, false, 2, null)) {
            appendable.append('/');
        }
        appendable.append(encodedPath);
        if (!encodedQueryParameters.isEmpty() || z10) {
            appendable.append("?");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = encodedQueryParameters.b().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            List list2 = (List) entry.getValue();
            if (list2.isEmpty()) {
                list = CollectionsKt.e(ms.k.a(str, null));
            } else {
                List<String> list3 = list2;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.z(list3, 10));
                for (String str2 : list3) {
                    arrayList2.add(ms.k.a(str, str2));
                }
                list = arrayList2;
            }
            CollectionsKt.E(arrayList, list);
        }
        CollectionsKt.y0(arrayList, appendable, ContainerUtils.FIELD_DELIMITER, null, null, 0, null, new Function1<Pair<? extends String, ? extends String>, CharSequence>() { // from class: io.ktor.http.URLUtilsKt$appendUrlFullPath$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: b */
            public final CharSequence invoke(@NotNull Pair<String, String> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String e10 = it2.e();
                if (it2.f() != null) {
                    String valueOf = String.valueOf(it2.f());
                    return e10 + '=' + valueOf;
                }
                return e10;
            }
        }, 60, null);
    }

    public static final void e(@NotNull StringBuilder sb2, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(sb2, "<this>");
        if (str == null) {
            return;
        }
        sb2.append(str);
        if (str2 != null) {
            sb2.append(':');
            sb2.append(str2);
        }
        sb2.append("@");
    }

    @NotNull
    public static final String f(@NotNull Url url) {
        Intrinsics.checkNotNullParameter(url, "<this>");
        return url.g() + ':' + url.j();
    }

    @NotNull
    public static final h g(@NotNull h hVar, @NotNull h url) {
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        hVar.y(url.o());
        hVar.w(url.j());
        hVar.x(url.n());
        hVar.u(url.g());
        hVar.v(url.h());
        hVar.t(url.f());
        q b10 = f.b(0, 1, null);
        s.c(b10, url.e());
        hVar.s(b10);
        hVar.r(url.d());
        hVar.z(url.p());
        return hVar;
    }

    @NotNull
    public static final h h(@NotNull h hVar, @NotNull Url url) {
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        hVar.y(url.k());
        hVar.w(url.g());
        hVar.x(url.j());
        j.i(hVar, url.d());
        hVar.v(url.f());
        hVar.t(url.c());
        q b10 = f.b(0, 1, null);
        b10.e(g.d(url.e(), 0, 0, false, 6, null));
        hVar.s(b10);
        hVar.r(url.b());
        hVar.z(url.m());
        return hVar;
    }
}
