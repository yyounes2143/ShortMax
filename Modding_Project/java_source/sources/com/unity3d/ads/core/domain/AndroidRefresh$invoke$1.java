package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidRefresh.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidRefresh", f = "AndroidRefresh.kt", l = {25}, m = "invoke")
/* loaded from: classes7.dex */
public final class AndroidRefresh$invoke$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidRefresh this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidRefresh$invoke$1(AndroidRefresh androidRefresh, c<? super AndroidRefresh$invoke$1> cVar) {
        super(cVar);
        this.this$0 = androidRefresh;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, null, this);
    }
}
