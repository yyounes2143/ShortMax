package androidx.compose.foundation.lazy.grid;

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
/* compiled from: LazyGridScrolling.kt */
@Metadata
@d(c = "androidx.compose.foundation.lazy.grid.LazyGridScrollingKt$doSmoothScrollToItem$3", f = "LazyGridScrolling.kt", l = {128, 223}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class LazyGridScrollingKt$doSmoothScrollToItem$3 extends SuspendLambda implements Function2<ScrollScope, c<? super Unit>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ int $scrollOffset;
    final /* synthetic */ int $slotsPerLine;
    final /* synthetic */ LazyGridState $this_doSmoothScrollToItem;
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
    public LazyGridScrollingKt$doSmoothScrollToItem$3(LazyGridState lazyGridState, int i10, int i11, int i12, c<? super LazyGridScrollingKt$doSmoothScrollToItem$3> cVar) {
        super(2, cVar);
        this.$this_doSmoothScrollToItem = lazyGridState;
        this.$index = i10;
        this.$slotsPerLine = i11;
        this.$scrollOffset = i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invokeSuspend$isOvershot(boolean z10, LazyGridState lazyGridState, int i10, int i11) {
        if (z10) {
            if (lazyGridState.getFirstVisibleItemIndex() <= i10 && (lazyGridState.getFirstVisibleItemIndex() != i10 || lazyGridState.getFirstVisibleItemScrollOffset() <= i11)) {
                return false;
            }
        } else if (lazyGridState.getFirstVisibleItemIndex() >= i10 && (lazyGridState.getFirstVisibleItemIndex() != i10 || lazyGridState.getFirstVisibleItemScrollOffset() >= i11)) {
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        LazyGridScrollingKt$doSmoothScrollToItem$3 lazyGridScrollingKt$doSmoothScrollToItem$3 = new LazyGridScrollingKt$doSmoothScrollToItem$3(this.$this_doSmoothScrollToItem, this.$index, this.$slotsPerLine, this.$scrollOffset, cVar);
        lazyGridScrollingKt$doSmoothScrollToItem$3.L$0 = obj;
        return lazyGridScrollingKt$doSmoothScrollToItem$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable c<? super Unit> cVar) {
        return ((LazyGridScrollingKt$doSmoothScrollToItem$3) create(scrollScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00b7 A[Catch: ItemFoundInScroll -> 0x01b9, TryCatch #0 {ItemFoundInScroll -> 0x01b9, blocks: (B:23:0x00b3, B:25:0x00b7, B:27:0x00c3, B:31:0x00de, B:35:0x00f0, B:41:0x0115, B:45:0x0151, B:49:0x015a), top: B:75:0x00b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0227 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v22, types: [androidx.compose.animation.core.AnimationState, T] */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.animation.core.AnimationState, T] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x01a0 -> B:80:0x01a9). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r31) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridScrollingKt$doSmoothScrollToItem$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
