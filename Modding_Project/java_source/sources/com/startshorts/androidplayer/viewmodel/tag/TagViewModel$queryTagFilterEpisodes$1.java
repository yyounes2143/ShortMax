package com.startshorts.androidplayer.viewmodel.tag;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.tag.TagFilterShortsListResult;
import com.startshorts.androidplayer.repo.tag.TagRepo;
import com.startshorts.androidplayer.viewmodel.tag.b;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: TagFilterViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.tag.TagViewModel$queryTagFilterEpisodes$1", f = "TagFilterViewModel.kt", l = {78}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class TagViewModel$queryTagFilterEpisodes$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49449h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ TagViewModel f49450i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Long f49451j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f49452k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f49453l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f49454m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagViewModel$queryTagFilterEpisodes$1(TagViewModel tagViewModel, Long l10, int i10, int i11, int i12, rs.c<? super TagViewModel$queryTagFilterEpisodes$1> cVar) {
        super(2, cVar);
        this.f49450i = tagViewModel;
        this.f49451j = l10;
        this.f49452k = i10;
        this.f49453l = i11;
        this.f49454m = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new TagViewModel$queryTagFilterEpisodes$1(this.f49450i, this.f49451j, this.f49452k, this.f49453l, this.f49454m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((TagViewModel$queryTagFilterEpisodes$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object h10;
        int i10;
        boolean z10;
        boolean z11;
        List<DiscoverShorts> list;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f49449h;
        boolean z12 = true;
        if (i11 != 0) {
            if (i11 == 1) {
                f.b(obj);
                h10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (this.f49450i.D()) {
                return Unit.f60915a;
            }
            this.f49450i.K(true);
            TagRepo tagRepo = TagRepo.f44631a;
            Long l10 = this.f49451j;
            int i12 = this.f49452k;
            int i13 = this.f49453l;
            int i14 = this.f49454m;
            this.f49449h = 1;
            h10 = tagRepo.h(l10, i12, i13, i14, this);
            if (h10 == f10) {
                return f10;
            }
        }
        TagViewModel tagViewModel = this.f49450i;
        int i15 = this.f49454m;
        int i16 = this.f49453l;
        if (Result.j(h10)) {
            TagFilterShortsListResult tagFilterShortsListResult = (TagFilterShortsListResult) h10;
            tagViewModel.K(false);
            if (tagFilterShortsListResult != null && (list = tagFilterShortsListResult.getList()) != null) {
                i10 = list.size();
            } else {
                i10 = 0;
            }
            MutableLiveData<b> C = tagViewModel.C();
            if (i15 == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (i10 < i16) {
                z11 = true;
            } else {
                z11 = false;
            }
            o.b(C, new b.c(z10, tagFilterShortsListResult, z11));
        }
        TagViewModel tagViewModel2 = this.f49450i;
        int i17 = this.f49454m;
        Throwable g10 = Result.g(h10);
        if (g10 != null) {
            tagViewModel2.K(false);
            ResponseException s10 = tagViewModel2.s(g10);
            tagViewModel2.x(s10);
            if (i17 != 1) {
                z12 = false;
            }
            tagViewModel2.J(z12, s10);
        }
        return Unit.f60915a;
    }
}
