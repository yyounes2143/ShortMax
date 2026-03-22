package com.facebook.imagepipeline.backends.okhttp3;

import android.net.Uri;
import android.os.Looper;
import android.os.SystemClock;
import com.facebook.imagepipeline.backends.okhttp3.a;
import com.facebook.imagepipeline.producers.c0;
import com.facebook.imagepipeline.producers.c1;
import com.facebook.imagepipeline.producers.f;
import com.facebook.imagepipeline.producers.n;
import com.facebook.imagepipeline.producers.v0;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.k;
/* compiled from: OkHttpNetworkFetcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOkHttpNetworkFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpNetworkFetcher.kt\ncom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"})
/* loaded from: classes3.dex */
public class a extends com.facebook.imagepipeline.producers.d<b> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final C0265a f15645d = new C0265a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Call.Factory f15646a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Executor f15647b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final CacheControl f15648c;

    /* compiled from: OkHttpNetworkFetcher.kt */
    @Metadata
    /* renamed from: com.facebook.imagepipeline.backends.okhttp3.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static final class C0265a {
        public /* synthetic */ C0265a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0265a() {
        }
    }

    /* compiled from: OkHttpNetworkFetcher.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b extends c0 {

        /* renamed from: f  reason: collision with root package name */
        public long f15649f;

        /* renamed from: g  reason: collision with root package name */
        public long f15650g;

        /* renamed from: h  reason: collision with root package name */
        public long f15651h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull n<k> consumer, @NotNull c1 producerContext) {
            super(consumer, producerContext);
            Intrinsics.checkNotNullParameter(consumer, "consumer");
            Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        }
    }

    /* compiled from: OkHttpNetworkFetcher.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Call f15652a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f15653b;

        c(Call call, a aVar) {
            this.f15652a = call;
            this.f15653b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(Call call) {
            call.cancel();
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                Executor executor = this.f15653b.f15647b;
                final Call call = this.f15652a;
                executor.execute(new Runnable() { // from class: p3.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.c.f(Call.this);
                    }
                });
                return;
            }
            this.f15652a.cancel();
        }
    }

    /* compiled from: OkHttpNetworkFetcher.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class d implements Callback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f15654a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f15655b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ v0.a f15656c;

        d(b bVar, a aVar, v0.a aVar2) {
            this.f15654a = bVar;
            this.f15655b = aVar;
            this.f15656c = aVar2;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e10) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(e10, "e");
            this.f15655b.m(call, e10, this.f15656c);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            int contentLength;
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            this.f15654a.f15650g = SystemClock.elapsedRealtime();
            ResponseBody d10 = response.d();
            if (d10 != null) {
                a aVar = this.f15655b;
                v0.a aVar2 = this.f15656c;
                b bVar = this.f15654a;
                try {
                    try {
                        if (!response.isSuccessful()) {
                            aVar.m(call, aVar.n("Unexpected HTTP code " + response, response), aVar2);
                        } else {
                            s3.b c10 = s3.b.f66261c.c(response.r("Content-Range"));
                            if (c10 != null && (c10.f66263a != 0 || c10.f66264b != Integer.MAX_VALUE)) {
                                bVar.j(c10);
                                bVar.i(8);
                            }
                            if (d10.contentLength() < 0) {
                                contentLength = 0;
                            } else {
                                contentLength = (int) d10.contentLength();
                            }
                            aVar2.b(d10.byteStream(), contentLength);
                        }
                    } catch (Exception e10) {
                        aVar.m(call, e10, aVar2);
                    }
                    Unit unit = Unit.f60915a;
                    ws.b.a(d10, null);
                    return;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        ws.b.a(d10, th2);
                        throw th3;
                    }
                }
            }
            a aVar3 = this.f15655b;
            aVar3.m(call, aVar3.n("Response body null: " + response, response), this.f15656c);
        }
    }

    public /* synthetic */ a(Call.Factory factory, Executor executor, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(factory, executor, (i10 & 4) != 0 ? true : z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(Call call, Exception exc, v0.a aVar) {
        if (call.isCanceled()) {
            aVar.a();
        } else {
            aVar.onFailure(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IOException n(String str, Response response) {
        return new IOException(str, OkHttpNetworkFetcherException.f15642c.a(response));
    }

    @Override // com.facebook.imagepipeline.producers.v0
    @NotNull
    /* renamed from: i */
    public b b(@NotNull n<k> consumer, @NotNull c1 context) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(context, "context");
        return new b(consumer, context);
    }

    @Override // com.facebook.imagepipeline.producers.v0
    /* renamed from: j */
    public void c(@NotNull b fetchState, @NotNull v0.a callback) {
        Intrinsics.checkNotNullParameter(fetchState, "fetchState");
        Intrinsics.checkNotNullParameter(callback, "callback");
        fetchState.f15649f = SystemClock.elapsedRealtime();
        Uri g10 = fetchState.g();
        Intrinsics.checkNotNullExpressionValue(g10, "getUri(...)");
        try {
            Request.Builder d10 = new Request.Builder().k(g10.toString()).d();
            CacheControl cacheControl = this.f15648c;
            if (cacheControl != null) {
                d10.c(cacheControl);
            }
            s3.b c10 = fetchState.b().o().c();
            if (c10 != null) {
                d10.a(Command.HTTP_HEADER_RANGE, c10.f());
            }
            Request b10 = d10.b();
            Intrinsics.checkNotNullExpressionValue(b10, "build(...)");
            k(fetchState, callback, b10);
        } catch (Exception e10) {
            callback.onFailure(e10);
        }
    }

    protected void k(@NotNull b fetchState, @NotNull v0.a callback, @NotNull Request request) {
        Intrinsics.checkNotNullParameter(fetchState, "fetchState");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(request, "request");
        Call a10 = this.f15646a.a(request);
        fetchState.b().p(new c(a10, this));
        a10.o0(new d(fetchState, this, callback));
    }

    @Override // com.facebook.imagepipeline.producers.v0
    @Nullable
    /* renamed from: l */
    public Map<String, String> e(@NotNull b fetchState, int i10) {
        Intrinsics.checkNotNullParameter(fetchState, "fetchState");
        return p0.m(ms.k.a("queue_time", String.valueOf(fetchState.f15650g - fetchState.f15649f)), ms.k.a("fetch_time", String.valueOf(fetchState.f15651h - fetchState.f15650g)), ms.k.a("total_time", String.valueOf(fetchState.f15651h - fetchState.f15649f)), ms.k.a(CampaignEx.JSON_KEY_IMAGE_SIZE, String.valueOf(i10)));
    }

    @Override // com.facebook.imagepipeline.producers.v0
    /* renamed from: o */
    public void a(@NotNull b fetchState, int i10) {
        Intrinsics.checkNotNullParameter(fetchState, "fetchState");
        fetchState.f15651h = SystemClock.elapsedRealtime();
    }

    public a(@NotNull Call.Factory callFactory, @NotNull Executor cancellationExecutor, boolean z10) {
        Intrinsics.checkNotNullParameter(callFactory, "callFactory");
        Intrinsics.checkNotNullParameter(cancellationExecutor, "cancellationExecutor");
        this.f15646a = callFactory;
        this.f15647b = cancellationExecutor;
        this.f15648c = z10 ? new CacheControl.Builder().e().a() : null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(@org.jetbrains.annotations.NotNull okhttp3.OkHttpClient r8) {
        /*
            r7 = this;
            java.lang.String r0 = "okHttpClient"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            okhttp3.Dispatcher r0 = r8.p()
            java.util.concurrent.ExecutorService r3 = r0.d()
            java.lang.String r0 = "executorService(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            r5 = 4
            r6 = 0
            r4 = 0
            r1 = r7
            r2 = r8
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.backends.okhttp3.a.<init>(okhttp3.OkHttpClient):void");
    }
}
