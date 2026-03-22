package com.startshorts.androidplayer.manager.dialog.home;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CheckInDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor", f = "CheckInDialogProcessor.kt", l = {35}, m = "process")
/* loaded from: classes6.dex */
public final class CheckInDialogProcessor$process$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42354h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CheckInDialogProcessor f42355i;

    /* renamed from: j  reason: collision with root package name */
    int f42356j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckInDialogProcessor$process$1(CheckInDialogProcessor checkInDialogProcessor, rs.c<? super CheckInDialogProcessor$process$1> cVar) {
        super(cVar);
        this.f42355i = checkInDialogProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42354h = obj;
        this.f42356j |= Integer.MIN_VALUE;
        return this.f42355i.b(null, null, this);
    }
}
