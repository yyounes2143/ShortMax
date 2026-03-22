package com.startshorts.androidplayer.repo.profile;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProfileRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.profile.ProfileRepo", f = "ProfileRepo.kt", l = {21}, m = "queryTodayBonusTotal-gIAlu-s")
/* loaded from: classes7.dex */
public final class ProfileRepo$queryTodayBonusTotal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44323h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ProfileRepo f44324i;

    /* renamed from: j  reason: collision with root package name */
    int f44325j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileRepo$queryTodayBonusTotal$1(ProfileRepo profileRepo, c<? super ProfileRepo$queryTodayBonusTotal$1> cVar) {
        super(cVar);
        this.f44324i = profileRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44323h = obj;
        this.f44325j |= Integer.MIN_VALUE;
        Object h10 = this.f44324i.h(0, this);
        if (h10 == a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
