package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharedSessionRepository.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl", f = "SharedSessionRepository.kt", l = {199}, m = "notifySubscribers")
/* loaded from: classes5.dex */
public final class SharedSessionRepositoryImpl$notifySubscribers$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f21554h;

    /* renamed from: i  reason: collision with root package name */
    Object f21555i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f21556j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ SharedSessionRepositoryImpl f21557k;

    /* renamed from: l  reason: collision with root package name */
    int f21558l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedSessionRepositoryImpl$notifySubscribers$1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, rs.c<? super SharedSessionRepositoryImpl$notifySubscribers$1> cVar) {
        super(cVar);
        this.f21557k = sharedSessionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21556j = obj;
        this.f21558l |= Integer.MIN_VALUE;
        return this.f21557k.q(null, null, this);
    }
}
