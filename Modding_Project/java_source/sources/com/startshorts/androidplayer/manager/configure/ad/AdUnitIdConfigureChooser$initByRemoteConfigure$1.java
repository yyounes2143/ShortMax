package com.startshorts.androidplayer.manager.configure.ad;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdUnitIdConfigureChooser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser", f = "AdUnitIdConfigureChooser.kt", l = {55}, m = "initByRemoteConfigure")
/* loaded from: classes6.dex */
public final class AdUnitIdConfigureChooser$initByRemoteConfigure$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42287h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42288i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AdUnitIdConfigureChooser f42289j;

    /* renamed from: k  reason: collision with root package name */
    int f42290k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdUnitIdConfigureChooser$initByRemoteConfigure$1(AdUnitIdConfigureChooser adUnitIdConfigureChooser, rs.c<? super AdUnitIdConfigureChooser$initByRemoteConfigure$1> cVar) {
        super(cVar);
        this.f42289j = adUnitIdConfigureChooser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42288i = obj;
        this.f42290k |= Integer.MIN_VALUE;
        return this.f42289j.b(this);
    }
}
