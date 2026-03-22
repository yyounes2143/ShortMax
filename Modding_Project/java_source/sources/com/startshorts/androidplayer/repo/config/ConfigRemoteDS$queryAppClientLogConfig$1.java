package com.startshorts.androidplayer.repo.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.ConfigRemoteDS", f = "ConfigRemoteDS.kt", l = {32}, m = "queryAppClientLogConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class ConfigRemoteDS$queryAppClientLogConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43759h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ConfigRemoteDS f43760i;

    /* renamed from: j  reason: collision with root package name */
    int f43761j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigRemoteDS$queryAppClientLogConfig$1(ConfigRemoteDS configRemoteDS, c<? super ConfigRemoteDS$queryAppClientLogConfig$1> cVar) {
        super(cVar);
        this.f43760i = configRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43759h = obj;
        this.f43761j |= Integer.MIN_VALUE;
        Object a10 = this.f43760i.a(this);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
