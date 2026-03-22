package com.startshorts.androidplayer.repo.push;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo", f = "PushRepo.kt", l = {163, 177}, m = "queryRecommendShortsNotification")
/* loaded from: classes7.dex */
public final class PushRepo$queryRecommendShortsNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44414h;

    /* renamed from: i  reason: collision with root package name */
    Object f44415i;

    /* renamed from: j  reason: collision with root package name */
    int f44416j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f44417k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ PushRepo f44418l;

    /* renamed from: m  reason: collision with root package name */
    int f44419m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRepo$queryRecommendShortsNotification$1(PushRepo pushRepo, c<? super PushRepo$queryRecommendShortsNotification$1> cVar) {
        super(cVar);
        this.f44418l = pushRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44417k = obj;
        this.f44419m |= Integer.MIN_VALUE;
        return this.f44418l.z(this);
    }
}
