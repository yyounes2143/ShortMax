package com.startshorts.androidplayer.repo.p004switch;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SwitchRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.switch.SwitchRemoteDS", f = "SwitchRemoteDS.kt", l = {13}, m = "querySwitchInfoList-IoAF18A")
/* renamed from: com.startshorts.androidplayer.repo.switch.SwitchRemoteDS$querySwitchInfoList$1  reason: invalid package */
/* loaded from: classes7.dex */
public final class SwitchRemoteDS$querySwitchInfoList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44614h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SwitchRemoteDS f44615i;

    /* renamed from: j  reason: collision with root package name */
    int f44616j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchRemoteDS$querySwitchInfoList$1(SwitchRemoteDS switchRemoteDS, c<? super SwitchRemoteDS$querySwitchInfoList$1> cVar) {
        super(cVar);
        this.f44615i = switchRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44614h = obj;
        this.f44616j |= Integer.MIN_VALUE;
        Object a10 = this.f44615i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
