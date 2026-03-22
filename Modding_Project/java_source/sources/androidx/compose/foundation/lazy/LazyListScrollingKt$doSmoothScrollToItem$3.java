package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyListScrolling.kt */
@Metadata
@d(c = "androidx.compose.foundation.lazy.LazyListScrollingKt$doSmoothScrollToItem$3", f = "LazyListScrolling.kt", l = {114, 205}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class LazyListScrollingKt$doSmoothScrollToItem$3 extends SuspendLambda implements Function2<ScrollScope, c<? super Unit>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ int $scrollOffset;
    final /* synthetic */ LazyListState $this_doSmoothScrollToItem;
    float F$0;
    float F$1;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListScrollingKt$doSmoothScrollToItem$3(LazyListState lazyListState, int i10, int i11, c<? super LazyListScrollingKt$doSmoothScrollToItem$3> cVar) {
        super(2, cVar);
        this.$this_doSmoothScrollToItem = lazyListState;
        this.$index = i10;
        this.$scrollOffset = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invokeSuspend$isOvershot(boolean z10, LazyListState lazyListState, int i10, int i11) {
        if (z10) {
            if (lazyListState.getFirstVisibleItemIndex() <= i10 && (lazyListState.getFirstVisibleItemIndex() != i10 || lazyListState.getFirstVisibleItemScrollOffset() <= i11)) {
                return false;
            }
        } else if (lazyListState.getFirstVisibleItemIndex() >= i10 && (lazyListState.getFirstVisibleItemIndex() != i10 || lazyListState.getFirstVisibleItemScrollOffset() >= i11)) {
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        LazyListScrollingKt$doSmoothScrollToItem$3 lazyListScrollingKt$doSmoothScrollToItem$3 = new LazyListScrollingKt$doSmoothScrollToItem$3(this.$this_doSmoothScrollToItem, this.$index, this.$scrollOffset, cVar);
        lazyListScrollingKt$doSmoothScrollToItem$3.L$0 = obj;
        return lazyListScrollingKt$doSmoothScrollToItem$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable c<? super Unit> cVar) {
        return ((LazyListScrollingKt$doSmoothScrollToItem$3) create(scrollScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00b7 A[Catch: ItemFoundInScroll -> 0x01be, TryCatch #0 {ItemFoundInScroll -> 0x01be, blocks: (B:23:0x00b3, B:25:0x00b7, B:27:0x00c3, B:34:0x00e9, B:40:0x0119, B:44:0x0157, B:48:0x0160), top: B:72:0x00b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d6 A[Catch: ItemFoundInScroll -> 0x00e5, TRY_ENTER, TRY_LEAVE, TryCatch #2 {ItemFoundInScroll -> 0x00e5, blocks: (B:54:0x01b2, B:30:0x00d6), top: B:76:0x01b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0227 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v24, types: [androidx.compose.animation.core.AnimationState, T] */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.animation.core.AnimationState, T] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x01a8 -> B:76:0x01b2). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r32) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListScrollingKt$doSmoothScrollToItem$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
