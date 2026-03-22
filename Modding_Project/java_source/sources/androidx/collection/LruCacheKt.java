package androidx.collection;

import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LruCache.kt */
@Metadata
/* loaded from: classes.dex */
public final class LruCacheKt {
    private static final long MAX_SIZE = 2147483647L;

    @NotNull
    public static final <K, V> LruCache<K, V> lruCache(int i10, @NotNull Function2<? super K, ? super V, Integer> sizeOf, @NotNull Function1<? super K, ? extends V> create, @NotNull o<? super Boolean, ? super K, ? super V, ? super V, Unit> onEntryRemoved) {
        Intrinsics.checkNotNullParameter(sizeOf, "sizeOf");
        Intrinsics.checkNotNullParameter(create, "create");
        Intrinsics.checkNotNullParameter(onEntryRemoved, "onEntryRemoved");
        return new LruCacheKt$lruCache$4(i10, sizeOf, create, onEntryRemoved);
    }

    public static /* synthetic */ LruCache lruCache$default(int i10, Function2 sizeOf, Function1 create, o onEntryRemoved, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            sizeOf = new Function2() { // from class: androidx.collection.LruCacheKt$lruCache$1
                @Override // kotlin.jvm.functions.Function2
                public final Integer invoke(Object obj2, Object obj3) {
                    Intrinsics.checkNotNullParameter(obj2, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(obj3, "<anonymous parameter 1>");
                    return 1;
                }
            };
        }
        if ((i11 & 4) != 0) {
            create = new Function1() { // from class: androidx.collection.LruCacheKt$lruCache$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return null;
                }
            };
        }
        if ((i11 & 8) != 0) {
            onEntryRemoved = new o() { // from class: androidx.collection.LruCacheKt$lruCache$3
                public final void invoke(boolean z10, Object obj2, Object obj3, Object obj4) {
                    Intrinsics.checkNotNullParameter(obj2, "<anonymous parameter 1>");
                    Intrinsics.checkNotNullParameter(obj3, "<anonymous parameter 2>");
                }

                @Override // at.o
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke(((Boolean) obj2).booleanValue(), obj3, obj4, obj5);
                    return Unit.f60915a;
                }
            };
        }
        Intrinsics.checkNotNullParameter(sizeOf, "sizeOf");
        Intrinsics.checkNotNullParameter(create, "create");
        Intrinsics.checkNotNullParameter(onEntryRemoved, "onEntryRemoved");
        return new LruCacheKt$lruCache$4(i10, sizeOf, create, onEntryRemoved);
    }
}
