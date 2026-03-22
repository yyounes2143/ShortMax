package com.startshorts.androidplayer.manager.push;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushHelper.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.PushHelper", f = "PushHelper.kt", l = {26}, m = "queryFCMToken-IoAF18A")
/* loaded from: classes6.dex */
public final class PushHelper$queryFCMToken$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42835h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushHelper f42836i;

    /* renamed from: j  reason: collision with root package name */
    int f42837j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushHelper$queryFCMToken$1(PushHelper pushHelper, c<? super PushHelper$queryFCMToken$1> cVar) {
        super(cVar);
        this.f42836i = pushHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42835h = obj;
        this.f42837j |= Integer.MIN_VALUE;
        Object a10 = this.f42836i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
