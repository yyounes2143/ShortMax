package com.startshorts.androidplayer.repo.update;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdateRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.update.UpdateRemoteDS", f = "UpdateRemoteDS.kt", l = {13}, m = "fetch-IoAF18A")
/* loaded from: classes7.dex */
public final class UpdateRemoteDS$fetch$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44760h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UpdateRemoteDS f44761i;

    /* renamed from: j  reason: collision with root package name */
    int f44762j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateRemoteDS$fetch$1(UpdateRemoteDS updateRemoteDS, c<? super UpdateRemoteDS$fetch$1> cVar) {
        super(cVar);
        this.f44761i = updateRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44760h = obj;
        this.f44762j |= Integer.MIN_VALUE;
        Object a10 = this.f44761i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
