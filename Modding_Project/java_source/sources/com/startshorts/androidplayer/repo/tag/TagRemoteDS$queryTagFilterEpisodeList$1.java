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
/* compiled from: TagRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.tag.TagRemoteDS", f = "TagRemoteDS.kt", l = {19}, m = "queryTagFilterEpisodeList-yxL6bBk")
/* loaded from: classes7.dex */
public final class TagRemoteDS$queryTagFilterEpisodeList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44623h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ TagRemoteDS f44624i;

    /* renamed from: j  reason: collision with root package name */
    int f44625j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagRemoteDS$queryTagFilterEpisodeList$1(TagRemoteDS tagRemoteDS, c<? super TagRemoteDS$queryTagFilterEpisodeList$1> cVar) {
        super(cVar);
        this.f44624i = tagRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44623h = obj;
        this.f44625j |= Integer.MIN_VALUE;
        Object a10 = this.f44624i.a(null, 0, 0, 0, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
