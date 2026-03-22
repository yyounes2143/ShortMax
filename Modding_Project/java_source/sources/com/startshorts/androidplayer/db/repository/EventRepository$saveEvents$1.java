package com.startshorts.androidplayer.db.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventRepository.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.db.repository.EventRepository", f = "EventRepository.kt", l = {80}, m = "saveEvents")
/* loaded from: classes6.dex */
public final class EventRepository$saveEvents$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41500h;

    /* renamed from: i  reason: collision with root package name */
    Object f41501i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41502j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ EventRepository f41503k;

    /* renamed from: l  reason: collision with root package name */
    int f41504l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRepository$saveEvents$1(EventRepository eventRepository, c<? super EventRepository$saveEvents$1> cVar) {
        super(cVar);
        this.f41503k = eventRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41502j = obj;
        this.f41504l |= Integer.MIN_VALUE;
        return this.f41503k.k0(null, this);
    }
}
