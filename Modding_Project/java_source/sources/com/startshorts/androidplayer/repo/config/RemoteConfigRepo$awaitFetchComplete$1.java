package com.startshorts.androidplayer.repo.config;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfigRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.RemoteConfigRepo", f = "RemoteConfigRepo.kt", l = {176}, m = "awaitFetchComplete")
/* loaded from: classes7.dex */
public final class RemoteConfigRepo$awaitFetchComplete$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43803h;

    /* renamed from: i  reason: collision with root package name */
    Object f43804i;

    /* renamed from: j  reason: collision with root package name */
    Object f43805j;

    /* renamed from: k  reason: collision with root package name */
    Object f43806k;

    /* renamed from: l  reason: collision with root package name */
    Object f43807l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f43808m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ RemoteConfigRepo f43809n;

    /* renamed from: o  reason: collision with root package name */
    int f43810o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfigRepo$awaitFetchComplete$1(RemoteConfigRepo remoteConfigRepo, c<? super RemoteConfigRepo$awaitFetchComplete$1> cVar) {
        super(cVar);
        this.f43809n = remoteConfigRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object j10;
        this.f43808m = obj;
        this.f43810o |= Integer.MIN_VALUE;
        j10 = this.f43809n.j(null, this);
        return j10;
    }
}
