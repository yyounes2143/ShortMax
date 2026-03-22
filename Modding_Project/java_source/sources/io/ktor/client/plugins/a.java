package io.ktor.client.plugins;

import io.ktor.client.HttpClientConfig;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpCallValidator;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.http.Url;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import sr.b;
import wr.f;
import wr.m;
/* compiled from: HttpCallValidator.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final du.a f59117a = cs.a.a("io.ktor.client.plugins.HttpCallValidator");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final yr.a<Boolean> f59118b = new yr.a<>("ExpectSuccessAttributeKey");

    /* compiled from: HttpCallValidator.kt */
    @Metadata
    /* renamed from: io.ktor.client.plugins.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0826a implements sr.b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final m f59119a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Url f59120b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final yr.b f59121c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final f f59122d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ HttpRequestBuilder f59123e;

        C0826a(HttpRequestBuilder httpRequestBuilder) {
            this.f59123e = httpRequestBuilder;
            this.f59119a = httpRequestBuilder.h();
            this.f59120b = httpRequestBuilder.i().b();
            this.f59121c = httpRequestBuilder.c();
            this.f59122d = httpRequestBuilder.a().n();
        }

        @Override // wr.k
        @NotNull
        public f a() {
            return this.f59122d;
        }

        @Override // sr.b, gt.g0
        @NotNull
        public CoroutineContext getCoroutineContext() {
            return b.a.a(this);
        }

        @Override // sr.b
        @NotNull
        public m getMethod() {
            return this.f59119a;
        }

        @Override // sr.b
        @NotNull
        public Url getUrl() {
            return this.f59120b;
        }

        @Override // sr.b
        @NotNull
        public yr.b m() {
            return this.f59121c;
        }

        @Override // sr.b
        @NotNull
        public HttpClientCall x() {
            throw new IllegalStateException("Call is not initialized");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final C0826a a(HttpRequestBuilder httpRequestBuilder) {
        return new C0826a(httpRequestBuilder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(@NotNull HttpClientConfig<?> httpClientConfig, @NotNull Function1<? super HttpCallValidator.a, Unit> block) {
        Intrinsics.checkNotNullParameter(httpClientConfig, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        httpClientConfig.i(HttpCallValidator.f58934d, block);
    }

    @NotNull
    public static final yr.a<Boolean> e() {
        return f59118b;
    }
}
