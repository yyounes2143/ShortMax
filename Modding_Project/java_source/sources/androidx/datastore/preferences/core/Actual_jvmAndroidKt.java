package androidx.datastore.preferences.core;

import androidx.annotation.RestrictTo;
import gt.c0;
import gt.q0;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Actual.jvmAndroid.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class Actual_jvmAndroidKt {
    @NotNull
    public static final <T> Set<T> immutableCopyOfSet(@NotNull Set<? extends T> set) {
        Intrinsics.checkNotNullParameter(set, "set");
        Set<T> unmodifiableSet = Collections.unmodifiableSet(CollectionsKt.i1(set));
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(set.toSet())");
        return unmodifiableSet;
    }

    @NotNull
    public static final <K, V> Map<K, V> immutableMap(@NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(map);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap(map)");
        return unmodifiableMap;
    }

    @NotNull
    public static final c0 ioDispatcher() {
        return q0.b();
    }
}
