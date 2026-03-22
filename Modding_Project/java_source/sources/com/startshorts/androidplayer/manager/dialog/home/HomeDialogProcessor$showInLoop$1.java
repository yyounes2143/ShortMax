package com.startshorts.androidplayer.manager.dialog.home;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HomeDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor", f = "HomeDialogProcessor.kt", l = {103}, m = "showInLoop")
/* loaded from: classes6.dex */
public final class HomeDialogProcessor$showInLoop$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42371h;

    /* renamed from: i  reason: collision with root package name */
    Object f42372i;

    /* renamed from: j  reason: collision with root package name */
    Object f42373j;

    /* renamed from: k  reason: collision with root package name */
    int f42374k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f42375l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ HomeDialogProcessor f42376m;

    /* renamed from: n  reason: collision with root package name */
    int f42377n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeDialogProcessor$showInLoop$1(HomeDialogProcessor homeDialogProcessor, rs.c<? super HomeDialogProcessor$showInLoop$1> cVar) {
        super(cVar);
        this.f42376m = homeDialogProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object j10;
        this.f42375l = obj;
        this.f42377n |= Integer.MIN_VALUE;
        j10 = this.f42376m.j(null, 0, this);
        return j10;
    }
}
