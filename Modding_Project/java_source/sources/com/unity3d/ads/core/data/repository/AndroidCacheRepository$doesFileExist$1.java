package com.unity3d.ads.core.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidCacheRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository", f = "AndroidCacheRepository.kt", l = {100}, m = "doesFileExist")
/* loaded from: classes7.dex */
public final class AndroidCacheRepository$doesFileExist$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidCacheRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCacheRepository$doesFileExist$1(AndroidCacheRepository androidCacheRepository, c<? super AndroidCacheRepository$doesFileExist$1> cVar) {
        super(cVar);
        this.this$0 = androidCacheRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doesFileExist(null, this);
    }
}
