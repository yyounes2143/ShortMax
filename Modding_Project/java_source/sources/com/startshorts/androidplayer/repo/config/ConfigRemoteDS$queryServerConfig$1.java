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
@d(c = "com.startshorts.androidplayer.repo.config.ConfigRemoteDS", f = "ConfigRemoteDS.kt", l = {25}, m = "queryServerConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class ConfigRemoteDS$queryServerConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43767h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ConfigRemoteDS f43768i;

    /* renamed from: j  reason: collision with root package name */
    int f43769j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigRemoteDS$queryServerConfig$1(ConfigRemoteDS configRemoteDS, c<? super ConfigRemoteDS$queryServerConfig$1> cVar) {
        super(cVar);
        this.f43768i = configRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43767h = obj;
        this.f43769j |= Integer.MIN_VALUE;
        Object c10 = this.f43768i.c(this);
        if (c10 == kotlin.coroutines.intrinsics.a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
