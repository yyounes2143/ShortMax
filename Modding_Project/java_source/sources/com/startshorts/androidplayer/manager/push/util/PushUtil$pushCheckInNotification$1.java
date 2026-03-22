package com.startshorts.androidplayer.manager.push.util;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.util.PushUtil", f = "PushUtil.kt", l = {342}, m = "pushCheckInNotification-gIAlu-s")
/* loaded from: classes6.dex */
public final class PushUtil$pushCheckInNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42914h;

    /* renamed from: i  reason: collision with root package name */
    Object f42915i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f42916j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ PushUtil f42917k;

    /* renamed from: l  reason: collision with root package name */
    int f42918l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushUtil$pushCheckInNotification$1(PushUtil pushUtil, c<? super PushUtil$pushCheckInNotification$1> cVar) {
        super(cVar);
        this.f42917k = pushUtil;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42916j = obj;
        this.f42918l |= Integer.MIN_VALUE;
        Object K = this.f42917k.K(null, this);
        if (K == a.f()) {
            return K;
        }
        return Result.b(K);
    }
}
