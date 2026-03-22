package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidInitializeBoldSDK.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK", f = "AndroidInitializeBoldSDK.kt", l = {125, 126, 129}, m = "initializationSuccess")
/* loaded from: classes7.dex */
public final class AndroidInitializeBoldSDK$initializationSuccess$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidInitializeBoldSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidInitializeBoldSDK$initializationSuccess$1(AndroidInitializeBoldSDK androidInitializeBoldSDK, c<? super AndroidInitializeBoldSDK$initializationSuccess$1> cVar) {
        super(cVar);
        this.this$0 = androidInitializeBoldSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object initializationSuccess;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        initializationSuccess = this.this$0.initializationSuccess(null, null, false, this);
        return initializationSuccess;
    }
}
