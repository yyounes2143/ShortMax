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
@d(c = "com.startshorts.androidplayer.manager.push.util.PushUtil", f = "PushUtil.kt", l = {471}, m = "pushMissCheckInNotification-gIAlu-s")
/* loaded from: classes6.dex */
public final class PushUtil$pushMissCheckInNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42919h;

    /* renamed from: i  reason: collision with root package name */
    Object f42920i;

    /* renamed from: j  reason: collision with root package name */
    Object f42921j;

    /* renamed from: k  reason: collision with root package name */
    Object f42922k;

    /* renamed from: l  reason: collision with root package name */
    Object f42923l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f42924m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ PushUtil f42925n;

    /* renamed from: o  reason: collision with root package name */
    int f42926o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushUtil$pushMissCheckInNotification$1(PushUtil pushUtil, c<? super PushUtil$pushMissCheckInNotification$1> cVar) {
        super(cVar);
        this.f42925n = pushUtil;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42924m = obj;
        this.f42926o |= Integer.MIN_VALUE;
        Object N = this.f42925n.N(null, this);
        if (N == a.f()) {
            return N;
        }
        return Result.b(N);
    }
}
