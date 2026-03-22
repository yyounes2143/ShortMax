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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS", f = "CollectionRemoteDS.kt", l = {55}, m = "cancelCollection-yxL6bBk")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$cancelCollection$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44208h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRemoteDS f44209i;

    /* renamed from: j  reason: collision with root package name */
    int f44210j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$cancelCollection$1(CollectionRemoteDS collectionRemoteDS, c<? super CollectionRemoteDS$cancelCollection$1> cVar) {
        super(cVar);
        this.f44209i = collectionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44208h = obj;
        this.f44210j |= Integer.MIN_VALUE;
        Object b10 = this.f44209i.b(null, 0, 0, 0, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
