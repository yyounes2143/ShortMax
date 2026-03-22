package com.startshorts.androidplayer.viewmodel.mylist;

import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.repo.shorts.ShortsRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import jk.z;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CollectionViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCollectionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,298:1\n1863#2:299\n1863#2,2:304\n1864#2:306\n216#3,2:300\n216#3,2:302\n*S KotlinDebug\n*F\n+ 1 CollectionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel\n*L\n247#1:299\n279#1:304,2\n247#1:306\n261#1:300,2\n270#1:302,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CollectionViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f48824g = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private boolean f48825e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final i f48826f = kotlin.c.b(new Function0() { // from class: xk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData N;
            N = CollectionViewModel.N();
            return N;
        }
    });

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r J(Context context, List<Long> list, List<Integer> list2) {
        return BaseViewModel.i(this, "cancelCollections", false, new CollectionViewModel$cancelCollections$1(context, list, this, list2, null), 2, null);
    }

    private final r K(Context context, List<Long> list, List<Integer> list2, CancelCollectBatchRequest cancelCollectBatchRequest) {
        return BaseViewModel.i(this, "cancelCollections2", false, new CollectionViewModel$cancelCollections2$1(context, cancelCollectBatchRequest, this, list2, list, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(ResponseException responseException) {
        this.f48825e = false;
        x(responseException);
        EventManager.f42463a.m0(responseException, "collections");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData N() {
        return new MutableLiveData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(List<Integer> list, boolean z10) {
        Object obj;
        for (Number number : list) {
            int intValue = number.intValue();
            List<ShortsEpisode> f10 = ShortsRepo.f44606a.f();
            if (f10 != null) {
                synchronized (f10) {
                    try {
                        Iterator<T> it = f10.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                obj = it.next();
                                if (((ShortsEpisode) obj).getShortPlayId() == intValue) {
                                    break;
                                }
                            } else {
                                obj = null;
                                break;
                            }
                        }
                        ShortsEpisode shortsEpisode = (ShortsEpisode) obj;
                        if (shortsEpisode != null) {
                            if (z10) {
                                shortsEpisode.setCollected();
                            } else {
                                shortsEpisode.cancelCollected();
                            }
                            Unit unit = Unit.f60915a;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            ConcurrentHashMap<Integer, BaseEpisode> l10 = ShortsRepo.f44606a.l();
            if (l10 != null) {
                for (Map.Entry<Integer, BaseEpisode> entry : l10.entrySet()) {
                    BaseEpisode value = entry.getValue();
                    if (value.getShortPlayId() == intValue) {
                        if (z10) {
                            value.setCollected();
                        } else {
                            value.cancelCollected();
                        }
                    }
                }
            }
            ConcurrentHashMap<Integer, BaseEpisode> n10 = ShortsRepo.f44606a.n();
            if (n10 != null) {
                for (Map.Entry<Integer, BaseEpisode> entry2 : n10.entrySet()) {
                    BaseEpisode value2 = entry2.getValue();
                    if (value2.getShortPlayId() == intValue) {
                        if (z10) {
                            value2.setCollected();
                        } else {
                            value2.cancelCollected();
                        }
                    }
                }
            }
            List<BaseEpisode> j10 = EpisodeRepo.f44056a.j(intValue);
            if (j10 != null) {
                for (BaseEpisode baseEpisode : j10) {
                    if (z10) {
                        baseEpisode.setCollected();
                    } else {
                        baseEpisode.cancelCollected();
                    }
                }
            }
            au.c.d().l(new RefreshShortsCollectEvent(intValue, z10));
        }
    }

    private final void Q(long j10, int i10, int i11, List<Integer> list) {
        if (this.f48825e) {
            return;
        }
        this.f48825e = true;
        BaseViewModel.j(this, "queryCollections", false, new CollectionViewModel$queryCollections$1(j10, i10, i11, list, this, null), new Function1() { // from class: xk.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit R;
                R = CollectionViewModel.R(CollectionViewModel.this, (String) obj);
                return R;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(CollectionViewModel collectionViewModel, String str) {
        collectionViewModel.M(z.a(new Throwable(str)));
        return Unit.f60915a;
    }

    private final void S(long j10, int i10, int i11, List<Integer> list, int i12) {
        if (this.f48825e) {
            return;
        }
        this.f48825e = true;
        BaseViewModel.j(this, "queryCollections", false, new CollectionViewModel$queryCollectionsV2$1(j10, i10, i11, list, i12, this, null), new Function1() { // from class: xk.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit T;
                T = CollectionViewModel.T(CollectionViewModel.this, (String) obj);
                return T;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T(CollectionViewModel collectionViewModel, String str) {
        collectionViewModel.M(z.a(new Throwable(str)));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U() {
        if (ud.b.f68412a.U1()) {
            TurboLinkRepo turboLinkRepo = TurboLinkRepo.f43851a;
            HashMap hashMap = new HashMap();
            hashMap.put("collect", "1");
            Unit unit = Unit.f60915a;
            turboLinkRepo.b("tbo_favorite", hashMap);
        }
    }

    @NotNull
    public final r H(@Nullable Context context, int i10, int i11, int i12, int i13) {
        return BaseViewModel.i(this, "addCollection", false, new CollectionViewModel$addCollection$1(context, i10, i11, i12, i13, this, null), 2, null);
    }

    @NotNull
    public final r I(@Nullable Context context, int i10, int i11, int i12) {
        return BaseViewModel.i(this, "cancelCollection", false, new CollectionViewModel$cancelCollection$1(context, i10, i11, i12, this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<b> L() {
        return (MutableLiveData) this.f48826f.getValue();
    }

    public final void P(@NotNull com.startshorts.androidplayer.viewmodel.mylist.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.f) {
            a.f fVar = (a.f) intent;
            S(fVar.b(), fVar.c(), fVar.e(), fVar.d(), fVar.a());
        } else if (intent instanceof a.e) {
            a.e eVar = (a.e) intent;
            Q(eVar.a(), eVar.b(), eVar.d(), eVar.c());
        } else {
            boolean z10 = intent instanceof a.C0668a;
            String str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            if (z10) {
                a.C0668a c0668a = (a.C0668a) intent;
                H(c0668a.a(), c0668a.e(), c0668a.d(), c0668a.b().getShortPlayId(), c0668a.b().getId());
                EventManager eventManager = EventManager.f42463a;
                Bundle C = eventManager.C(c0668a.b());
                C.putString("type", "1");
                C.putString("scene", c0668a.c());
                if (c0668a.b().isTrailer()) {
                    C.putString("ep_type", "trailer");
                } else {
                    C.putString("ep_type", "positive");
                }
                if (c0668a.f()) {
                    str = "1";
                }
                C.putString("is_auto", str);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "favorite_click", C, 0L, 4, null);
            } else if (intent instanceof a.b) {
                a.b bVar = (a.b) intent;
                I(bVar.a(), bVar.e(), bVar.d(), bVar.b().getShortPlayId());
                EventManager eventManager2 = EventManager.f42463a;
                Bundle C2 = eventManager2.C(bVar.b());
                C2.putString("type", MBridgeConstans.ENDCARD_URL_TYPE_PL);
                C2.putString("scene", bVar.c());
                if (bVar.b().isTrailer()) {
                    C2.putString("ep_type", "trailer");
                } else {
                    C2.putString("ep_type", "positive");
                }
                if (bVar.f()) {
                    str = "1";
                }
                C2.putString("is_auto", str);
                Unit unit2 = Unit.f60915a;
                EventManager.s0(eventManager2, "favorite_click", C2, 0L, 4, null);
            } else if (intent instanceof a.c) {
                a.c cVar = (a.c) intent;
                J(cVar.b(), cVar.a(), cVar.c());
            } else if (intent instanceof a.d) {
                a.d dVar = (a.d) intent;
                K(dVar.c(), dVar.b(), dVar.d(), dVar.a());
            } else if (intent instanceof a.g) {
                a.g gVar = (a.g) intent;
                O(CollectionsKt.t(Integer.valueOf(gVar.b())), gVar.a());
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "CollectionViewModel";
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void w() {
        this.f48825e = false;
        super.w();
    }
}
