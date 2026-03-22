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
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo", f = "PushRepo.kt", l = {311, 315, 317}, m = "downloadShortCover")
/* loaded from: classes7.dex */
public final class PushRepo$downloadShortCover$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44393h;

    /* renamed from: i  reason: collision with root package name */
    Object f44394i;

    /* renamed from: j  reason: collision with root package name */
    int f44395j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f44396k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ PushRepo f44397l;

    /* renamed from: m  reason: collision with root package name */
    int f44398m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRepo$downloadShortCover$1(PushRepo pushRepo, c<? super PushRepo$downloadShortCover$1> cVar) {
        super(cVar);
        this.f44397l = pushRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44396k = obj;
        this.f44398m |= Integer.MIN_VALUE;
        return this.f44397l.n(null, this);
    }
}
