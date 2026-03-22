package com.unity3d.ads.core.data.datasource;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidRemoteCacheDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource", f = "AndroidRemoteCacheDataSource.kt", l = {57, 65}, m = "getFile")
/* loaded from: classes7.dex */
public final class AndroidRemoteCacheDataSource$getFile$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidRemoteCacheDataSource this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidRemoteCacheDataSource$getFile$1(AndroidRemoteCacheDataSource androidRemoteCacheDataSource, c<? super AndroidRemoteCacheDataSource$getFile$1> cVar) {
        super(cVar);
        this.this$0 = androidRemoteCacheDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getFile(null, null, null, null, this);
    }
}
