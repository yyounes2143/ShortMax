package com.startshorts.androidplayer.manager.dialog.home;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdateDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.UpdateDialogProcessor", f = "UpdateDialogProcessor.kt", l = {22}, m = "process")
/* loaded from: classes6.dex */
public final class UpdateDialogProcessor$process$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42415h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UpdateDialogProcessor f42416i;

    /* renamed from: j  reason: collision with root package name */
    int f42417j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateDialogProcessor$process$1(UpdateDialogProcessor updateDialogProcessor, rs.c<? super UpdateDialogProcessor$process$1> cVar) {
        super(cVar);
        this.f42416i = updateDialogProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42415h = obj;
        this.f42417j |= Integer.MIN_VALUE;
        return this.f42416i.b(null, null, this);
    }
}
