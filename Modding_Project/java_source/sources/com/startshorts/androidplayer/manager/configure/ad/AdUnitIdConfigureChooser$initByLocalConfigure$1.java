package com.startshorts.androidplayer.manager.configure.ad;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdUnitIdConfigureChooser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser", f = "AdUnitIdConfigureChooser.kt", l = {48}, m = "initByLocalConfigure")
/* loaded from: classes6.dex */
public final class AdUnitIdConfigureChooser$initByLocalConfigure$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42282h;

    /* renamed from: i  reason: collision with root package name */
    Object f42283i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f42284j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ AdUnitIdConfigureChooser f42285k;

    /* renamed from: l  reason: collision with root package name */
    int f42286l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdUnitIdConfigureChooser$initByLocalConfigure$1(AdUnitIdConfigureChooser adUnitIdConfigureChooser, rs.c<? super AdUnitIdConfigureChooser$initByLocalConfigure$1> cVar) {
        super(cVar);
        this.f42285k = adUnitIdConfigureChooser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42284j = obj;
        this.f42286l |= Integer.MIN_VALUE;
        return this.f42285k.d(null, this);
    }
}
