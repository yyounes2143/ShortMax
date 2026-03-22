package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.http.a;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.jvm.javaio.ReadingKt;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.i;
import xr.b;
/* compiled from: DefaultTransformersJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DefaultTransformersJvmKt {

    /* compiled from: DefaultTransformersJvm.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends b.c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Long f58926a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final io.ktor.http.a f58927b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f58928c;

        a(HttpRequestBuilder httpRequestBuilder, io.ktor.http.a aVar, Object obj) {
            Long l10;
            this.f58928c = obj;
            String h10 = httpRequestBuilder.a().h(i.f70141a.g());
            if (h10 != null) {
                l10 = Long.valueOf(Long.parseLong(h10));
            } else {
                l10 = null;
            }
            this.f58926a = l10;
            this.f58927b = aVar == null ? a.C0827a.f59224a.a() : aVar;
        }

        @Override // xr.b
        @Nullable
        public Long a() {
            return this.f58926a;
        }

        @Override // xr.b
        @NotNull
        public io.ktor.http.a b() {
            return this.f58927b;
        }

        @Override // xr.b.c
        @NotNull
        public ByteReadChannel d() {
            return ReadingKt.c((InputStream) this.f58928c, null, null, 3, null);
        }
    }

    @Nullable
    public static final xr.b a(@Nullable io.ktor.http.a aVar, @NotNull HttpRequestBuilder context, @NotNull Object body) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(body, "body");
        if (body instanceof InputStream) {
            return new a(context, aVar, body);
        }
        return null;
    }

    public static final void b(@NotNull HttpClient httpClient) {
        Intrinsics.checkNotNullParameter(httpClient, "<this>");
        httpClient.q().l(tr.e.f67687h.a(), new DefaultTransformersJvmKt$platformResponseDefaultTransformers$1(null));
    }
}
