package or;

import io.ktor.client.plugins.HttpTimeout;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpClientEngineCapability.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final yr.a<Map<b<?>, Object>> f64356a = new yr.a<>("EngineCapabilities");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Set<HttpTimeout.Plugin> f64357b = y0.d(HttpTimeout.f59087d);

    @NotNull
    public static final yr.a<Map<b<?>, Object>> a() {
        return f64356a;
    }
}
