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
@d(c = "com.startshorts.androidplayer.db.repository.EventRepository", f = "EventRepository.kt", l = {151}, m = "safeSaveEvents")
/* loaded from: classes6.dex */
public final class EventRepository$safeSaveEvents$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41489h;

    /* renamed from: i  reason: collision with root package name */
    Object f41490i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41491j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ EventRepository f41492k;

    /* renamed from: l  reason: collision with root package name */
    int f41493l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRepository$safeSaveEvents$1(EventRepository eventRepository, c<? super EventRepository$safeSaveEvents$1> cVar) {
        super(cVar);
        this.f41492k = eventRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object V;
        this.f41491j = obj;
        this.f41493l |= Integer.MIN_VALUE;
        V = this.f41492k.V(null, this);
        return V;
    }
}
