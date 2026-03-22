package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonCleanAssets.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.CommonCleanAssets", f = "CommonCleanAssets.kt", l = {18, 19}, m = "invoke")
/* loaded from: classes7.dex */
public final class CommonCleanAssets$invoke$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonCleanAssets this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonCleanAssets$invoke$1(CommonCleanAssets commonCleanAssets, c<? super CommonCleanAssets$invoke$1> cVar) {
        super(cVar);
        this.this$0 = commonCleanAssets;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(this);
    }
}
