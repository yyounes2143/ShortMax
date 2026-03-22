package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.ShowEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LegacyShowUseCase.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$4", f = "LegacyShowUseCase.kt", l = {207, 212}, m = "emit")
/* loaded from: classes7.dex */
public final class LegacyShowUseCase$invoke$4$emit$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LegacyShowUseCase$invoke$4<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LegacyShowUseCase$invoke$4$emit$1(LegacyShowUseCase$invoke$4<? super T> legacyShowUseCase$invoke$4, c<? super LegacyShowUseCase$invoke$4$emit$1> cVar) {
        super(cVar);
        this.this$0 = legacyShowUseCase$invoke$4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit((ShowEvent) null, (c<? super Unit>) this);
    }
}
