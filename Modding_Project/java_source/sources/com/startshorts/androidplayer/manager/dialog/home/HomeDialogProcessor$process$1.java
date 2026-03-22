package com.startshorts.androidplayer.manager.dialog.home;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HomeDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor", f = "HomeDialogProcessor.kt", l = {117, 78}, m = "process")
/* loaded from: classes6.dex */
public final class HomeDialogProcessor$process$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42366h;

    /* renamed from: i  reason: collision with root package name */
    Object f42367i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f42368j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HomeDialogProcessor f42369k;

    /* renamed from: l  reason: collision with root package name */
    int f42370l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeDialogProcessor$process$1(HomeDialogProcessor homeDialogProcessor, rs.c<? super HomeDialogProcessor$process$1> cVar) {
        super(cVar);
        this.f42369k = homeDialogProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42368j = obj;
        this.f42370l |= Integer.MIN_VALUE;
        return this.f42369k.i(null, this);
    }
}
