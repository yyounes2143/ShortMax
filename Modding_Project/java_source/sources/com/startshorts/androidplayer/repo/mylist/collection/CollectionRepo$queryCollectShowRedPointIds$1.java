package com.startshorts.androidplayer.repo.mylist.collection;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo", f = "CollectionRepo.kt", l = {60}, m = "queryCollectShowRedPointIds-IoAF18A")
/* loaded from: classes7.dex */
public final class CollectionRepo$queryCollectShowRedPointIds$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44260h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRepo f44261i;

    /* renamed from: j  reason: collision with root package name */
    int f44262j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRepo$queryCollectShowRedPointIds$1(CollectionRepo collectionRepo, c<? super CollectionRepo$queryCollectShowRedPointIds$1> cVar) {
        super(cVar);
        this.f44261i = collectionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44260h = obj;
        this.f44262j |= Integer.MIN_VALUE;
        Object h10 = this.f44261i.h(this);
        if (h10 == a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
