package rr;

import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DelegatedCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a extends HttpClientCall {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull HttpClient client, @NotNull ByteReadChannel content, @NotNull HttpClientCall originCall) {
        super(client);
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(originCall, "originCall");
        h(new c(this, originCall.d()));
        i(new d(this, content, originCall.e()));
    }
}
