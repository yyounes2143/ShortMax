package com.startshorts.androidplayer.viewmodel.discover;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.DiscoverTabHomeResult;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel;
import com.startshorts.androidplayer.viewmodel.discover.a;
import com.startshorts.androidplayer.viewmodel.discover.b;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n1863#2,2:263\n*S KotlinDebug\n*F\n+ 1 DiscoverViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel\n*L\n251#1:263,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48463f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<b> f48464e = new MutableLiveData<>();

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(Object obj) {
        if (Result.j(obj)) {
            o.b(this.f48464e, new b.c((DiscoverTabPage) obj));
            DiscoverRepo.f43967a.h();
        }
        Throwable g10 = Result.g(obj);
        if (g10 != null) {
            ResponseException s10 = s(g10);
            x(s10);
            EventManager.f42463a.m0(s10, "discover");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(Object obj) {
        DiscoverTabPage discoverTabPage;
        Integer num;
        DiscoverTabPage tabPageResponse;
        if (Result.j(obj)) {
            DiscoverTabHomeResult discoverTabHomeResult = (DiscoverTabHomeResult) obj;
            ud.a.f68411a.n0(false);
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            List<DiscoverTab> list = null;
            if (discoverTabHomeResult != null) {
                discoverTabPage = discoverTabHomeResult.getTabPageResponse();
            } else {
                discoverTabPage = null;
            }
            discoverRepo.K(discoverTabPage);
            MutableLiveData<b> mutableLiveData = this.f48464e;
            if (discoverTabHomeResult != null && (tabPageResponse = discoverTabHomeResult.getTabPageResponse()) != null) {
                num = tabPageResponse.getTabId();
            } else {
                num = null;
            }
            if (discoverTabHomeResult != null) {
                list = discoverTabHomeResult.getTabResponseList();
            }
            o.b(mutableLiveData, new b.e(num, list));
            discoverRepo.i();
        }
        Throwable g10 = Result.g(obj);
        if (g10 != null) {
            ResponseException s10 = s(g10);
            x(s10);
            EventManager.f42463a.m0(s10, "discover");
        }
    }

    private final boolean I(List<DiscoverModule> list) {
        List<DiscoverModule> list2 = list;
        boolean z10 = true;
        if (list2 != null && !list2.isEmpty()) {
            for (DiscoverModule discoverModule : list) {
                List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
                if (shortPlayResponseList != null && !shortPlayResponseList.isEmpty()) {
                    z10 = false;
                }
            }
        }
        return z10;
    }

    private final void J(int i10) {
        Integer tabId;
        DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
        DiscoverTabPage t10 = discoverRepo.t();
        if (t10 != null && (tabId = t10.getTabId()) != null && tabId.intValue() == i10 && !I(t10.getBannerResponseList())) {
            v("use cache modules");
            o.b(this.f48464e, new b.c(t10));
            discoverRepo.h();
            return;
        }
        BaseViewModel.j(this, "loadModules", false, new DiscoverViewModel$loadModules$1(this, i10, null), new Function1() { // from class: tk.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit K;
                K = DiscoverViewModel.K(DiscoverViewModel.this, (String) obj);
                return K;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K(DiscoverViewModel discoverViewModel, String str) {
        Logger logger = Logger.f41511a;
        logger.e("DiscoverViewModel", "loadModules failed -> " + str);
        if (!Intrinsics.areEqual(str, "Job was cancelled")) {
            discoverViewModel.y(str);
        }
        return Unit.f60915a;
    }

    private final r L(DiscoverModule discoverModule, String str, int i10, int i11, int i12) {
        return BaseViewModel.i(this, "loadMorePageEpisodes", false, new DiscoverViewModel$loadModulesPage$1(discoverModule, str, i10, i11, i12, this, null), 2, null);
    }

    private final void M() {
        Integer tabId;
        DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
        List<DiscoverTab> u10 = discoverRepo.u();
        DiscoverTabPage t10 = discoverRepo.t();
        List<DiscoverTab> list = u10;
        if (list != null && !list.isEmpty()) {
            v("use cache discoverTab");
            if (t10 != null) {
                tabId = t10.getTabId();
            } else {
                tabId = u10.get(0).getTabId();
            }
            ud.a.f68411a.n0(false);
            o.b(this.f48464e, new b.e(tabId, u10));
            discoverRepo.i();
        } else if (discoverRepo.v()) {
            discoverRepo.L(new Function1() { // from class: tk.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit N;
                    N = DiscoverViewModel.N(DiscoverViewModel.this, (Result) obj);
                    return N;
                }
            });
        } else {
            BaseViewModel.j(this, "loadTabs", false, new DiscoverViewModel$loadTabs$2(this, null), new Function1() { // from class: tk.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit O;
                    O = DiscoverViewModel.O(DiscoverViewModel.this, (String) obj);
                    return O;
                }
            }, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(DiscoverViewModel discoverViewModel, Result result) {
        if (!discoverViewModel.q()) {
            discoverViewModel.H(result.n());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(DiscoverViewModel discoverViewModel, String str) {
        Logger logger = Logger.f41511a;
        logger.e("DiscoverViewModel", "loadModules failed -> " + str);
        if (!Intrinsics.areEqual(str, "Job was cancelled")) {
            discoverViewModel.y(str);
        }
        return Unit.f60915a;
    }

    private final void P() {
        if (ud.b.f68412a.F0()) {
            return;
        }
        BaseViewModel.i(this, "logAppOpenDay2", false, new DiscoverViewModel$logAppOpenDay2$1(null), 2, null);
    }

    private final void R(int i10, Function1<? super DiscoverModule, Boolean> function1) {
        BaseViewModel.i(this, "refreshModules", false, new DiscoverViewModel$refreshModules$1(i10, this, function1, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<b> F() {
        return this.f48464e;
    }

    public final void Q(@NotNull com.startshorts.androidplayer.viewmodel.discover.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.C0658a) {
            J(((a.C0658a) intent).a());
        } else if (intent instanceof a.d) {
            P();
        } else if (intent instanceof a.e) {
            a.e eVar = (a.e) intent;
            R(eVar.b(), eVar.a());
        } else if (intent instanceof a.b) {
            a.b bVar = (a.b) intent;
            L(bVar.a(), bVar.c(), bVar.e(), bVar.d(), bVar.b());
        } else if (intent instanceof a.c) {
            e();
            M();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "DiscoverViewModel";
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void x(@NotNull ResponseException throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        o.b(this.f48464e, new b.a(p(throwable)));
    }
}
