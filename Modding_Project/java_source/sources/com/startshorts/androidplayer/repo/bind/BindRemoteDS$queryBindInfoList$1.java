package com.startshorts.androidplayer.repo.bind;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BindRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.bind.BindRemoteDS", f = "BindRemoteDS.kt", l = {16}, m = "queryBindInfoList-IoAF18A")
/* loaded from: classes7.dex */
public final class BindRemoteDS$queryBindInfoList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43568h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BindRemoteDS f43569i;

    /* renamed from: j  reason: collision with root package name */
    int f43570j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BindRemoteDS$queryBindInfoList$1(BindRemoteDS bindRemoteDS, c<? super BindRemoteDS$queryBindInfoList$1> cVar) {
        super(cVar);
        this.f43569i = bindRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43568h = obj;
        this.f43570j |= Integer.MIN_VALUE;
        Object a10 = this.f43569i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
