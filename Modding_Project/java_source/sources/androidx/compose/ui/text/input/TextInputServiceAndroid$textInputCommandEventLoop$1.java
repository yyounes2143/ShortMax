package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextInputServiceAndroid.android.kt */
@Metadata
@d(c = "androidx.compose.ui.text.input.TextInputServiceAndroid", f = "TextInputServiceAndroid.android.kt", l = {189}, m = "textInputCommandEventLoop")
/* loaded from: classes.dex */
public final class TextInputServiceAndroid$textInputCommandEventLoop$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TextInputServiceAndroid this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextInputServiceAndroid$textInputCommandEventLoop$1(TextInputServiceAndroid textInputServiceAndroid, c<? super TextInputServiceAndroid$textInputCommandEventLoop$1> cVar) {
        super(cVar);
        this.this$0 = textInputServiceAndroid;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.textInputCommandEventLoop(this);
    }
}
