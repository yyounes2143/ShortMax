package rr;

import io.ktor.client.call.HttpClientCall;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DelegatedCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull
    public static final HttpClientCall a(@NotNull HttpClientCall httpClientCall, @NotNull ByteReadChannel content) {
        Intrinsics.checkNotNullParameter(httpClientCall, "<this>");
        Intrinsics.checkNotNullParameter(content, "content");
        return new a(httpClientCall.c(), content, httpClientCall);
    }
}
