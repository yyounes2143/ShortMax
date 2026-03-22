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
@d(c = "com.startshorts.androidplayer.db.repository.EventRepository", f = "EventRepository.kt", l = {143}, m = "safeSaveEvent")
/* loaded from: classes6.dex */
public final class EventRepository$safeSaveEvent$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41484h;

    /* renamed from: i  reason: collision with root package name */
    Object f41485i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41486j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ EventRepository f41487k;

    /* renamed from: l  reason: collision with root package name */
    int f41488l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRepository$safeSaveEvent$1(EventRepository eventRepository, c<? super EventRepository$safeSaveEvent$1> cVar) {
        super(cVar);
        this.f41487k = eventRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object U;
        this.f41486j = obj;
        this.f41488l |= Integer.MIN_VALUE;
        U = this.f41487k.U(null, this);
        return U;
    }
}
