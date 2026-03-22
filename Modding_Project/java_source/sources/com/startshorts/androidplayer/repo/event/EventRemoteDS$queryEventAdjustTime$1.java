package com.startshorts.androidplayer.repo.event;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.event.EventRemoteDS", f = "EventRemoteDS.kt", l = {25}, m = "queryEventAdjustTime-IoAF18A")
/* loaded from: classes7.dex */
public final class EventRemoteDS$queryEventAdjustTime$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44002h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EventRemoteDS f44003i;

    /* renamed from: j  reason: collision with root package name */
    int f44004j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRemoteDS$queryEventAdjustTime$1(EventRemoteDS eventRemoteDS, c<? super EventRemoteDS$queryEventAdjustTime$1> cVar) {
        super(cVar);
        this.f44003i = eventRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44002h = obj;
        this.f44004j |= Integer.MIN_VALUE;
        Object a10 = this.f44003i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
