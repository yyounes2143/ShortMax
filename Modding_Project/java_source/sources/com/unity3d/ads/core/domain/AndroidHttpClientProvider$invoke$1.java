package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidHttpClientProvider.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider", f = "AndroidHttpClientProvider.kt", l = {177, 78}, m = "invoke")
/* loaded from: classes7.dex */
public final class AndroidHttpClientProvider$invoke$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidHttpClientProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHttpClientProvider$invoke$1(AndroidHttpClientProvider androidHttpClientProvider, c<? super AndroidHttpClientProvider$invoke$1> cVar) {
        super(cVar);
        this.this$0 = androidHttpClientProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(false, this);
    }
}
