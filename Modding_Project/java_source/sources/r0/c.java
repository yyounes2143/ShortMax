package r0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Collections.kt */
@Metadata
/* loaded from: classes2.dex */
public final class c {
    @NotNull
    public static final <T> List<T> a(@NotNull List<? extends T> list) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                return Collections.unmodifiableList(new ArrayList(list));
            }
            return Collections.singletonList(CollectionsKt.r0(list));
        }
        return CollectionsKt.n();
    }

    @NotNull
    public static final <K, V> Map<K, V> b(@NotNull Map<K, ? extends V> map) {
        int size = map.size();
        if (size != 0) {
            if (size != 1) {
                return Collections.unmodifiableMap(new LinkedHashMap(map));
            }
            Map.Entry entry = (Map.Entry) CollectionsKt.q0(map.entrySet());
            return Collections.singletonMap(entry.getKey(), entry.getValue());
        }
        return p0.i();
    }
}
