package com.startshorts.androidplayer.manager.dialog.home;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MergeTouristDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor", f = "MergeTouristDialogProcessor.kt", l = {22}, m = "process")
/* loaded from: classes6.dex */
public final class MergeTouristDialogProcessor$process$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42391h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MergeTouristDialogProcessor f42392i;

    /* renamed from: j  reason: collision with root package name */
    int f42393j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MergeTouristDialogProcessor$process$1(MergeTouristDialogProcessor mergeTouristDialogProcessor, rs.c<? super MergeTouristDialogProcessor$process$1> cVar) {
        super(cVar);
        this.f42392i = mergeTouristDialogProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42391h = obj;
        this.f42393j |= Integer.MIN_VALUE;
        return this.f42392i.b(null, null, this);
    }
}
