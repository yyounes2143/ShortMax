package mr;

import io.ktor.client.HttpClient;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.HttpClientKt;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import or.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpClientJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final List<a> f62623a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final e<?> f62624b;

    static {
        e<?> a10;
        ServiceLoader load = ServiceLoader.load(a.class, a.class.getClassLoader());
        Intrinsics.checkNotNullExpressionValue(load, "load(it, it.classLoader)");
        List<a> d12 = CollectionsKt.d1(load);
        f62623a = d12;
        a aVar = (a) CollectionsKt.firstOrNull(d12);
        if (aVar != null && (a10 = aVar.a()) != null) {
            f62624b = a10;
            return;
        }
        throw new IllegalStateException("Failed to find HTTP client engine implementation in the classpath: consider adding client engine dependency. See https://ktor.io/docs/http-client-engines.html");
    }

    @NotNull
    public static final HttpClient a(@NotNull Function1<? super HttpClientConfig<?>, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return HttpClientKt.a(f62624b, block);
    }
}
