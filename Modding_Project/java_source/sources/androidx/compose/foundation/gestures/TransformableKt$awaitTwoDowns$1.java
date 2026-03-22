package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Transformable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TransformableKt", f = "Transformable.kt", l = {160}, m = "awaitTwoDowns")
/* loaded from: classes.dex */
public final class TransformableKt$awaitTwoDowns$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformableKt$awaitTwoDowns$1(c<? super TransformableKt$awaitTwoDowns$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object awaitTwoDowns;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        awaitTwoDowns = TransformableKt.awaitTwoDowns(null, false, this);
        return awaitTwoDowns;
    }
}
