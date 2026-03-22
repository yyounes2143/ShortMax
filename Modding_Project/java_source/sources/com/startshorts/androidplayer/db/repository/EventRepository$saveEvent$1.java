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
@d(c = "com.startshorts.androidplayer.db.repository.EventRepository", f = "EventRepository.kt", l = {70}, m = "saveEvent")
/* loaded from: classes6.dex */
public final class EventRepository$saveEvent$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41494h;

    /* renamed from: i  reason: collision with root package name */
    Object f41495i;

    /* renamed from: j  reason: collision with root package name */
    Object f41496j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f41497k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ EventRepository f41498l;

    /* renamed from: m  reason: collision with root package name */
    int f41499m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRepository$saveEvent$1(EventRepository eventRepository, c<? super EventRepository$saveEvent$1> cVar) {
        super(cVar);
        this.f41498l = eventRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41497k = obj;
        this.f41499m |= Integer.MIN_VALUE;
        return this.f41498l.X(null, this);
    }
}
