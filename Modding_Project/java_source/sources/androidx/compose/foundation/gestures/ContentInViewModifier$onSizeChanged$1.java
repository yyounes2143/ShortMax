package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Rect;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ContentInViewModifier$onSizeChanged$1", f = "Scrollable.kt", l = {578}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ContentInViewModifier$onSizeChanged$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Rect $adjustedBounds;
    final /* synthetic */ Rect $focusedBounds;
    int label;
    final /* synthetic */ ContentInViewModifier this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInViewModifier$onSizeChanged$1(ContentInViewModifier contentInViewModifier, Rect rect, Rect rect2, c<? super ContentInViewModifier$onSizeChanged$1> cVar) {
        super(2, cVar);
        this.this$0 = contentInViewModifier;
        this.$focusedBounds = rect;
        this.$adjustedBounds = rect2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ContentInViewModifier$onSizeChanged$1(this.this$0, this.$focusedBounds, this.$adjustedBounds, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((ContentInViewModifier$onSizeChanged$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object performBringIntoView;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ContentInViewModifier contentInViewModifier = this.this$0;
            Rect rect = this.$focusedBounds;
            Rect rect2 = this.$adjustedBounds;
            this.label = 1;
            performBringIntoView = contentInViewModifier.performBringIntoView(rect, rect2, this);
            if (performBringIntoView == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
