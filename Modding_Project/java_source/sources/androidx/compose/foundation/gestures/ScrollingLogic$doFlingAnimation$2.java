package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2", f = "Scrollable.kt", l = {412}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ScrollingLogic$doFlingAnimation$2 extends SuspendLambda implements Function2<ScrollScope, c<? super Unit>, Object> {
    final /* synthetic */ long $available;
    final /* synthetic */ Ref.LongRef $result;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ScrollingLogic this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$doFlingAnimation$2(ScrollingLogic scrollingLogic, Ref.LongRef longRef, long j10, c<? super ScrollingLogic$doFlingAnimation$2> cVar) {
        super(2, cVar);
        this.this$0 = scrollingLogic;
        this.$result = longRef;
        this.$available = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this.this$0, this.$result, this.$available, cVar);
        scrollingLogic$doFlingAnimation$2.L$0 = obj;
        return scrollingLogic$doFlingAnimation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable c<? super Unit> cVar) {
        return ((ScrollingLogic$doFlingAnimation$2) create(scrollScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ScrollingLogic scrollingLogic;
        Ref.LongRef longRef;
        ScrollingLogic scrollingLogic2;
        long j10;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                j10 = this.J$0;
                longRef = (Ref.LongRef) this.L$2;
                scrollingLogic = (ScrollingLogic) this.L$1;
                scrollingLogic2 = (ScrollingLogic) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            final ScrollScope scrollScope = (ScrollScope) this.L$0;
            final ScrollingLogic scrollingLogic3 = this.this$0;
            final Function1<Offset, Offset> function1 = new Function1<Offset, Offset>() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$outerScopeScroll$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Offset invoke(Offset offset) {
                    return Offset.m1595boximpl(m358invokeMKHz9U(offset.m1616unboximpl()));
                }

                /* renamed from: invoke-MK-Hz9U  reason: not valid java name */
                public final long m358invokeMKHz9U(long j11) {
                    ScrollingLogic scrollingLogic4 = ScrollingLogic.this;
                    return Offset.m1610minusMKHz9U(j11, ScrollingLogic.this.m352reverseIfNeededMKHz9U(scrollingLogic4.m349dispatchScrollf0eR0lY(scrollScope, scrollingLogic4.m352reverseIfNeededMKHz9U(j11), null, NestedScrollSource.Companion.m3110getFlingWNlRxjI())));
                }
            };
            final ScrollingLogic scrollingLogic4 = this.this$0;
            ScrollScope scrollScope2 = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$scope$1
                @Override // androidx.compose.foundation.gestures.ScrollScope
                public float scrollBy(float f11) {
                    ScrollingLogic scrollingLogic5 = ScrollingLogic.this;
                    return scrollingLogic5.m354toFloatk4lQ0M(function1.invoke(Offset.m1595boximpl(scrollingLogic5.m355toOffsettuRUvjQ(f11))).m1616unboximpl());
                }
            };
            scrollingLogic = this.this$0;
            Ref.LongRef longRef2 = this.$result;
            long j11 = this.$available;
            FlingBehavior flingBehavior = scrollingLogic.getFlingBehavior();
            long j12 = longRef2.element;
            float reverseIfNeeded = scrollingLogic.reverseIfNeeded(scrollingLogic.m353toFloatTH1AsA0(j11));
            this.L$0 = scrollingLogic;
            this.L$1 = scrollingLogic;
            this.L$2 = longRef2;
            this.J$0 = j12;
            this.label = 1;
            obj = flingBehavior.performFling(scrollScope2, reverseIfNeeded, this);
            if (obj == f10) {
                return f10;
            }
            longRef = longRef2;
            scrollingLogic2 = scrollingLogic;
            j10 = j12;
        }
        longRef.element = scrollingLogic.m357updateQWom1Mo(j10, scrollingLogic2.reverseIfNeeded(((Number) obj).floatValue()));
        return Unit.f60915a;
    }
}
