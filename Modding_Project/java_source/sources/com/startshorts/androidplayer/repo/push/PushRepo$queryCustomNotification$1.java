package com.startshorts.androidplayer.repo.push;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo", f = "PushRepo.kt", l = {211, 213}, m = "queryCustomNotification")
/* loaded from: classes7.dex */
public final class PushRepo$queryCustomNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44402h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f44403i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ PushRepo f44404j;

    /* renamed from: k  reason: collision with root package name */
    int f44405k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRepo$queryCustomNotification$1(PushRepo pushRepo, c<? super PushRepo$queryCustomNotification$1> cVar) {
        super(cVar);
        this.f44404j = pushRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44403i = obj;
        this.f44405k |= Integer.MIN_VALUE;
        return this.f44404j.v(null, this);
    }
}
