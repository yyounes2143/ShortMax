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
/* compiled from: ProfileRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.profile.ProfileRemoteDS", f = "ProfileRemoteDS.kt", l = {13}, m = "queryTodayBonusTotal-gIAlu-s")
/* loaded from: classes7.dex */
public final class ProfileRemoteDS$queryTodayBonusTotal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44315h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ProfileRemoteDS f44316i;

    /* renamed from: j  reason: collision with root package name */
    int f44317j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileRemoteDS$queryTodayBonusTotal$1(ProfileRemoteDS profileRemoteDS, c<? super ProfileRemoteDS$queryTodayBonusTotal$1> cVar) {
        super(cVar);
        this.f44316i = profileRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44315h = obj;
        this.f44317j |= Integer.MIN_VALUE;
        Object a10 = this.f44316i.a(0, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
