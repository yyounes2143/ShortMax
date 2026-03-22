package wt;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: createMapForCache.kt */
@Metadata
/* loaded from: classes8.dex */
public final class x {
    @NotNull
    public static final <K, V> Map<K, V> a(int i10) {
        return new ConcurrentHashMap(i10);
    }
}
