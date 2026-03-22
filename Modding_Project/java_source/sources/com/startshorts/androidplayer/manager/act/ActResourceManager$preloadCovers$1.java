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
@d(c = "com.startshorts.androidplayer.manager.act.ActResourceManager", f = "ActResourceManager.kt", l = {101, 106, 109, 112, 116}, m = "preloadCovers")
/* loaded from: classes6.dex */
public final class ActResourceManager$preloadCovers$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41586h;

    /* renamed from: i  reason: collision with root package name */
    Object f41587i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41588j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ActResourceManager f41589k;

    /* renamed from: l  reason: collision with root package name */
    int f41590l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActResourceManager$preloadCovers$1(ActResourceManager actResourceManager, c<? super ActResourceManager$preloadCovers$1> cVar) {
        super(cVar);
        this.f41589k = actResourceManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41588j = obj;
        this.f41590l |= Integer.MIN_VALUE;
        return this.f41589k.u(this);
    }
}
