package com.startshorts.androidplayer.ui.view.act;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActBottomFloatView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView", f = "ActBottomFloatView.kt", l = {51}, m = "getBottomFloatActResource")
/* loaded from: classes7.dex */
public final class ActBottomFloatView$getBottomFloatActResource$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f47020h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActBottomFloatView f47021i;

    /* renamed from: j  reason: collision with root package name */
    int f47022j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActBottomFloatView$getBottomFloatActResource$1(ActBottomFloatView actBottomFloatView, rs.c<? super ActBottomFloatView$getBottomFloatActResource$1> cVar) {
        super(cVar);
        this.f47021i = actBottomFloatView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object M;
        this.f47020h = obj;
        this.f47022j |= Integer.MIN_VALUE;
        M = this.f47021i.M(this);
        return M;
    }
}
