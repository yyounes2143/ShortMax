package androidx.collection;

import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: LruCache.kt */
@Metadata
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

    @Override // androidx.collection.LruCache
    protected V create(K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.$create.invoke(key);
    }

    @Override // androidx.collection.LruCache
    protected void entryRemoved(boolean z10, K key, V oldValue, V v10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        this.$onEntryRemoved.invoke(Boolean.valueOf(z10), key, oldValue, v10);
    }

    @Override // androidx.collection.LruCache
    protected int sizeOf(K key, V value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return this.$sizeOf.invoke(key, value).intValue();
    }
}
