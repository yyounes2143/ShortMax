package com.startshorts.androidplayer.manager.attribution.provider;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ClipboardProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider", f = "ClipboardProvider.kt", l = {61, 35}, m = "queryInternal")
/* loaded from: classes6.dex */
public final class ClipboardProvider$queryInternal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42019h;

    /* renamed from: i  reason: collision with root package name */
    Object f42020i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f42021j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ClipboardProvider f42022k;

    /* renamed from: l  reason: collision with root package name */
    int f42023l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipboardProvider$queryInternal$1(ClipboardProvider clipboardProvider, rs.c<? super ClipboardProvider$queryInternal$1> cVar) {
        super(cVar);
        this.f42022k = clipboardProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42021j = obj;
        this.f42023l |= Integer.MIN_VALUE;
        return this.f42022k.l(null, this);
    }
}
