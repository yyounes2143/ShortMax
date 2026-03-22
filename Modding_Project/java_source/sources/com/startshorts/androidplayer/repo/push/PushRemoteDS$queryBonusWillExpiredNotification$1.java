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
@d(c = "com.startshorts.androidplayer.repo.push.PushRemoteDS", f = "PushRemoteDS.kt", l = {72}, m = "queryBonusWillExpiredNotification-IoAF18A")
/* loaded from: classes7.dex */
public final class PushRemoteDS$queryBonusWillExpiredNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44330h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRemoteDS f44331i;

    /* renamed from: j  reason: collision with root package name */
    int f44332j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRemoteDS$queryBonusWillExpiredNotification$1(PushRemoteDS pushRemoteDS, c<? super PushRemoteDS$queryBonusWillExpiredNotification$1> cVar) {
        super(cVar);
        this.f44331i = pushRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44330h = obj;
        this.f44332j |= Integer.MIN_VALUE;
        Object b10 = this.f44331i.b(this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
