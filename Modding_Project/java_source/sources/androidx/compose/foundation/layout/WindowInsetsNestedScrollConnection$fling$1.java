package androidx.compose.foundation.layout;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowInsetsConnection.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection", f = "WindowInsetsConnection.android.kt", l = {304, 330, 355}, m = "fling-huYlsQE")
/* loaded from: classes.dex */
public final class WindowInsetsNestedScrollConnection$fling$1 extends ContinuationImpl {
    float F$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WindowInsetsNestedScrollConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInsetsNestedScrollConnection$fling$1(WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, rs.c<? super WindowInsetsNestedScrollConnection$fling$1> cVar) {
        super(cVar);
        this.this$0 = windowInsetsNestedScrollConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m507flinghuYlsQE;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m507flinghuYlsQE = this.this$0.m507flinghuYlsQE(0L, 0.0f, false, this);
        return m507flinghuYlsQE;
    }
}
