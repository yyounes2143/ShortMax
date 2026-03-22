package okhttp3.internal.http;

import java.net.Proxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Request;
import org.jetbrains.annotations.NotNull;
/* compiled from: RequestLine.kt */
@Metadata
/* loaded from: classes8.dex */
public final class RequestLine {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final RequestLine f63880a = new RequestLine();

    private RequestLine() {
    }

    private final boolean b(Request request, Proxy.Type type) {
        if (!request.g() && type == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String a(@NotNull Request request, @NotNull Proxy.Type proxyType) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(proxyType, "proxyType");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(request.h());
        sb2.append(' ');
        RequestLine requestLine = f63880a;
        if (requestLine.b(request, proxyType)) {
            sb2.append(request.l());
        } else {
            sb2.append(requestLine.c(request.l()));
        }
        sb2.append(" HTTP/1.1");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @NotNull
    public final String c(@NotNull HttpUrl url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String d10 = url.d();
        String f10 = url.f();
        if (f10 != null) {
            return d10 + '?' + f10;
        }
        return d10;
    }
}
