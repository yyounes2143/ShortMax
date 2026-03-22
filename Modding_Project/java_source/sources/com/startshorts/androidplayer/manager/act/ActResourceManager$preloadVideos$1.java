package com.startshorts.androidplayer.manager.act;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActResourceManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.act.ActResourceManager", f = "ActResourceManager.kt", l = {148}, m = "preloadVideos")
/* loaded from: classes6.dex */
public final class ActResourceManager$preloadVideos$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f41593h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActResourceManager f41594i;

    /* renamed from: j  reason: collision with root package name */
    int f41595j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActResourceManager$preloadVideos$1(ActResourceManager actResourceManager, c<? super ActResourceManager$preloadVideos$1> cVar) {
        super(cVar);
        this.f41594i = actResourceManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object w10;
        this.f41593h = obj;
        this.f41595j |= Integer.MIN_VALUE;
        w10 = this.f41594i.w(this);
        return w10;
    }
}
