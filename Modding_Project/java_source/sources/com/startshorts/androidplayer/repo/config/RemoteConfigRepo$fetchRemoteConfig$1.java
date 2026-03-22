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
@d(c = "com.startshorts.androidplayer.repo.config.RemoteConfigRepo", f = "RemoteConfigRepo.kt", l = {128}, m = "fetchRemoteConfig")
/* loaded from: classes7.dex */
public final class RemoteConfigRepo$fetchRemoteConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43811h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f43812i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RemoteConfigRepo f43813j;

    /* renamed from: k  reason: collision with root package name */
    int f43814k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfigRepo$fetchRemoteConfig$1(RemoteConfigRepo remoteConfigRepo, c<? super RemoteConfigRepo$fetchRemoteConfig$1> cVar) {
        super(cVar);
        this.f43813j = remoteConfigRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43812i = obj;
        this.f43814k |= Integer.MIN_VALUE;
        return this.f43813j.m(null, this);
    }
}
