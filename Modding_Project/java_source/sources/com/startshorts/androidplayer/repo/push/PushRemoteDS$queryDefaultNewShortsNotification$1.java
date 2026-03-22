package com.startshorts.androidplayer.repo.push;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRemoteDS", f = "PushRemoteDS.kt", l = {23}, m = "queryDefaultNewShortsNotification-gIAlu-s")
/* loaded from: classes7.dex */
public final class PushRemoteDS$queryDefaultNewShortsNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44338h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRemoteDS f44339i;

    /* renamed from: j  reason: collision with root package name */
    int f44340j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRemoteDS$queryDefaultNewShortsNotification$1(PushRemoteDS pushRemoteDS, c<? super PushRemoteDS$queryDefaultNewShortsNotification$1> cVar) {
        super(cVar);
        this.f44339i = pushRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44338h = obj;
        this.f44340j |= Integer.MIN_VALUE;
        Object d10 = this.f44339i.d(0, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
