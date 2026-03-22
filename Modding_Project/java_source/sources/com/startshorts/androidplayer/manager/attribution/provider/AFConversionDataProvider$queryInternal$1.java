package com.startshorts.androidplayer.manager.attribution.provider;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AFConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider", f = "AFConversionDataProvider.kt", l = {122}, m = "queryInternal")
/* loaded from: classes6.dex */
public final class AFConversionDataProvider$queryInternal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41964h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f41965i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AFConversionDataProvider f41966j;

    /* renamed from: k  reason: collision with root package name */
    int f41967k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFConversionDataProvider$queryInternal$1(AFConversionDataProvider aFConversionDataProvider, rs.c<? super AFConversionDataProvider$queryInternal$1> cVar) {
        super(cVar);
        this.f41966j = aFConversionDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41965i = obj;
        this.f41967k |= Integer.MIN_VALUE;
        return this.f41966j.l(null, this);
    }
}
