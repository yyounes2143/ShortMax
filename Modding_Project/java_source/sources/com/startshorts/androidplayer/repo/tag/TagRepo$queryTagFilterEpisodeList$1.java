package com.startshorts.androidplayer.repo.tag;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TagRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.tag.TagRepo", f = "TagRepo.kt", l = {19}, m = "queryTagFilterEpisodeList-yxL6bBk")
/* loaded from: classes7.dex */
public final class TagRepo$queryTagFilterEpisodeList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44634h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ TagRepo f44635i;

    /* renamed from: j  reason: collision with root package name */
    int f44636j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagRepo$queryTagFilterEpisodeList$1(TagRepo tagRepo, c<? super TagRepo$queryTagFilterEpisodeList$1> cVar) {
        super(cVar);
        this.f44635i = tagRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44634h = obj;
        this.f44636j |= Integer.MIN_VALUE;
        Object h10 = this.f44635i.h(null, 0, 0, 0, this);
        if (h10 == a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
