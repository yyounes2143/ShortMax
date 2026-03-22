package com.startshorts.androidplayer.adapter.discover;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.adapter.discover.DiscoverCategoryViewPagerItemAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.PlayListDiscoverCategory;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.adapter.discover.DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1", f = "DiscoverCategoryViewPagerItemAdapter.kt", l = {102}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDiscoverCategoryViewPagerItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverCategoryViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,475:1\n125#2,13:476\n*S KotlinDebug\n*F\n+ 1 DiscoverCategoryViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1\n*L\n108#1:476,13\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f37318h;

    /* renamed from: i  reason: collision with root package name */
    int f37319i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DiscoverCategoryViewPagerItemAdapter f37320j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DiscoverCategoryViewPagerItemAdapter.a f37321k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1(DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter, DiscoverCategoryViewPagerItemAdapter.a aVar, rs.c<? super DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1> cVar) {
        super(2, cVar);
        this.f37320j = discoverCategoryViewPagerItemAdapter;
        this.f37321k = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1(this.f37320j, this.f37321k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DiscoverCategory M;
        DiscoverModule discoverModule;
        DiscoverModule discoverModule2;
        String str;
        String str2;
        DiscoverModule discoverModule3;
        DiscoverModule discoverModule4;
        int i10;
        DiscoverCategory discoverCategory;
        Object obj2;
        String id2;
        ResponseException responseException;
        MutableLiveData mutableLiveData;
        DiscoverModule discoverModule5;
        MutableLiveData mutableLiveData2;
        String name;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f37319i;
        String str3 = "";
        if (i11 != 0) {
            if (i11 == 1) {
                discoverCategory = (DiscoverCategory) this.f37318h;
                kotlin.f.b(obj);
                obj2 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            M = this.f37320j.M();
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            discoverModule = this.f37320j.f37291m;
            int showNum = discoverModule.getShowNum();
            discoverModule2 = this.f37320j.f37291m;
            String bannerId = discoverModule2.getBannerId();
            if (bannerId == null) {
                str = "";
            } else {
                str = bannerId;
            }
            if (M == null || (id2 = M.getId()) == null) {
                str2 = "";
            } else {
                str2 = id2;
            }
            discoverModule3 = this.f37320j.f37291m;
            String formatTitleForEvent = discoverModule3.formatTitleForEvent();
            discoverModule4 = this.f37320j.f37291m;
            Integer recommendId = discoverModule4.getRecommendId();
            if (recommendId != null) {
                i10 = recommendId.intValue();
            } else {
                i10 = 0;
            }
            int i12 = i10;
            this.f37318h = M;
            this.f37319i = 1;
            Object m10 = discoverRepo.m(showNum, 1, str, str2, formatTitleForEvent, i12, this);
            if (m10 == f10) {
                return f10;
            }
            discoverCategory = M;
            obj2 = m10;
        }
        DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter = this.f37320j;
        DiscoverCategoryViewPagerItemAdapter.a aVar = this.f37321k;
        if (Result.j(obj2)) {
            List list = (List) obj2;
            discoverModule5 = discoverCategoryViewPagerItemAdapter.f37291m;
            List<PlayListDiscoverCategory> categoryConfigItemVOList = discoverModule5.getCategoryConfigItemVOList();
            if (categoryConfigItemVOList != null) {
                String str4 = (discoverCategory == null || (str4 = discoverCategory.getId()) == null) ? "" : "";
                if (discoverCategory != null && (name = discoverCategory.getName()) != null) {
                    str3 = name;
                }
                categoryConfigItemVOList.add(new PlayListDiscoverCategory(str4, str3, list));
            }
            mutableLiveData2 = discoverCategoryViewPagerItemAdapter.f37296r;
            DiscoverCategory a10 = ((DiscoverCategoryViewPagerItemAdapter.a.b) aVar).a();
            if (list == null) {
                list = new ArrayList();
            }
            jk.o.b(mutableLiveData2, new DiscoverCategoryViewPagerItemAdapter.a.c(a10, list));
        }
        DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter2 = this.f37320j;
        DiscoverCategoryViewPagerItemAdapter.a aVar2 = this.f37321k;
        Throwable g10 = Result.g(obj2);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            } else {
                responseException = null;
            }
            if (responseException != null) {
                mutableLiveData = discoverCategoryViewPagerItemAdapter2.f37296r;
                jk.o.b(mutableLiveData, new DiscoverCategoryViewPagerItemAdapter.a.C0607a(((DiscoverCategoryViewPagerItemAdapter.a.b) aVar2).a(), responseException));
            } else {
                Logger logger = Logger.f41511a;
                logger.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            }
        }
        return Unit.f60915a;
    }
}
