package okhttp3.internal.cache;

import java.io.IOException;
import kotlin.Metadata;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
/* compiled from: CacheRequest.kt */
@Metadata
/* loaded from: classes8.dex */
public interface CacheRequest {
    void abort();

    @NotNull
    Sink body() throws IOException;
}
