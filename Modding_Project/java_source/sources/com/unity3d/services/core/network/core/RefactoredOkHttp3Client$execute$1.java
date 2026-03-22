package com.unity3d.services.core.network.core;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RefactoredOkHttp3Client.kt */
@Metadata
@d(c = "com.unity3d.services.core.network.core.RefactoredOkHttp3Client", f = "RefactoredOkHttp3Client.kt", l = {119}, m = "execute")
/* loaded from: classes7.dex */
public final class RefactoredOkHttp3Client$execute$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RefactoredOkHttp3Client this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefactoredOkHttp3Client$execute$1(RefactoredOkHttp3Client refactoredOkHttp3Client, c<? super RefactoredOkHttp3Client$execute$1> cVar) {
        super(cVar);
        this.this$0 = refactoredOkHttp3Client;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.execute(null, this);
    }
}
