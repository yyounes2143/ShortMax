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
/* compiled from: SwitchRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.switch.SwitchRepo", f = "SwitchRepo.kt", l = {10}, m = "querySwitchInfoList-IoAF18A")
/* renamed from: com.startshorts.androidplayer.repo.switch.SwitchRepo$querySwitchInfoList$1  reason: invalid package */
/* loaded from: classes7.dex */
public final class SwitchRepo$querySwitchInfoList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44620h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SwitchRepo f44621i;

    /* renamed from: j  reason: collision with root package name */
    int f44622j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchRepo$querySwitchInfoList$1(SwitchRepo switchRepo, c<? super SwitchRepo$querySwitchInfoList$1> cVar) {
        super(cVar);
        this.f44621i = switchRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44620h = obj;
        this.f44622j |= Integer.MIN_VALUE;
        Object d10 = this.f44621i.d(this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
