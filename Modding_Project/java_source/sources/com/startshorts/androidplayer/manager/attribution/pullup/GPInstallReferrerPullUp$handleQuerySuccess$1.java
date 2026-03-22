package com.startshorts.androidplayer.manager.attribution.pullup;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GPInstallReferrerPullUp.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.pullup.GPInstallReferrerPullUp", f = "GPInstallReferrerPullUp.kt", l = {89}, m = "handleQuerySuccess")
/* loaded from: classes6.dex */
public final class GPInstallReferrerPullUp$handleQuerySuccess$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42093h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ GPInstallReferrerPullUp f42094i;

    /* renamed from: j  reason: collision with root package name */
    int f42095j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GPInstallReferrerPullUp$handleQuerySuccess$1(GPInstallReferrerPullUp gPInstallReferrerPullUp, rs.c<? super GPInstallReferrerPullUp$handleQuerySuccess$1> cVar) {
        super(cVar);
        this.f42094i = gPInstallReferrerPullUp;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object i10;
        this.f42093h = obj;
        this.f42095j |= Integer.MIN_VALUE;
        i10 = this.f42094i.i(null, null, null, null, this);
        return i10;
    }
}
