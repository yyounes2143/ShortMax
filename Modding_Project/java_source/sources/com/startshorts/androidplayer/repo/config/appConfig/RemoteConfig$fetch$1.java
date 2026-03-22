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
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig", f = "RemoteConfig.kt", l = {123, 90, 99}, m = "fetch")
/* loaded from: classes7.dex */
public final class RemoteConfig$fetch$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43831h;

    /* renamed from: i  reason: collision with root package name */
    Object f43832i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f43833j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RemoteConfig f43834k;

    /* renamed from: l  reason: collision with root package name */
    int f43835l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfig$fetch$1(RemoteConfig remoteConfig, c<? super RemoteConfig$fetch$1> cVar) {
        super(cVar);
        this.f43834k = remoteConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10;
        this.f43833j = obj;
        this.f43835l |= Integer.MIN_VALUE;
        f10 = this.f43834k.f(this);
        return f10;
    }
}
