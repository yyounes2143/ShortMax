package com.startshorts.androidplayer.manager.configure.ad;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdSwitchConfigure.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure", f = "AdSwitchConfigure.kt", l = {45}, m = "init")
/* loaded from: classes6.dex */
public final class AdSwitchConfigure$init$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42273h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AdSwitchConfigure f42274i;

    /* renamed from: j  reason: collision with root package name */
    int f42275j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSwitchConfigure$init$1(AdSwitchConfigure adSwitchConfigure, rs.c<? super AdSwitchConfigure$init$1> cVar) {
        super(cVar);
        this.f42274i = adSwitchConfigure;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42273h = obj;
        this.f42275j |= Integer.MIN_VALUE;
        return this.f42274i.a(null, this);
    }
}
