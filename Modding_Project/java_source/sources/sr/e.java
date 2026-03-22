package sr;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.n;
import wr.o;
/* compiled from: HttpRequest.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final o f66608a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final bs.a f66609b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final wr.f f66610c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final n f66611d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Object f66612e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final CoroutineContext f66613f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final bs.a f66614g;

    public e(@NotNull o statusCode, @NotNull bs.a requestTime, @NotNull wr.f headers, @NotNull n version, @NotNull Object body, @NotNull CoroutineContext callContext) {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        Intrinsics.checkNotNullParameter(requestTime, "requestTime");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(callContext, "callContext");
        this.f66608a = statusCode;
        this.f66609b = requestTime;
        this.f66610c = headers;
        this.f66611d = version;
        this.f66612e = body;
        this.f66613f = callContext;
        this.f66614g = io.ktor.util.date.a.b(null, 1, null);
    }

    @NotNull
    public final Object a() {
        return this.f66612e;
    }

    @NotNull
    public final CoroutineContext b() {
        return this.f66613f;
    }

    @NotNull
    public final wr.f c() {
        return this.f66610c;
    }

    @NotNull
    public final bs.a d() {
        return this.f66609b;
    }

    @NotNull
    public final bs.a e() {
        return this.f66614g;
    }

    @NotNull
    public final o f() {
        return this.f66608a;
    }

    @NotNull
    public final n g() {
        return this.f66611d;
    }

    @NotNull
    public String toString() {
        return "HttpResponseData=(statusCode=" + this.f66608a + ')';
    }
}
