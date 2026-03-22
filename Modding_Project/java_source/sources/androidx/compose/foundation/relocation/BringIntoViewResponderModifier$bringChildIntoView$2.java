package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: BringIntoViewResponder.kt */
@Metadata
@d(c = "androidx.compose.foundation.relocation.BringIntoViewResponderModifier$bringChildIntoView$2", f = "BringIntoViewResponder.kt", l = {214, 223, 230}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class BringIntoViewResponderModifier$bringChildIntoView$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ LayoutCoordinates $childCoordinates;
    final /* synthetic */ Rect $rect;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ BringIntoViewResponderModifier this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderModifier$bringChildIntoView$2(BringIntoViewResponderModifier bringIntoViewResponderModifier, LayoutCoordinates layoutCoordinates, Rect rect, c<? super BringIntoViewResponderModifier$bringChildIntoView$2> cVar) {
        super(2, cVar);
        this.this$0 = bringIntoViewResponderModifier;
        this.$childCoordinates = layoutCoordinates;
        this.$rect = rect;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        BringIntoViewResponderModifier$bringChildIntoView$2 bringIntoViewResponderModifier$bringChildIntoView$2 = new BringIntoViewResponderModifier$bringChildIntoView$2(this.this$0, this.$childCoordinates, this.$rect, cVar);
        bringIntoViewResponderModifier$bringChildIntoView$2.L$0 = obj;
        return bringIntoViewResponderModifier$bringChildIntoView$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((BringIntoViewResponderModifier$bringChildIntoView$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00b0 A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #1 {all -> 0x0037, blocks: (B:15:0x0032, B:39:0x00a8, B:41:0x00b0), top: B:76:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0135  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.relocation.BringIntoViewResponderModifier$bringChildIntoView$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
