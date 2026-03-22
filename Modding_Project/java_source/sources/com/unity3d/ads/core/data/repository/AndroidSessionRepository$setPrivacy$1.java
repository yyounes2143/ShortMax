package com.unity3d.ads.core.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidSessionRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository", f = "AndroidSessionRepository.kt", l = {213, 214}, m = "setPrivacy")
/* loaded from: classes7.dex */
public final class AndroidSessionRepository$setPrivacy$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidSessionRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidSessionRepository$setPrivacy$1(AndroidSessionRepository androidSessionRepository, c<? super AndroidSessionRepository$setPrivacy$1> cVar) {
        super(cVar);
        this.this$0 = androidSessionRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.setPrivacy(null, this);
    }
}
