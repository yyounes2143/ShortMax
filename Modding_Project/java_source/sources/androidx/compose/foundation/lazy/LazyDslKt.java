package androidx.compose.foundation.lazy;

import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import at.o;
import at.p;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyDsl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyDslKt {
    /* JADX WARN: Removed duplicated region for block: B:100:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0105  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyColumn(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r28, @org.jetbrains.annotations.Nullable androidx.compose.foundation.lazy.LazyListState r29, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.PaddingValues r30, boolean r31, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.Arrangement.Vertical r32, @org.jetbrains.annotations.Nullable androidx.compose.ui.Alignment.Horizontal r33, @org.jetbrains.annotations.Nullable androidx.compose.foundation.gestures.FlingBehavior r34, boolean r35, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.compose.foundation.lazy.LazyListScope, kotlin.Unit> r36, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyDslKt.LazyColumn(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, boolean, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0103  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyRow(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r28, @org.jetbrains.annotations.Nullable androidx.compose.foundation.lazy.LazyListState r29, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.PaddingValues r30, boolean r31, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.Arrangement.Horizontal r32, @org.jetbrains.annotations.Nullable androidx.compose.ui.Alignment.Vertical r33, @org.jetbrains.annotations.Nullable androidx.compose.foundation.gestures.FlingBehavior r34, boolean r35, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.compose.foundation.lazy.LazyListScope, kotlin.Unit> r36, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyDslKt.LazyRow(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.ui.Alignment$Vertical, androidx.compose.foundation.gestures.FlingBehavior, boolean, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final <T> void items(@NotNull LazyListScope lazyListScope, @NotNull List<? extends T> items, @Nullable Function1<? super T, ? extends Object> function1, @NotNull Function1<? super T, ? extends Object> contentType, @NotNull o<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function1 != null ? new LazyDslKt$items$2(function1, items) : null, new LazyDslKt$items$3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new LazyDslKt$items$4(itemContent, items)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, List items, Function1 function1, Function1 contentType, o itemContent, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        if ((i10 & 4) != 0) {
            contentType = LazyDslKt$items$1.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function1 != null ? new LazyDslKt$items$2(function1, items) : null, new LazyDslKt$items$3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new LazyDslKt$items$4(itemContent, items)));
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final <T> void itemsIndexed(@NotNull LazyListScope lazyListScope, @NotNull List<? extends T> items, @Nullable Function2<? super Integer, ? super T, ? extends Object> function2, @NotNull Function2<? super Integer, ? super T, ? extends Object> contentType, @NotNull p<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function2 != null ? new LazyDslKt$itemsIndexed$2(function2, items) : null, new LazyDslKt$itemsIndexed$3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new LazyDslKt$itemsIndexed$4(itemContent, items)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, List items, Function2 function2, Function2 contentType, p itemContent, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function2 = null;
        }
        if ((i10 & 4) != 0) {
            contentType = new Function2() { // from class: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$1
                @Nullable
                public final Void invoke(int i11, Object obj2) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    return invoke(((Number) obj2).intValue(), obj3);
                }
            };
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function2 != null ? new LazyDslKt$itemsIndexed$2(function2, items) : null, new LazyDslKt$itemsIndexed$3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new LazyDslKt$itemsIndexed$4(itemContent, items)));
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final <T> void items(@NotNull LazyListScope lazyListScope, @NotNull T[] items, @Nullable Function1<? super T, ? extends Object> function1, @NotNull Function1<? super T, ? extends Object> contentType, @NotNull o<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function1 != null ? new LazyDslKt$items$6(function1, items) : null, new LazyDslKt$items$7(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new LazyDslKt$items$8(itemContent, items)));
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final <T> void itemsIndexed(@NotNull LazyListScope lazyListScope, @NotNull T[] items, @Nullable Function2<? super Integer, ? super T, ? extends Object> function2, @NotNull Function2<? super Integer, ? super T, ? extends Object> contentType, @NotNull p<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function2 != null ? new LazyDslKt$itemsIndexed$6(function2, items) : null, new LazyDslKt$itemsIndexed$7(contentType, items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new LazyDslKt$itemsIndexed$8(itemContent, items)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, List items, Function1 function1, o itemContent, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function1 != null ? new LazyDslKt$items$2(function1, items) : null, new LazyDslKt$items$3(LazyDslKt$items$1.INSTANCE, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new LazyDslKt$items$4(itemContent, items)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, List items, Function2 function2, p itemContent, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function2 = null;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function2 != null ? new LazyDslKt$itemsIndexed$2(function2, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1(items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new LazyDslKt$itemsIndexed$4(itemContent, items)));
    }

    @c
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final /* synthetic */ <T> void items(LazyListScope lazyListScope, List<? extends T> items, Function1<? super T, ? extends Object> function1, o<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function1 != null ? new LazyDslKt$items$2(function1, items) : null, new LazyDslKt$items$3(LazyDslKt$items$1.INSTANCE, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new LazyDslKt$items$4(itemContent, items)));
    }

    @c
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final /* synthetic */ <T> void itemsIndexed(LazyListScope lazyListScope, List<? extends T> items, Function2<? super Integer, ? super T, ? extends Object> function2, p<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function2 != null ? new LazyDslKt$itemsIndexed$2(function2, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1(items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new LazyDslKt$itemsIndexed$4(itemContent, items)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, Object[] items, Function2 function2, Function2 contentType, p itemContent, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function2 = null;
        }
        if ((i10 & 4) != 0) {
            contentType = new Function2() { // from class: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$5
                @Nullable
                public final Void invoke(int i11, Object obj2) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    return invoke(((Number) obj2).intValue(), obj3);
                }
            };
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function2 != null ? new LazyDslKt$itemsIndexed$6(function2, items) : null, new LazyDslKt$itemsIndexed$7(contentType, items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new LazyDslKt$itemsIndexed$8(itemContent, items)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, Object[] items, Function1 function1, Function1 contentType, o itemContent, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        if ((i10 & 4) != 0) {
            contentType = LazyDslKt$items$5.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function1 != null ? new LazyDslKt$items$6(function1, items) : null, new LazyDslKt$items$7(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new LazyDslKt$items$8(itemContent, items)));
    }

    @c
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final /* synthetic */ <T> void itemsIndexed(LazyListScope lazyListScope, T[] items, Function2<? super Integer, ? super T, ? extends Object> function2, p<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function2 != null ? new LazyDslKt$itemsIndexed$6(function2, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2(items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new LazyDslKt$itemsIndexed$8(itemContent, items)));
    }

    @c
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final /* synthetic */ <T> void items(LazyListScope lazyListScope, T[] items, Function1<? super T, ? extends Object> function1, o<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function1 != null ? new LazyDslKt$items$6(function1, items) : null, new LazyDslKt$items$7(LazyDslKt$items$5.INSTANCE, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new LazyDslKt$items$8(itemContent, items)));
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0123  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @ms.c
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void LazyColumn(androidx.compose.ui.Modifier r26, androidx.compose.foundation.lazy.LazyListState r27, androidx.compose.foundation.layout.PaddingValues r28, boolean r29, androidx.compose.foundation.layout.Arrangement.Vertical r30, androidx.compose.ui.Alignment.Horizontal r31, androidx.compose.foundation.gestures.FlingBehavior r32, final kotlin.jvm.functions.Function1 r33, androidx.compose.runtime.Composer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyDslKt.LazyColumn(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0123  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @ms.c
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void LazyRow(androidx.compose.ui.Modifier r26, androidx.compose.foundation.lazy.LazyListState r27, androidx.compose.foundation.layout.PaddingValues r28, boolean r29, androidx.compose.foundation.layout.Arrangement.Horizontal r30, androidx.compose.ui.Alignment.Vertical r31, androidx.compose.foundation.gestures.FlingBehavior r32, final kotlin.jvm.functions.Function1 r33, androidx.compose.runtime.Composer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyDslKt.LazyRow(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.ui.Alignment$Vertical, androidx.compose.foundation.gestures.FlingBehavior, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, Object[] items, Function2 function2, p itemContent, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function2 = null;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function2 != null ? new LazyDslKt$itemsIndexed$6(function2, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2(items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new LazyDslKt$itemsIndexed$8(itemContent, items)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, Object[] items, Function1 function1, o itemContent, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function1 != null ? new LazyDslKt$items$6(function1, items) : null, new LazyDslKt$items$7(LazyDslKt$items$5.INSTANCE, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new LazyDslKt$items$8(itemContent, items)));
    }
}
