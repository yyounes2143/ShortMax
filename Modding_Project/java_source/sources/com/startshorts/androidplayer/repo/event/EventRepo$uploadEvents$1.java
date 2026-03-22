package com.startshorts.androidplayer.repo.event;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.event.EventRepo", f = "EventRepo.kt", l = {23, 27}, m = "uploadEvents")
/* loaded from: classes7.dex */
public final class EventRepo$uploadEvents$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44014h;

    /* renamed from: i  reason: collision with root package name */
    Object f44015i;

    /* renamed from: j  reason: collision with root package name */
    Object f44016j;

    /* renamed from: k  reason: collision with root package name */
    Object f44017k;

    /* renamed from: l  reason: collision with root package name */
    Object f44018l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f44019m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ EventRepo f44020n;

    /* renamed from: o  reason: collision with root package name */
    int f44021o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRepo$uploadEvents$1(EventRepo eventRepo, c<? super EventRepo$uploadEvents$1> cVar) {
        super(cVar);
        this.f44020n = eventRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44019m = obj;
        this.f44021o |= Integer.MIN_VALUE;
        return this.f44020n.c(null, null, null, null, null, this);
    }
}
