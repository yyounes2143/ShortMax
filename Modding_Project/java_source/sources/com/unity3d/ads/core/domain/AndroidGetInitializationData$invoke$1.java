package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidGetInitializationData.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidGetInitializationData", f = "AndroidGetInitializationData.kt", l = {10, 11}, m = "invoke")
/* loaded from: classes7.dex */
public final class AndroidGetInitializationData$invoke$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidGetInitializationData this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidGetInitializationData$invoke$1(AndroidGetInitializationData androidGetInitializationData, c<? super AndroidGetInitializationData$invoke$1> cVar) {
        super(cVar);
        this.this$0 = androidGetInitializationData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(this);
    }
}
