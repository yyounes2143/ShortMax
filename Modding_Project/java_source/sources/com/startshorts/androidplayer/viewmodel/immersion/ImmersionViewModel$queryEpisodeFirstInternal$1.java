package com.startshorts.androidplayer.viewmodel.immersion;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel", f = "ImmersionViewModel.kt", l = {542}, m = "queryEpisodeFirstInternal")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodeFirstInternal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f48572h;

    /* renamed from: i  reason: collision with root package name */
    Object f48573i;

    /* renamed from: j  reason: collision with root package name */
    int f48574j;

    /* renamed from: k  reason: collision with root package name */
    boolean f48575k;

    /* renamed from: l  reason: collision with root package name */
    boolean f48576l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f48577m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48578n;

    /* renamed from: o  reason: collision with root package name */
    int f48579o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodeFirstInternal$1(ImmersionViewModel immersionViewModel, rs.c<? super ImmersionViewModel$queryEpisodeFirstInternal$1> cVar) {
        super(cVar);
        this.f48578n = immersionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object g02;
        this.f48577m = obj;
        this.f48579o |= Integer.MIN_VALUE;
        g02 = this.f48578n.g0(null, 0, false, null, false, false, this);
        return g02;
    }
}
