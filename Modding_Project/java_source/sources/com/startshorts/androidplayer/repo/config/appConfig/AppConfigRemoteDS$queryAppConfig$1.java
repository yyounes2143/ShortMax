package com.startshorts.androidplayer.repo.config.appConfig;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppConfigRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.AppConfigRemoteDS", f = "AppConfigRemoteDS.kt", l = {11}, m = "queryAppConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class AppConfigRemoteDS$queryAppConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43816h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AppConfigRemoteDS f43817i;

    /* renamed from: j  reason: collision with root package name */
    int f43818j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigRemoteDS$queryAppConfig$1(AppConfigRemoteDS appConfigRemoteDS, c<? super AppConfigRemoteDS$queryAppConfig$1> cVar) {
        super(cVar);
        this.f43817i = appConfigRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43816h = obj;
        this.f43818j |= Integer.MIN_VALUE;
        Object a10 = this.f43817i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
