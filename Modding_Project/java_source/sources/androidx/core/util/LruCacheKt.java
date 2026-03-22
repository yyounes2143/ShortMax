package androidx.core.util;

import android.util.LruCache;
import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LruCache.kt */
@Metadata
/* loaded from: classes.dex */
public final class LruCacheKt {
    @NotNull
    public static final <K, V> LruCache<K, V> lruCache(int i10, @NotNull Function2<? super K, ? super V, Integer> function2, @NotNull Function1<? super K, ? extends V> function1, @NotNull o<? super Boolean, ? super K, ? super V, ? super V, Unit> oVar) {
        return new LruCacheKt$lruCache$4(i10, function2, function1, oVar);
    }

    public static /* synthetic */ LruCache lruCache$default(int i10, Function2 function2, Function1 function1, o oVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function2 = new Function2() { // from class: androidx.core.util.LruCacheKt$lruCache$1
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(@NotNull Object obj2, @NotNull Object obj3) {
                    return 1;
                }
            };
        }
        if ((i11 & 4) != 0) {
            function1 = new Function1() { // from class: androidx.core.util.LruCacheKt$lruCache$2
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final Object invoke(@NotNull Object obj2) {
                    return null;
                }
            };
        }
        if ((i11 & 8) != 0) {
            oVar = new o() { // from class: androidx.core.util.LruCacheKt$lruCache$3
                public final void invoke(boolean z10, @NotNull Object obj2, @NotNull Object obj3, @Nullable Object obj4) {
                }

                @Override // at.o
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke(((Boolean) obj2).booleanValue(), obj3, obj4, obj5);
                    return Unit.f60915a;
                }
            };
        }
        return new LruCacheKt$lruCache$4(i10, function2, function1, oVar);
    }
}
