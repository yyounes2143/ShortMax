package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TapGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$NoPressGesture$1", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class TapGestureDetectorKt$NoPressGesture$1 extends SuspendLambda implements n<PressGestureScope, Offset, c<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TapGestureDetectorKt$NoPressGesture$1(c<? super TapGestureDetectorKt$NoPressGesture$1> cVar) {
        super(3, cVar);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, c<? super Unit> cVar) {
        return m359invoked4ec7I(pressGestureScope, offset.m1616unboximpl(), cVar);
    }

    @Nullable
    /* renamed from: invoke-d-4ec7I  reason: not valid java name */
    public final Object m359invoked4ec7I(@NotNull PressGestureScope pressGestureScope, long j10, @Nullable c<? super Unit> cVar) {
        return new TapGestureDetectorKt$NoPressGesture$1(cVar).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
