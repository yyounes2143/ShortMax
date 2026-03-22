package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composer;
import at.n;
import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyDsl.kt */
@LazyScopeMarker
@Metadata
/* loaded from: classes.dex */
public interface LazyListScope {

    /* compiled from: LazyDsl.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static void item(@NotNull LazyListScope lazyListScope, @Nullable Object obj, @Nullable Object obj2, @NotNull n<? super LazyItemScope, ? super Composer, ? super Integer, Unit> content) {
            Intrinsics.checkNotNullParameter(content, "content");
            LazyListScope.super.item(obj, obj2, content);
        }

        @Deprecated
        public static void items(@NotNull LazyListScope lazyListScope, int i10, @Nullable Function1<? super Integer, ? extends Object> function1, @NotNull Function1<? super Integer, ? extends Object> contentType, @NotNull o<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> itemContent) {
            Intrinsics.checkNotNullParameter(contentType, "contentType");
            Intrinsics.checkNotNullParameter(itemContent, "itemContent");
            LazyListScope.super.items(i10, function1, contentType, itemContent);
        }

        @c
        @Deprecated
        public static /* synthetic */ void item(LazyListScope lazyListScope, Object obj, n content) {
            Intrinsics.checkNotNullParameter(content, "content");
            LazyListScope.super.item(obj, content);
        }

        @c
        @Deprecated
        public static /* synthetic */ void items(LazyListScope lazyListScope, int i10, Function1 function1, o itemContent) {
            Intrinsics.checkNotNullParameter(itemContent, "itemContent");
            LazyListScope.super.items(i10, function1, itemContent);
        }
    }

    static /* synthetic */ void item$default(LazyListScope lazyListScope, Object obj, Object obj2, n nVar, int i10, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: item");
        }
        if ((i10 & 1) != 0) {
            obj = null;
        }
        if ((i10 & 2) != 0) {
            obj2 = null;
        }
        lazyListScope.item(obj, obj2, nVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void items$default(LazyListScope lazyListScope, int i10, Function1 function1, Function1 function12, o oVar, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: items");
        }
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        if ((i11 & 4) != 0) {
            function12 = new Function1() { // from class: androidx.compose.foundation.lazy.LazyListScope$items$1
                @Nullable
                public final Void invoke(int i12) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    return invoke(((Number) obj2).intValue());
                }
            };
        }
        lazyListScope.items(i10, function1, function12, oVar);
    }

    static /* synthetic */ void stickyHeader$default(LazyListScope lazyListScope, Object obj, Object obj2, n nVar, int i10, Object obj3) {
        if (obj3 == null) {
            if ((i10 & 1) != 0) {
                obj = null;
            }
            if ((i10 & 2) != 0) {
                obj2 = null;
            }
            lazyListScope.stickyHeader(obj, obj2, nVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stickyHeader");
    }

    default void item(@Nullable Object obj, @Nullable Object obj2, @NotNull n<? super LazyItemScope, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        throw new IllegalStateException("The method is not implemented");
    }

    default void items(int i10, @Nullable Function1<? super Integer, ? extends Object> function1, @NotNull Function1<? super Integer, ? extends Object> contentType, @NotNull o<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        throw new IllegalStateException("The method is not implemented");
    }

    @ExperimentalFoundationApi
    void stickyHeader(@Nullable Object obj, @Nullable Object obj2, @NotNull n<? super LazyItemScope, ? super Composer, ? super Integer, Unit> nVar);

    static /* synthetic */ void item$default(LazyListScope lazyListScope, Object obj, n nVar, int i10, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: item");
        }
        if ((i10 & 1) != 0) {
            obj = null;
        }
        lazyListScope.item(obj, nVar);
    }

    @c
    /* synthetic */ default void item(Object obj, n content) {
        Intrinsics.checkNotNullParameter(content, "content");
        item(obj, null, content);
    }

    @c
    /* synthetic */ default void items(int i10, Function1 function1, o itemContent) {
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        items(i10, function1, new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.LazyListScope$items$2
            @Nullable
            public final Object invoke(int i11) {
                return null;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }
        }, itemContent);
    }

    static /* synthetic */ void items$default(LazyListScope lazyListScope, int i10, Function1 function1, o oVar, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: items");
        }
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        lazyListScope.items(i10, function1, oVar);
    }
}
