package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: View.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {409, 411}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements Function2<kotlin.sequences.i<? super View>, rs.c<? super Unit>, Object> {
    final /* synthetic */ View $this_allViews;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, rs.c<? super ViewKt$allViews$1> cVar) {
        super(2, cVar);
        this.$this_allViews = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, cVar);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.sequences.i iVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            iVar = (kotlin.sequences.i) this.L$0;
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            iVar = (kotlin.sequences.i) this.L$0;
            View view = this.$this_allViews;
            this.L$0 = iVar;
            this.label = 1;
            if (iVar.a(view, this) == f10) {
                return f10;
            }
        }
        View view2 = this.$this_allViews;
        if (view2 instanceof ViewGroup) {
            Sequence<View> descendants = ViewGroupKt.getDescendants((ViewGroup) view2);
            this.L$0 = null;
            this.label = 2;
            if (iVar.c(descendants, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull kotlin.sequences.i<? super View> iVar, @Nullable rs.c<? super Unit> cVar) {
        return ((ViewKt$allViews$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
