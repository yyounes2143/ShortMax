package io.ktor.client.call;

import com.vungle.ads.internal.ui.AdActivity;
import gt.g0;
import io.ktor.client.HttpClient;
import io.ktor.utils.io.ByteReadChannel;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sr.b;
import sr.e;
import tr.c;
/* compiled from: HttpClientCall.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpClientCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientCall.kt\nio/ktor/client/call/HttpClientCall\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n1#2:209\n*E\n"})
/* loaded from: classes8.dex */
public class HttpClientCall implements g0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpClient f58792a;

    /* renamed from: b  reason: collision with root package name */
    protected b f58793b;

    /* renamed from: c  reason: collision with root package name */
    protected c f58794c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f58795d;
    @NotNull
    private volatile /* synthetic */ int received;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f58789e = new a(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final yr.a<Object> f58791g = new yr.a<>("CustomResponse");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f58790f = AtomicIntegerFieldUpdater.newUpdater(HttpClientCall.class, "received");

    /* compiled from: HttpClientCall.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public HttpClientCall(@NotNull HttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.f58792a = client;
        this.received = 0;
    }

    static /* synthetic */ Object g(HttpClientCall httpClientCall, rs.c<? super ByteReadChannel> cVar) {
        return httpClientCall.e().b();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c9  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.NotNull es.a r6, @org.jetbrains.annotations.NotNull rs.c<java.lang.Object> r7) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.call.HttpClientCall.a(es.a, rs.c):java.lang.Object");
    }

    protected boolean b() {
        return this.f58795d;
    }

    @NotNull
    public final HttpClient c() {
        return this.f58792a;
    }

    @NotNull
    public final b d() {
        b bVar = this.f58793b;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException(AdActivity.REQUEST_KEY_EXTRA);
        return null;
    }

    @NotNull
    public final c e() {
        c cVar = this.f58794c;
        if (cVar != null) {
            return cVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("response");
        return null;
    }

    @Nullable
    protected Object f(@NotNull rs.c<? super ByteReadChannel> cVar) {
        return g(this, cVar);
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return e().getCoroutineContext();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h(@NotNull b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.f58793b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i(@NotNull c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<set-?>");
        this.f58794c = cVar;
    }

    public final void j(@NotNull c response) {
        Intrinsics.checkNotNullParameter(response, "response");
        i(response);
    }

    @NotNull
    public final yr.b m() {
        return d().m();
    }

    @NotNull
    public String toString() {
        return "HttpClientCall[" + d().getUrl() + ", " + e().e() + ']';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpClientCall(@NotNull HttpClient client, @NotNull sr.c requestData, @NotNull e responseData) {
        this(client);
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(responseData, "responseData");
        h(new sr.a(this, requestData));
        i(new tr.a(this, responseData));
        if (responseData.a() instanceof ByteReadChannel) {
            return;
        }
        m().a(f58791g, responseData.a());
    }
}
