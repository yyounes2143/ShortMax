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
/* compiled from: CollectionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS", f = "CollectionRemoteDS.kt", l = {71}, m = "cancelCollections2-0E7RQCE")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$cancelCollections2$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44220h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRemoteDS f44221i;

    /* renamed from: j  reason: collision with root package name */
    int f44222j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$cancelCollections2$1(CollectionRemoteDS collectionRemoteDS, c<? super CollectionRemoteDS$cancelCollections2$1> cVar) {
        super(cVar);
        this.f44221i = collectionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44220h = obj;
        this.f44222j |= Integer.MIN_VALUE;
        Object d10 = this.f44221i.d(null, null, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
