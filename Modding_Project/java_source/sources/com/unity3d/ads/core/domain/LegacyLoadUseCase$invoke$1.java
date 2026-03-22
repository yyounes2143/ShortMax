package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LegacyLoadUseCase.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.LegacyLoadUseCase", f = "LegacyLoadUseCase.kt", l = {98}, m = "invoke")
/* loaded from: classes7.dex */
public final class LegacyLoadUseCase$invoke$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LegacyLoadUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyLoadUseCase$invoke$1(LegacyLoadUseCase legacyLoadUseCase, c<? super LegacyLoadUseCase$invoke$1> cVar) {
        super(cVar);
        this.this$0 = legacyLoadUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, null, null, null, null, this);
    }
}
