package okhttp3.internal.http;

import java.io.IOException;
import kotlin.Metadata;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealConnection;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExchangeCodec.kt */
@Metadata
/* loaded from: classes8.dex */
public interface ExchangeCodec {

    /* compiled from: ExchangeCodec.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ Companion f63864a = new Companion();

        private Companion() {
        }
    }

    @NotNull
    Source a(@NotNull Response response) throws IOException;

    @NotNull
    Sink b(@NotNull Request request, long j10) throws IOException;

    long c(@NotNull Response response) throws IOException;

    void cancel();

    void d(@NotNull Request request) throws IOException;

    void finishRequest() throws IOException;

    void flushRequest() throws IOException;

    @NotNull
    RealConnection getConnection();

    @Nullable
    Response.Builder readResponseHeaders(boolean z10) throws IOException;
}
