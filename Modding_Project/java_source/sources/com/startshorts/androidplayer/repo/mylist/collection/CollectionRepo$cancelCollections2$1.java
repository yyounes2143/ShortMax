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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo", f = "CollectionRepo.kt", l = {56}, m = "cancelCollections2-0E7RQCE")
/* loaded from: classes7.dex */
public final class CollectionRepo$cancelCollections2$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44257h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRepo f44258i;

    /* renamed from: j  reason: collision with root package name */
    int f44259j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRepo$cancelCollections2$1(CollectionRepo collectionRepo, c<? super CollectionRepo$cancelCollections2$1> cVar) {
        super(cVar);
        this.f44258i = collectionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44257h = obj;
        this.f44259j |= Integer.MIN_VALUE;
        Object e10 = this.f44258i.e(null, null, this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
