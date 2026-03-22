package com.startshorts.androidplayer.manager.attribution.provider;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GADeeplinkProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider", f = "GADeeplinkProvider.kt", l = {171}, m = "queryInternal")
/* loaded from: classes6.dex */
public final class GADeeplinkProvider$queryInternal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42031h;

    /* renamed from: i  reason: collision with root package name */
    Object f42032i;

    /* renamed from: j  reason: collision with root package name */
    Object f42033j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f42034k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ GADeeplinkProvider f42035l;

    /* renamed from: m  reason: collision with root package name */
    int f42036m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GADeeplinkProvider$queryInternal$1(GADeeplinkProvider gADeeplinkProvider, rs.c<? super GADeeplinkProvider$queryInternal$1> cVar) {
        super(cVar);
        this.f42035l = gADeeplinkProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42034k = obj;
        this.f42036m |= Integer.MIN_VALUE;
        return this.f42035l.l(null, this);
    }
}
