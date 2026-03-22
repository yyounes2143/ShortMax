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
@d(c = "com.startshorts.androidplayer.db.repository.EventRepository", f = "EventRepository.kt", l = {107}, m = "deleteEventList")
/* loaded from: classes6.dex */
public final class EventRepository$deleteEventList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41476h;

    /* renamed from: i  reason: collision with root package name */
    Object f41477i;

    /* renamed from: j  reason: collision with root package name */
    Object f41478j;

    /* renamed from: k  reason: collision with root package name */
    Object f41479k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f41480l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ EventRepository f41481m;

    /* renamed from: n  reason: collision with root package name */
    int f41482n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRepository$deleteEventList$1(EventRepository eventRepository, c<? super EventRepository$deleteEventList$1> cVar) {
        super(cVar);
        this.f41481m = eventRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41480l = obj;
        this.f41482n |= Integer.MIN_VALUE;
        return this.f41481m.C(null, this);
    }
}
