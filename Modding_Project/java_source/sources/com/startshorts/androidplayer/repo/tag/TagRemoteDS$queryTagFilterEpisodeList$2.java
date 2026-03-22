package com.startshorts.androidplayer.repo.tag;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.tag.TagFilterShortsListResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TagRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.tag.TagRemoteDS$queryTagFilterEpisodeList$2", f = "TagRemoteDS.kt", l = {20}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class TagRemoteDS$queryTagFilterEpisodeList$2 extends SuspendLambda implements Function1<c<? super ServerResult<TagFilterShortsListResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44626h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44627i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44628j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Long f44629k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f44630l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagRemoteDS$queryTagFilterEpisodeList$2(int i10, int i11, Long l10, int i12, c<? super TagRemoteDS$queryTagFilterEpisodeList$2> cVar) {
        super(1, cVar);
        this.f44627i = i10;
        this.f44628j = i11;
        this.f44629k = l10;
        this.f44630l = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new TagRemoteDS$queryTagFilterEpisodeList$2(this.f44627i, this.f44628j, this.f44629k, this.f44630l, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44626h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44627i;
            int i12 = this.f44628j;
            Long l10 = this.f44629k;
            int i13 = this.f44630l;
            this.f44626h = 1;
            obj = j10.f0(i11, i12, l10, i13, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<TagFilterShortsListResult>> cVar) {
        return ((TagRemoteDS$queryTagFilterEpisodeList$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
