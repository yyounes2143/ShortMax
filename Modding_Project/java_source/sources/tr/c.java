package tr;

import gt.g0;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.statement.HttpResponseKt;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import wr.k;
import wr.n;
import wr.o;
/* compiled from: HttpResponse.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class c implements k, g0 {
    @NotNull
    public abstract ByteReadChannel b();

    @NotNull
    public abstract bs.a c();

    @NotNull
    public abstract bs.a d();

    @NotNull
    public abstract o e();

    @NotNull
    public abstract n f();

    @NotNull
    public String toString() {
        return "HttpResponse[" + HttpResponseKt.e(this).getUrl() + ", " + e() + ']';
    }

    @NotNull
    public abstract HttpClientCall x();
}
