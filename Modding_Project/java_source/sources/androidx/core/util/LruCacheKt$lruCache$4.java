package androidx.core.util;

import android.util.LruCache;
import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: LruCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LruCache.kt\nandroidx/core/util/LruCacheKt$lruCache$4\n*L\n1#1,54:1\n*E\n"})
/* loaded from: classes.dex */
public final class LruCacheKt$lruCache$4<K, V> extends LruCache<K, V> {
    final /* synthetic */ Function1<K, V> $create;
    final /* synthetic */ o<Boolean, K, V, V, Unit> $onEntryRemoved;
    final /* synthetic */ Function2<K, V, Integer> $sizeOf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LruCacheKt$lruCache$4(int i10, Function2<? super K, ? super V, Integer> function2, Function1<? super K, ? extends V> function1, o<? super Boolean, ? super K, ? super V, ? super V, Unit> oVar) {
        super(i10);
        this.$sizeOf = function2;
        this.$create = function1;
        this.$onEntryRemoved = oVar;
    }

    @Override // android.util.LruCache
    @Nullable
    protected V create(@NotNull K k10) {
        return this.$create.invoke(k10);
    }

    @Override // android.util.LruCache
    protected void entryRemoved(boolean z10, @NotNull K k10, @NotNull V v10, @Nullable V v11) {
        this.$onEntryRemoved.invoke(Boolean.valueOf(z10), k10, v10, v11);
    }

    @Override // android.util.LruCache
    protected int sizeOf(@NotNull K k10, @NotNull V v10) {
        return this.$sizeOf.invoke(k10, v10).intValue();
    }
}
