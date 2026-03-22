package com.startshorts.androidplayer.manager.redpoint;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RedPointManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.redpoint.RedPointManager", f = "RedPointManager.kt", l = {84}, m = "updateMyListRedPointShortIdList")
/* loaded from: classes6.dex */
public final class RedPointManager$updateMyListRedPointShortIdList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42939h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RedPointManager f42940i;

    /* renamed from: j  reason: collision with root package name */
    int f42941j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RedPointManager$updateMyListRedPointShortIdList$1(RedPointManager redPointManager, c<? super RedPointManager$updateMyListRedPointShortIdList$1> cVar) {
        super(cVar);
        this.f42940i = redPointManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object e10;
        this.f42939h = obj;
        this.f42941j |= Integer.MIN_VALUE;
        e10 = this.f42940i.e(this);
        return e10;
    }
}
