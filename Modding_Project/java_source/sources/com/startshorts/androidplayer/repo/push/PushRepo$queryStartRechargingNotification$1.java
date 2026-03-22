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
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo", f = "PushRepo.kt", l = {244, 248}, m = "queryStartRechargingNotification")
/* loaded from: classes7.dex */
public final class PushRepo$queryStartRechargingNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44420h;

    /* renamed from: i  reason: collision with root package name */
    Object f44421i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f44422j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ PushRepo f44423k;

    /* renamed from: l  reason: collision with root package name */
    int f44424l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRepo$queryStartRechargingNotification$1(PushRepo pushRepo, c<? super PushRepo$queryStartRechargingNotification$1> cVar) {
        super(cVar);
        this.f44423k = pushRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44422j = obj;
        this.f44424l |= Integer.MIN_VALUE;
        return this.f44423k.A(this);
    }
}
