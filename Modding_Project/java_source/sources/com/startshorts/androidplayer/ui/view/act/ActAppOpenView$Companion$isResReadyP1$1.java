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
@d(c = "com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion", f = "ActAppOpenView.kt", l = {67, 74}, m = "isResReadyP1")
/* loaded from: classes7.dex */
public final class ActAppOpenView$Companion$isResReadyP1$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f46977h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f46978i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ActAppOpenView.Companion f46979j;

    /* renamed from: k  reason: collision with root package name */
    int f46980k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActAppOpenView$Companion$isResReadyP1$1(ActAppOpenView.Companion companion, rs.c<? super ActAppOpenView$Companion$isResReadyP1$1> cVar) {
        super(cVar);
        this.f46979j = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f46978i = obj;
        this.f46980k |= Integer.MIN_VALUE;
        return this.f46979j.d(this);
    }
}
