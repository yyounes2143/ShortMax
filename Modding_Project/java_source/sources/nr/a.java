package nr;

import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a extends HttpClientCall {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f63033h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f63034i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull HttpClient client, @NotNull sr.b request, @NotNull tr.c response, @NotNull byte[] responseBody) {
        super(client);
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(responseBody, "responseBody");
        this.f63033h = responseBody;
        h(new b(this, request));
        i(new c(this, responseBody, response));
        this.f63034i = true;
    }

    @Override // io.ktor.client.call.HttpClientCall
    protected boolean b() {
        return this.f63034i;
    }

    @Override // io.ktor.client.call.HttpClientCall
    @Nullable
    protected Object f(@NotNull rs.c<? super ByteReadChannel> cVar) {
        return io.ktor.utils.io.c.a(this.f63033h);
    }
}
