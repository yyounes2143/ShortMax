package gc;

import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import gc.a;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
/* compiled from: CurlCommandGenerator.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a f52313b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b f52314a;

    /* compiled from: CurlCommandGenerator.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(@NotNull b configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.f52314a = configuration;
    }

    private final List<f> a(List<f> list, RequestBody requestBody) {
        String str;
        Object obj;
        MediaType contentType;
        Iterator<T> it = list.iterator();
        while (true) {
            str = null;
            if (it.hasNext()) {
                obj = it.next();
                if (StringsKt.G(((f) obj).a(), CommonGatewayClient.HEADER_CONTENT_TYPE, false)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        f fVar = (f) obj;
        if (requestBody != null && (contentType = requestBody.contentType()) != null) {
            str = contentType.toString();
        }
        if (fVar == null && str != null) {
            return CollectionsKt.K0(list, CollectionsKt.e(new f(CommonGatewayClient.HEADER_CONTENT_TYPE, str)));
        }
        return list;
    }

    private final List<String> c(RequestBody requestBody) {
        if (requestBody != null) {
            return CollectionsKt.e(i(requestBody));
        }
        return CollectionsKt.n();
    }

    private final List<String> d(gc.a aVar, Request request) {
        if (Intrinsics.areEqual(aVar, a.c.f52303c)) {
            return CollectionsKt.e("curl");
        }
        if (Intrinsics.areEqual(aVar, a.g.f52307c)) {
            return h(request.l());
        }
        if (Intrinsics.areEqual(aVar, a.d.f52304c)) {
            return e();
        }
        if (Intrinsics.areEqual(aVar, a.C0752a.f52302c)) {
            return c(request.a());
        }
        if (Intrinsics.areEqual(aVar, a.f.f52306c)) {
            return g(request.h());
        }
        if (Intrinsics.areEqual(aVar, a.e.f52305c)) {
            return f(request.f(), request.a());
        }
        throw new NoWhenBranchMatchedException();
    }

    private final List<String> e() {
        return this.f52314a.c().a();
    }

    private final List<String> f(Headers headers, RequestBody requestBody) {
        ArrayList<f> arrayList = new ArrayList(CollectionsKt.z(headers, 10));
        for (Pair<? extends String, ? extends String> pair : headers) {
            arrayList.add(new f(pair.e(), pair.f()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (f fVar : arrayList) {
            f k10 = k(fVar);
            if (k10 != null) {
                arrayList2.add(k10);
            }
        }
        List<f> a10 = a(arrayList2, requestBody);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.z(a10, 10));
        for (f fVar2 : a10) {
            String format = String.format("-H \"%1$s:%2$s\"", Arrays.copyOf(new Object[]{fVar2.a(), fVar2.b()}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
            arrayList3.add(format);
        }
        return arrayList3;
    }

    private final List<String> g(String str) {
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        String format = String.format("-X %1$s", Arrays.copyOf(new Object[]{upperCase}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
        return CollectionsKt.e(format);
    }

    private final List<String> h(HttpUrl httpUrl) {
        String format = String.format("\"%1$s\"", Arrays.copyOf(new Object[]{httpUrl.toString()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
        return CollectionsKt.e(format);
    }

    private final String i(RequestBody requestBody) {
        try {
            Buffer buffer = new Buffer();
            Charset j10 = j(requestBody.contentType());
            if (this.f52314a.e() > 0) {
                BufferedSink buffer2 = Okio.buffer(new g(buffer, this.f52314a.e()));
                requestBody.writeTo(buffer2);
                buffer2.flush();
            } else {
                requestBody.writeTo(buffer);
            }
            String format = String.format("-d '%1$s'", Arrays.copyOf(new Object[]{buffer.readString(j10)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
            return format;
        } catch (IOException e10) {
            return "Error while reading body: " + e10;
        }
    }

    private final Charset j(MediaType mediaType) {
        Charset c10;
        Charset defaultCharset = Charset.defaultCharset();
        if (mediaType != null && (c10 = mediaType.c(defaultCharset)) != null) {
            return c10;
        }
        Intrinsics.checkNotNullExpressionValue(defaultCharset, "default");
        return defaultCharset;
    }

    private final f k(f fVar) {
        Object obj;
        Iterator<T> it = this.f52314a.d().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((ic.a) obj).a(fVar)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        ic.a aVar = (ic.a) obj;
        if (aVar != null) {
            return aVar.b(fVar);
        }
        return fVar;
    }

    @NotNull
    public final String b(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        ArrayList arrayList = new ArrayList();
        for (gc.a aVar : this.f52314a.a()) {
            CollectionsKt.E(arrayList, d(aVar, request));
        }
        return CollectionsKt.A0(arrayList, this.f52314a.b(), null, null, 0, null, null, 62, null);
    }
}
