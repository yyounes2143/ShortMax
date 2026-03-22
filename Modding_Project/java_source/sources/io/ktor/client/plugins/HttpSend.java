package io.ktor.client.plugins;

import at.n;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.request.HttpRequestBuilder;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qr.h;
/* compiled from: HttpSend.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpSend {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Plugin f59067c = new Plugin(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final yr.a<HttpSend> f59068d = new yr.a<>("HttpSend");

    /* renamed from: a  reason: collision with root package name */
    private final int f59069a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<n<h, HttpRequestBuilder, rs.c<? super HttpClientCall>, Object>> f59070b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HttpSend.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class DefaultSender implements h {

        /* renamed from: a  reason: collision with root package name */
        private final int f59071a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final HttpClient f59072b;

        /* renamed from: c  reason: collision with root package name */
        private int f59073c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private HttpClientCall f59074d;

        public DefaultSender(int i10, @NotNull HttpClient client) {
            Intrinsics.checkNotNullParameter(client, "client");
            this.f59071a = i10;
            this.f59072b = client;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x006b  */
        @Override // qr.h
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object a(@org.jetbrains.annotations.NotNull io.ktor.client.request.HttpRequestBuilder r6, @org.jetbrains.annotations.NotNull rs.c<? super io.ktor.client.call.HttpClientCall> r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof io.ktor.client.plugins.HttpSend$DefaultSender$execute$1
                if (r0 == 0) goto L13
                r0 = r7
                io.ktor.client.plugins.HttpSend$DefaultSender$execute$1 r0 = (io.ktor.client.plugins.HttpSend$DefaultSender$execute$1) r0
                int r1 = r0.f59078k
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f59078k = r1
                goto L18
            L13:
                io.ktor.client.plugins.HttpSend$DefaultSender$execute$1 r0 = new io.ktor.client.plugins.HttpSend$DefaultSender$execute$1
                r0.<init>(r5, r7)
            L18:
                java.lang.Object r7 = r0.f59076i
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f59078k
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L36
                if (r2 != r4) goto L2e
                java.lang.Object r6 = r0.f59075h
                io.ktor.client.plugins.HttpSend$DefaultSender r6 = (io.ktor.client.plugins.HttpSend.DefaultSender) r6
                kotlin.f.b(r7)
                goto L5f
            L2e:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L36:
                kotlin.f.b(r7)
                io.ktor.client.call.HttpClientCall r7 = r5.f59074d
                if (r7 == 0) goto L40
                kotlinx.coroutines.i.e(r7, r3, r4, r3)
            L40:
                int r7 = r5.f59073c
                int r2 = r5.f59071a
                if (r7 >= r2) goto L86
                int r7 = r7 + r4
                r5.f59073c = r7
                io.ktor.client.HttpClient r7 = r5.f59072b
                sr.f r7 = r7.r()
                java.lang.Object r2 = r6.d()
                r0.f59075h = r5
                r0.f59078k = r4
                java.lang.Object r7 = r7.d(r6, r2, r0)
                if (r7 != r1) goto L5e
                return r1
            L5e:
                r6 = r5
            L5f:
                boolean r0 = r7 instanceof io.ktor.client.call.HttpClientCall
                if (r0 == 0) goto L66
                r3 = r7
                io.ktor.client.call.HttpClientCall r3 = (io.ktor.client.call.HttpClientCall) r3
            L66:
                if (r3 == 0) goto L6b
                r6.f59074d = r3
                return r3
            L6b:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Failed to execute send pipeline. Expected [HttpClientCall], but received "
                r0.append(r1)
                r0.append(r7)
                java.lang.String r7 = r0.toString()
                java.lang.String r7 = r7.toString()
                r6.<init>(r7)
                throw r6
            L86:
                io.ktor.client.plugins.SendCountExceedException r6 = new io.ktor.client.plugins.SendCountExceedException
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                java.lang.String r0 = "Max send count "
                r7.append(r0)
                int r0 = r5.f59071a
                r7.append(r0)
                java.lang.String r0 = " exceeded. Consider increasing the property maxSendCount if more is required."
                r7.append(r0)
                java.lang.String r7 = r7.toString()
                r6.<init>(r7)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpSend.DefaultSender.a(io.ktor.client.request.HttpRequestBuilder, rs.c):java.lang.Object");
        }
    }

    /* compiled from: HttpSend.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Plugin implements qr.d<a, HttpSend> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // qr.d
        /* renamed from: c */
        public void b(@NotNull HttpSend plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            scope.p().l(sr.d.f66601h.c(), new HttpSend$Plugin$install$1(plugin, scope, null));
        }

        @Override // qr.d
        @NotNull
        /* renamed from: d */
        public HttpSend a(@NotNull Function1<? super a, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            a aVar = new a();
            block.invoke(aVar);
            return new HttpSend(aVar.a(), null);
        }

        @Override // qr.d
        @NotNull
        public yr.a<HttpSend> getKey() {
            return HttpSend.f59068d;
        }

        private Plugin() {
        }
    }

    /* compiled from: HttpSend.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private int f59084a = 20;

        public final int a() {
            return this.f59084a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HttpSend.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final n<h, HttpRequestBuilder, rs.c<? super HttpClientCall>, Object> f59085a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final h f59086b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull n<? super h, ? super HttpRequestBuilder, ? super rs.c<? super HttpClientCall>, ? extends Object> interceptor, @NotNull h nextSender) {
            Intrinsics.checkNotNullParameter(interceptor, "interceptor");
            Intrinsics.checkNotNullParameter(nextSender, "nextSender");
            this.f59085a = interceptor;
            this.f59086b = nextSender;
        }

        @Override // qr.h
        @Nullable
        public Object a(@NotNull HttpRequestBuilder httpRequestBuilder, @NotNull rs.c<? super HttpClientCall> cVar) {
            return this.f59085a.invoke(this.f59086b, httpRequestBuilder, cVar);
        }
    }

    public /* synthetic */ HttpSend(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    public final void d(@NotNull n<? super h, ? super HttpRequestBuilder, ? super rs.c<? super HttpClientCall>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.f59070b.add(block);
    }

    private HttpSend(int i10) {
        this.f59069a = i10;
        this.f59070b = new ArrayList();
    }
}
