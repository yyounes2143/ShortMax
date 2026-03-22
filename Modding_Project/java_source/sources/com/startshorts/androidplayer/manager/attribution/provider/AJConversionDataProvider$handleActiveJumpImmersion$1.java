package com.startshorts.androidplayer.manager.attribution.provider;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AJConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider", f = "AJConversionDataProvider.kt", l = {306, 314}, m = "handleActiveJumpImmersion")
/* loaded from: classes6.dex */
public final class AJConversionDataProvider$handleActiveJumpImmersion$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41985h;

    /* renamed from: i  reason: collision with root package name */
    Object f41986i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41987j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ AJConversionDataProvider f41988k;

    /* renamed from: l  reason: collision with root package name */
    int f41989l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AJConversionDataProvider$handleActiveJumpImmersion$1(AJConversionDataProvider aJConversionDataProvider, rs.c<? super AJConversionDataProvider$handleActiveJumpImmersion$1> cVar) {
        super(cVar);
        this.f41988k = aJConversionDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object J;
        this.f41987j = obj;
        this.f41989l |= Integer.MIN_VALUE;
        J = this.f41988k.J(null, this);
        return J;
    }
}
