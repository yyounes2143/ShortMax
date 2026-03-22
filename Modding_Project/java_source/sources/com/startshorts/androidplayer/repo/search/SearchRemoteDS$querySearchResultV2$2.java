package com.startshorts.androidplayer.repo.search;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.search.SearchResult;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResultV2$2", f = "SearchRemoteDS.kt", l = {27}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SearchRemoteDS$querySearchResultV2$2 extends SuspendLambda implements Function1<c<? super ServerResult<SearchResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44569h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44570i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44571j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f44572k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ List<Integer> f44573l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ List<String> f44574m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchRemoteDS$querySearchResultV2$2(int i10, int i11, String str, List<Integer> list, List<String> list2, c<? super SearchRemoteDS$querySearchResultV2$2> cVar) {
        super(1, cVar);
        this.f44570i = i10;
        this.f44571j = i11;
        this.f44572k = str;
        this.f44573l = list;
        this.f44574m = list2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new SearchRemoteDS$querySearchResultV2$2(this.f44570i, this.f44571j, this.f44572k, this.f44573l, this.f44574m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44569h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44570i;
            int i12 = this.f44571j;
            String str = this.f44572k;
            String d10 = l.d(this.f44573l);
            String d11 = l.d(this.f44574m);
            this.f44569h = 1;
            obj = j10.N(i11, i12, str, d10, d11, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<SearchResult>> cVar) {
        return ((SearchRemoteDS$querySearchResultV2$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
