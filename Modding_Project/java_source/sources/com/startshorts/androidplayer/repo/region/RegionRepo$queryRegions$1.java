package com.startshorts.androidplayer.repo.region;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegionRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.region.RegionRepo", f = "RegionRepo.kt", l = {13}, m = "queryRegions-IoAF18A")
/* loaded from: classes7.dex */
public final class RegionRepo$queryRegions$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44447h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RegionRepo f44448i;

    /* renamed from: j  reason: collision with root package name */
    int f44449j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegionRepo$queryRegions$1(RegionRepo regionRepo, c<? super RegionRepo$queryRegions$1> cVar) {
        super(cVar);
        this.f44448i = regionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44447h = obj;
        this.f44449j |= Integer.MIN_VALUE;
        Object a10 = this.f44448i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
