package com.unity3d.ads.core.domain.om;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidOmFinishSession.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.om.AndroidOmFinishSession", f = "AndroidOmFinishSession.kt", l = {17}, m = "invoke")
/* loaded from: classes7.dex */
public final class AndroidOmFinishSession$invoke$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidOmFinishSession this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidOmFinishSession$invoke$1(AndroidOmFinishSession androidOmFinishSession, c<? super AndroidOmFinishSession$invoke$1> cVar) {
        super(cVar);
        this.this$0 = androidOmFinishSession;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, this);
    }
}
