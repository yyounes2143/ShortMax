package androidx.compose.material;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Slider.kt */
@Metadata
@d(c = "androidx.compose.material.SliderKt", f = "Slider.kt", l = {795}, m = "awaitSlop-8vUncbI")
/* loaded from: classes.dex */
public final class SliderKt$awaitSlop$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SliderKt$awaitSlop$1(c<? super SliderKt$awaitSlop$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m1178awaitSlop8vUncbI;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m1178awaitSlop8vUncbI = SliderKt.m1178awaitSlop8vUncbI(null, 0L, 0, this);
        return m1178awaitSlop8vUncbI;
    }
}
