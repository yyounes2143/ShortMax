package com.startshorts.androidplayer.ui.view.act;

import com.startshorts.androidplayer.ui.view.act.ActAppOpenView;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActAppOpenView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion", f = "ActAppOpenView.kt", l = {85}, m = "isResReady")
/* loaded from: classes7.dex */
public final class ActAppOpenView$Companion$isResReady$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f46970h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActAppOpenView.Companion f46971i;

    /* renamed from: j  reason: collision with root package name */
    int f46972j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActAppOpenView$Companion$isResReady$1(ActAppOpenView.Companion companion, rs.c<? super ActAppOpenView$Companion$isResReady$1> cVar) {
        super(cVar);
        this.f46971i = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object b10;
        this.f46970h = obj;
        this.f46972j |= Integer.MIN_VALUE;
        b10 = this.f46971i.b(null, this);
        return b10;
    }
}
