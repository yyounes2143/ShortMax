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
@d(c = "com.startshorts.androidplayer.repo.config.ConfigRemoteDS", f = "ConfigRemoteDS.kt", l = {18}, m = "querySdkConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class ConfigRemoteDS$querySdkConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43763h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ConfigRemoteDS f43764i;

    /* renamed from: j  reason: collision with root package name */
    int f43765j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigRemoteDS$querySdkConfig$1(ConfigRemoteDS configRemoteDS, c<? super ConfigRemoteDS$querySdkConfig$1> cVar) {
        super(cVar);
        this.f43764i = configRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43763h = obj;
        this.f43765j |= Integer.MIN_VALUE;
        Object b10 = this.f43764i.b(this);
        if (b10 == kotlin.coroutines.intrinsics.a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
