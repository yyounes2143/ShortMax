package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidGetInitializationRequestPayload.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload", f = "AndroidGetInitializationRequestPayload.kt", l = {24, 25, 33, 34, 45, 50, 55, 60}, m = "invoke")
/* loaded from: classes7.dex */
public final class AndroidGetInitializationRequestPayload$invoke$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidGetInitializationRequestPayload this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidGetInitializationRequestPayload$invoke$1(AndroidGetInitializationRequestPayload androidGetInitializationRequestPayload, c<? super AndroidGetInitializationRequestPayload$invoke$1> cVar) {
        super(cVar);
        this.this$0 = androidGetInitializationRequestPayload;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(this);
    }
}
