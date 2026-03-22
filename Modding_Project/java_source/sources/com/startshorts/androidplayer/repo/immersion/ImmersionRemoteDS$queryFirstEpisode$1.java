package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {93}, m = "queryFirstEpisode-BWLJW6A")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryFirstEpisode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44092h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44093i;

    /* renamed from: j  reason: collision with root package name */
    int f44094j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryFirstEpisode$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryFirstEpisode$1> cVar) {
        super(cVar);
        this.f44093i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44092h = obj;
        this.f44094j |= Integer.MIN_VALUE;
        Object d10 = this.f44093i.d(null, null, false, this);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
