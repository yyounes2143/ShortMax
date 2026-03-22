package com.startshorts.androidplayer.manager.attribution.provider;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AJConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider", f = "AJConversionDataProvider.kt", l = {136}, m = "queryInternal")
/* loaded from: classes6.dex */
public final class AJConversionDataProvider$queryInternal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42003h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42004i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AJConversionDataProvider f42005j;

    /* renamed from: k  reason: collision with root package name */
    int f42006k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AJConversionDataProvider$queryInternal$1(AJConversionDataProvider aJConversionDataProvider, rs.c<? super AJConversionDataProvider$queryInternal$1> cVar) {
        super(cVar);
        this.f42005j = aJConversionDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42004i = obj;
        this.f42006k |= Integer.MIN_VALUE;
        return this.f42005j.l(null, this);
    }
}
