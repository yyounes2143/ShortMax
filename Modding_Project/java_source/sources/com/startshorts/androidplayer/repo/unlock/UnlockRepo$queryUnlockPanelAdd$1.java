package com.startshorts.androidplayer.repo.unlock;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo", f = "UnlockRepo.kt", l = {67}, m = "queryUnlockPanelAdd")
/* loaded from: classes7.dex */
public final class UnlockRepo$queryUnlockPanelAdd$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44728h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRepo f44729i;

    /* renamed from: j  reason: collision with root package name */
    int f44730j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$queryUnlockPanelAdd$1(UnlockRepo unlockRepo, c<? super UnlockRepo$queryUnlockPanelAdd$1> cVar) {
        super(cVar);
        this.f44729i = unlockRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44728h = obj;
        this.f44730j |= Integer.MIN_VALUE;
        return this.f44729i.p(null, this);
    }
}
