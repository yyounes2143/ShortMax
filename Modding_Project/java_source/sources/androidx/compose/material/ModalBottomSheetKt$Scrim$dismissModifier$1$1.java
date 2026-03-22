package androidx.compose.material;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ModalBottomSheet.kt */
@Metadata
@d(c = "androidx.compose.material.ModalBottomSheetKt$Scrim$dismissModifier$1$1", f = "ModalBottomSheet.kt", l = {443}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ModalBottomSheetKt$Scrim$dismissModifier$1$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $onDismiss;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModalBottomSheetKt$Scrim$dismissModifier$1$1(Function0<Unit> function0, c<? super ModalBottomSheetKt$Scrim$dismissModifier$1$1> cVar) {
        super(2, cVar);
        this.$onDismiss = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ModalBottomSheetKt$Scrim$dismissModifier$1$1 modalBottomSheetKt$Scrim$dismissModifier$1$1 = new ModalBottomSheetKt$Scrim$dismissModifier$1$1(this.$onDismiss, cVar);
        modalBottomSheetKt$Scrim$dismissModifier$1$1.L$0 = obj;
        return modalBottomSheetKt$Scrim$dismissModifier$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((ModalBottomSheetKt$Scrim$dismissModifier$1$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
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
            PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
            final Function0<Unit> function0 = this.$onDismiss;
            Function1<Offset, Unit> function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.material.ModalBottomSheetKt$Scrim$dismissModifier$1$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m1122invokek4lQ0M(offset.m1616unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                public final void m1122invokek4lQ0M(long j10) {
                    function0.invoke();
                }
            };
            this.label = 1;
            if (TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, null, function1, this, 7, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
