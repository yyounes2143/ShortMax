package com.unity3d.services.core.extensions;

import gt.k0;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.a;
import qt.d;
import rs.c;
/* compiled from: CoroutineExtensions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n14#1,6:48\n1#2:54\n*S KotlinDebug\n*F\n+ 1 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n*L\n24#1:48,6\n*E\n"})
/* loaded from: classes7.dex */
public final class CoroutineExtensionsKt {
    @NotNull
    private static final LinkedHashMap<Object, k0<?>> deferreds = new LinkedHashMap<Object, k0<?>>() { // from class: com.unity3d.services.core.extensions.CoroutineExtensionsKt$deferreds$1
        public /* bridge */ boolean containsValue(k0<?> k0Var) {
            return super.containsValue((Object) k0Var);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<Object, k0<?>>> entrySet() {
            return getEntries();
        }

        public /* bridge */ Set<Map.Entry<Object, k0<?>>> getEntries() {
            return super.entrySet();
        }

        public /* bridge */ Set<Object> getKeys() {
            return super.keySet();
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public /* bridge */ Collection<k0<?>> getValues() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Object> keySet() {
            return getKeys();
        }

        public /* bridge */ boolean remove(Object obj, k0<?> k0Var) {
            return super.remove(obj, (Object) k0Var);
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(@NotNull Map.Entry<Object, k0<?>> eldest) {
            Intrinsics.checkNotNullParameter(eldest, "eldest");
            if (size() > 100) {
                return true;
            }
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<k0<?>> values() {
            return getValues();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof k0) {
                return containsValue((k0) obj);
            }
            return false;
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if (obj != null && (obj2 instanceof k0)) {
                return remove(obj, (k0) obj2);
            }
            return false;
        }
    };
    @NotNull
    private static final a mutex = d.b(false, 1, null);

    @NotNull
    public static final LinkedHashMap<Object, k0<?>> getDeferreds() {
        return deferreds;
    }

    @NotNull
    public static final a getMutex() {
        return mutex;
    }

    @Nullable
    public static final <T> Object memoize(@NotNull Object obj, @NotNull Function1<? super c<? super T>, ? extends Object> function1, @NotNull c<? super T> cVar) {
        return i.f(new CoroutineExtensionsKt$memoize$2(obj, function1, null), cVar);
    }

    private static final <T> Object memoize$$forInline(Object obj, Function1<? super c<? super T>, ? extends Object> function1, c<? super T> cVar) {
        CoroutineExtensionsKt$memoize$2 coroutineExtensionsKt$memoize$2 = new CoroutineExtensionsKt$memoize$2(obj, function1, null);
        InlineMarker.mark(0);
        Object f10 = i.f(coroutineExtensionsKt$memoize$2, cVar);
        InlineMarker.mark(1);
        return f10;
    }

    @NotNull
    public static final <R> Object runReturnSuspendCatching(@NotNull Function0<? extends R> block) {
        Object d10;
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(block.invoke());
        } catch (CancellationException e10) {
            throw e10;
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        if (Result.j(d10)) {
            return Result.d(d10);
        }
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            return Result.d(f.a(g10));
        }
        return d10;
    }

    @NotNull
    public static final <R> Object runSuspendCatching(@NotNull Function0<? extends R> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            Result.a aVar = Result.f60901b;
            return Result.d(block.invoke());
        } catch (CancellationException e10) {
            throw e10;
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(f.a(th2));
        }
    }
}
