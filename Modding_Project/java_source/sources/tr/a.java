package tr;

import io.ktor.client.call.HttpClientCall;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.f;
import wr.n;
import wr.o;
/* compiled from: DefaultHttpResponse.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a extends c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientCall f67672a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f67673b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final o f67674c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final n f67675d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final bs.a f67676e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final bs.a f67677f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final ByteReadChannel f67678g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final f f67679h;

    public a(@NotNull HttpClientCall call, @NotNull sr.e responseData) {
        ByteReadChannel byteReadChannel;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(responseData, "responseData");
        this.f67672a = call;
        this.f67673b = responseData.b();
        this.f67674c = responseData.f();
        this.f67675d = responseData.g();
        this.f67676e = responseData.d();
        this.f67677f = responseData.e();
        Object a10 = responseData.a();
        if (a10 instanceof ByteReadChannel) {
            byteReadChannel = (ByteReadChannel) a10;
        } else {
            byteReadChannel = null;
        }
        this.f67678g = byteReadChannel == null ? ByteReadChannel.f59475a.a() : byteReadChannel;
        this.f67679h = responseData.c();
    }

    @Override // wr.k
    @NotNull
    public f a() {
        return this.f67679h;
    }

    @Override // tr.c
    @NotNull
    public ByteReadChannel b() {
        return this.f67678g;
    }

    @Override // tr.c
    @NotNull
    public bs.a c() {
        return this.f67676e;
    }

    @Override // tr.c
    @NotNull
    public bs.a d() {
        return this.f67677f;
    }

    @Override // tr.c
    @NotNull
    public o e() {
        return this.f67674c;
    }

    @Override // tr.c
    @NotNull
    public n f() {
        return this.f67675d;
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f67673b;
    }

    @Override // tr.c
    @NotNull
    public HttpClientCall x() {
        return this.f67672a;
    }
}
