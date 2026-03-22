package com.startshorts.androidplayer.viewmodel.immersion;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel", f = "ImmersionViewModel.kt", l = {506, 508}, m = "queryEpisodesForNextShortsIfNormal")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f48626h;

    /* renamed from: i  reason: collision with root package name */
    boolean f48627i;

    /* renamed from: j  reason: collision with root package name */
    boolean f48628j;

    /* renamed from: k  reason: collision with root package name */
    int f48629k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f48630l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48631m;

    /* renamed from: n  reason: collision with root package name */
    int f48632n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1(ImmersionViewModel immersionViewModel, rs.c<? super ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1> cVar) {
        super(cVar);
        this.f48631m = immersionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object r02;
        this.f48630l = obj;
        this.f48632n |= Integer.MIN_VALUE;
        r02 = this.f48631m.r0(false, 0, false, this);
        return r02;
    }
}
