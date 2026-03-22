package sr;

import gt.g0;
import io.ktor.client.call.HttpClientCall;
import io.ktor.http.Url;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import wr.k;
import wr.m;
/* compiled from: HttpRequest.kt */
@Metadata
/* loaded from: classes8.dex */
public interface b extends k, g0 {

    /* compiled from: HttpRequest.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull
        public static CoroutineContext a(@NotNull b bVar) {
            return bVar.x().getCoroutineContext();
        }
    }

    @NotNull
    CoroutineContext getCoroutineContext();

    @NotNull
    m getMethod();

    @NotNull
    Url getUrl();

    @NotNull
    yr.b m();

    @NotNull
    HttpClientCall x();
}
