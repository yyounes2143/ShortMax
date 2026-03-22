package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Hoverable.kt */
@Metadata
@d(c = "androidx.compose.foundation.HoverableKt$hoverable$2", f = "Hoverable.kt", l = {70}, m = "invoke$emitExit")
/* loaded from: classes.dex */
public final class HoverableKt$hoverable$2$invoke$emitExit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HoverableKt$hoverable$2$invoke$emitExit$1(c<? super HoverableKt$hoverable$2$invoke$emitExit$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return HoverableKt$hoverable$2.invoke$emitExit(null, null, this);
    }
}
