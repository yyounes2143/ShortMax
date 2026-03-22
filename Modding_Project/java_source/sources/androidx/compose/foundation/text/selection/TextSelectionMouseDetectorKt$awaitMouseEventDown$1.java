package androidx.compose.foundation.text.selection;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextSelectionMouseDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt", f = "TextSelectionMouseDetector.kt", l = {127}, m = "awaitMouseEventDown")
/* loaded from: classes.dex */
public final class TextSelectionMouseDetectorKt$awaitMouseEventDown$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextSelectionMouseDetectorKt$awaitMouseEventDown$1(c<? super TextSelectionMouseDetectorKt$awaitMouseEventDown$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object awaitMouseEventDown;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        awaitMouseEventDown = TextSelectionMouseDetectorKt.awaitMouseEventDown(null, this);
        return awaitMouseEventDown;
    }
}
