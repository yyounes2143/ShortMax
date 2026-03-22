package com.startshorts.androidplayer.manager.act;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActEntranceManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.act.ActEntranceManager", f = "ActEntranceManager.kt", l = {71, 76, 91, 104}, m = "showHomePopInCoroutine")
/* loaded from: classes6.dex */
public final class ActEntranceManager$showHomePopInCoroutine$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41568h;

    /* renamed from: i  reason: collision with root package name */
    Object f41569i;

    /* renamed from: j  reason: collision with root package name */
    Object f41570j;

    /* renamed from: k  reason: collision with root package name */
    Object f41571k;

    /* renamed from: l  reason: collision with root package name */
    Object f41572l;

    /* renamed from: m  reason: collision with root package name */
    Object f41573m;

    /* renamed from: n  reason: collision with root package name */
    /* synthetic */ Object f41574n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ ActEntranceManager f41575o;

    /* renamed from: p  reason: collision with root package name */
    int f41576p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActEntranceManager$showHomePopInCoroutine$1(ActEntranceManager actEntranceManager, c<? super ActEntranceManager$showHomePopInCoroutine$1> cVar) {
        super(cVar);
        this.f41575o = actEntranceManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41574n = obj;
        this.f41576p |= Integer.MIN_VALUE;
        return this.f41575o.m(null, null, this);
    }
}
