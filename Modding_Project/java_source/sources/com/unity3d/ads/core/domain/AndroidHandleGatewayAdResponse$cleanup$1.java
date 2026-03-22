package com.unity3d.ads.core.domain;

import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidHandleGatewayAdResponse.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", l = {VideoRef.VALUE_VIDEO_REF_CONST_DEPTH, 242}, m = "cleanup")
/* loaded from: classes7.dex */
public final class AndroidHandleGatewayAdResponse$cleanup$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayAdResponse$cleanup$1(AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, c<? super AndroidHandleGatewayAdResponse$cleanup$1> cVar) {
        super(cVar);
        this.this$0 = androidHandleGatewayAdResponse;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object cleanup;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        cleanup = this.this$0.cleanup(null, null, null, null, this);
        return cleanup;
    }
}
