package com.startshorts.androidplayer.repo.config.appConfig;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfig.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig", f = "RemoteConfig.kt", l = {59}, m = "loadLocalCache")
/* loaded from: classes7.dex */
public final class RemoteConfig$loadLocalCache$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43845h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f43846i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RemoteConfig f43847j;

    /* renamed from: k  reason: collision with root package name */
    int f43848k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfig$loadLocalCache$1(RemoteConfig remoteConfig, c<? super RemoteConfig$loadLocalCache$1> cVar) {
        super(cVar);
        this.f43847j = remoteConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object i10;
        this.f43846i = obj;
        this.f43848k |= Integer.MIN_VALUE;
        i10 = this.f43847j.i(this);
        return i10;
    }
}
