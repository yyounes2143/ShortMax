package com.startshorts.androidplayer.manager.configure.ad;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseAdUnitIdConfigure.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure", f = "BaseAdUnitIdConfigure.kt", l = {70}, m = "init$suspendImpl")
/* loaded from: classes6.dex */
public final class BaseAdUnitIdConfigure$init$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42299h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42300i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BaseAdUnitIdConfigure f42301j;

    /* renamed from: k  reason: collision with root package name */
    int f42302k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdUnitIdConfigure$init$1(BaseAdUnitIdConfigure baseAdUnitIdConfigure, rs.c<? super BaseAdUnitIdConfigure$init$1> cVar) {
        super(cVar);
        this.f42301j = baseAdUnitIdConfigure;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42300i = obj;
        this.f42302k |= Integer.MIN_VALUE;
        return BaseAdUnitIdConfigure.j(this.f42301j, null, this);
    }
}
