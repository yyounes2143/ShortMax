package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SessionFirelogPublisher.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl", f = "SessionFirelogPublisher.kt", l = {98, 104}, m = "shouldLogSession")
/* loaded from: classes5.dex */
public final class SessionFirelogPublisherImpl$shouldLogSession$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f21521h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f21522i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SessionFirelogPublisherImpl f21523j;

    /* renamed from: k  reason: collision with root package name */
    int f21524k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionFirelogPublisherImpl$shouldLogSession$1(SessionFirelogPublisherImpl sessionFirelogPublisherImpl, rs.c<? super SessionFirelogPublisherImpl$shouldLogSession$1> cVar) {
        super(cVar);
        this.f21523j = sessionFirelogPublisherImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object i10;
        this.f21522i = obj;
        this.f21524k |= Integer.MIN_VALUE;
        i10 = this.f21523j.i(this);
        return i10;
    }
}
