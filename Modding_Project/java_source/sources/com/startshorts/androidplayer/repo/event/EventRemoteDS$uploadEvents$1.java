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
@d(c = "com.startshorts.androidplayer.repo.event.EventRemoteDS", f = "EventRemoteDS.kt", l = {18}, m = "uploadEvents-gIAlu-s")
/* loaded from: classes7.dex */
public final class EventRemoteDS$uploadEvents$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44006h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EventRemoteDS f44007i;

    /* renamed from: j  reason: collision with root package name */
    int f44008j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRemoteDS$uploadEvents$1(EventRemoteDS eventRemoteDS, c<? super EventRemoteDS$uploadEvents$1> cVar) {
        super(cVar);
        this.f44007i = eventRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44006h = obj;
        this.f44008j |= Integer.MIN_VALUE;
        Object b10 = this.f44007i.b(null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
