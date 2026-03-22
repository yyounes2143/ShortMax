package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.r;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectionMagnifier.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1", f = "SelectionMagnifier.kt", l = {88}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Animatable<Offset, AnimationVector2D> $animatable;
    final /* synthetic */ State<Offset> $targetValue$delegate;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1(State<Offset> state, Animatable<Offset, AnimationVector2D> animatable, c<? super SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1> cVar) {
        super(2, cVar);
        this.$targetValue$delegate = state;
        this.$animatable = animatable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1 selectionMagnifierKt$rememberAnimatedMagnifierPosition$1 = new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1(this.$targetValue$delegate, this.$animatable, cVar);
        selectionMagnifierKt$rememberAnimatedMagnifierPosition$1.L$0 = obj;
        return selectionMagnifierKt$rememberAnimatedMagnifierPosition$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            final g0 g0Var = (g0) this.L$0;
            final State<Offset> state = this.$targetValue$delegate;
            b snapshotFlow = SnapshotStateKt.snapshotFlow(new Function0<Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Offset invoke() {
                    return Offset.m1595boximpl(m840invokeF1C5BW0());
                }

                /* renamed from: invoke-F1C5BW0  reason: not valid java name */
                public final long m840invokeF1C5BW0() {
                    long m834rememberAnimatedMagnifierPosition$lambda1;
                    m834rememberAnimatedMagnifierPosition$lambda1 = SelectionMagnifierKt.m834rememberAnimatedMagnifierPosition$lambda1(state);
                    return m834rememberAnimatedMagnifierPosition$lambda1;
                }
            });
            final Animatable<Offset, AnimationVector2D> animatable = this.$animatable;
            kt.c<Offset> cVar = new kt.c<Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1.2
                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Offset offset, c cVar2) {
                    return m841emit3MmeM6k(offset.m1616unboximpl(), cVar2);
                }

                @Nullable
                /* renamed from: emit-3MmeM6k  reason: not valid java name */
                public final Object m841emit3MmeM6k(long j10, @NotNull c<? super Unit> cVar2) {
                    r d10;
                    if (OffsetKt.m1625isSpecifiedk4lQ0M(animatable.getValue().m1616unboximpl()) && OffsetKt.m1625isSpecifiedk4lQ0M(j10) && Offset.m1607getYimpl(animatable.getValue().m1616unboximpl()) != Offset.m1607getYimpl(j10)) {
                        d10 = g.d(g0Var, null, null, new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$2$emit$2(animatable, j10, null), 3, null);
                        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
                            return d10;
                        }
                        return Unit.f60915a;
                    }
                    Object snapTo = animatable.snapTo(Offset.m1595boximpl(j10), cVar2);
                    if (snapTo == kotlin.coroutines.intrinsics.a.f()) {
                        return snapTo;
                    }
                    return Unit.f60915a;
                }
            };
            this.label = 1;
            if (snapshotFlow.collect(cVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
