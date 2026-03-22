package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import com.adjust.sdk.Constants;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayContinue;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.c;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import java.util.ArrayList;
import java.util.List;
import jk.o;
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
/* compiled from: ImmersionViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,782:1\n125#2,13:783\n125#2,13:796\n*S KotlinDebug\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel\n*L\n569#1:783,13\n655#1:796,13\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f48546h = new a(null);
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f48548f;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48547e = kotlin.c.b(new Function0() { // from class: vk.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData Z;
            Z = ImmersionViewModel.Z();
            return Z;
        }
    });
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private List<Integer> f48549g = new ArrayList();

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void M(int i10) {
        ud.b bVar = ud.b.f68412a;
        PlayContinue r02 = bVar.r0();
        if (r02 != null && i10 == r02.getShortPlayId()) {
            bVar.l2(null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final void N(ImmersionParams immersionParams) {
        Integer num;
        Integer num2;
        String str;
        this.f48548f = immersionParams.getFrom();
        ImmersionShortsInfo shortsInfo = immersionParams.getShortsInfo();
        Integer num3 = null;
        switch (immersionParams.getType()) {
            case 1:
                v("firstLoadEpisodes -> type(TYPE_CUR_EPISODE_NUM)");
                o0(shortsInfo.getShortsId(), immersionParams.getEpisodeNum(), false, immersionParams.getShortsInfo().getVideoType());
                break;
            case 2:
                v("firstLoadEpisodes -> type(TYPE_EPISODE_LIST)");
                n0(immersionParams);
                break;
            case 3:
                v("firstLoadEpisodes -> type(TYPE_SHORTS_ID) trailer(" + shortsInfo.isTrailer() + ')');
                q0(shortsInfo.getShortsId(), shortsInfo.getVideoType());
                break;
            case 4:
                v("firstLoadEpisodes -> type(TYPE_CUR_EPISODE_ID)");
                j0(this, null, shortsInfo.getShortsId(), immersionParams.getEpisodeId(), false, immersionParams.getShortsInfo().getVideoType(), null, 41, null);
                break;
            case 5:
                v("firstLoadEpisodes -> type(TYPE_PREV_EPISODE_ID) trailer(" + shortsInfo.isTrailer() + ')');
                if (immersionParams.getShortsInfo().isTrailer()) {
                    j0(this, null, immersionParams.getShortsInfo().getBindShortsId(), immersionParams.getEpisodeId(), true, 4, null, 33, null);
                    break;
                } else if (immersionParams.getLastEpisode()) {
                    CoroutineUtil.l(CoroutineUtil.f48072a, "queryEpisodesForNextShortsIfNormal", false, new ImmersionViewModel$firstLoadEpisodes$1(this, immersionParams, null), 2, null);
                    break;
                } else {
                    p0(shortsInfo.getShortsId(), immersionParams.getEpisodeId(), immersionParams.getShortsInfo().getVideoType());
                    break;
                }
            case 6:
                v("firstLoadEpisodes -> type(TYPE_CUR_EPISODE_NUM_DOWNLOAD)");
                k0(shortsInfo.getShortsId(), immersionParams.getEpisodeNum(), immersionParams.getShortsInfo().getPreferredResolution());
                break;
            case 7:
                v("firstLoadEpisodes -> type(TYPE_EPISODE_FIRST) shortPlayID(" + shortsInfo.getShortsId() + ')');
                t0(shortsInfo.getShortsId());
                break;
        }
        if (immersionParams.getLogEnterImmersion()) {
            EventManager eventManager = EventManager.f42463a;
            Bundle a10 = jk.b.a(EventManager.x(eventManager, immersionParams.getActResource(), false, 2, null), eventManager.H(immersionParams.getModuleInfo()));
            a10.putString("from", immersionParams.getFrom());
            if (shortsInfo.isTrailer()) {
                str = "trailer";
            } else {
                str = "positive";
            }
            a10.putString("type", str);
            a10.putString("reel_id", shortsInfo.getShortPlayCode());
            a10.putString("customShortsName", shortsInfo.getShortsName());
            a10.putString("customSearchValue", immersionParams.getSearchString());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "enter_reel_play", a10, 0L, 4, null);
        }
        if (Intrinsics.areEqual(immersionParams.getFrom(), Constants.DEEPLINK)) {
            ag.a aVar = ag.a.f646a;
            String shortPlayCode = shortsInfo.getShortPlayCode();
            int videoType = shortsInfo.getVideoType();
            ModuleInfo moduleInfo = immersionParams.getModuleInfo();
            if (moduleInfo != null) {
                num2 = moduleInfo.getStatus();
            } else {
                num2 = null;
            }
            ModuleInfo moduleInfo2 = immersionParams.getModuleInfo();
            if (moduleInfo2 != null) {
                num3 = moduleInfo2.getSort();
            }
            ag.a.d(aVar, Constants.DEEPLINK, shortPlayCode, null, videoType, null, num3, num2, shortsInfo.getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE, null);
        } else if (Intrinsics.areEqual(immersionParams.getFrom(), "discover_watch_drama_pop")) {
            ag.a aVar2 = ag.a.f646a;
            String shortPlayCode2 = shortsInfo.getShortPlayCode();
            int videoType2 = shortsInfo.getVideoType();
            ModuleInfo moduleInfo3 = immersionParams.getModuleInfo();
            if (moduleInfo3 != null) {
                num = moduleInfo3.getStatus();
            } else {
                num = null;
            }
            ModuleInfo moduleInfo4 = immersionParams.getModuleInfo();
            if (moduleInfo4 != null) {
                num3 = moduleInfo4.getSort();
            }
            ag.a.d(aVar2, "discover_watch_drama_pop", shortPlayCode2, null, videoType2, null, num3, num, shortsInfo.getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean O() {
        return Intrinsics.areEqual(this.f48548f, Constants.DEEPLINK);
    }

    private final r P() {
        return BaseViewModel.i(this, "getMatchEventUploadInfo", false, new ImmersionViewModel$getGoogleMatchEventUploadInfo$1(this, null), 2, null);
    }

    private final void S(int i10, ResponseException responseException, boolean z10) {
        if (z10 && responseException.isShortsOrEpisodeNotFind()) {
            if (!this.f48549g.contains(Integer.valueOf(i10))) {
                this.f48549g.add(Integer.valueOf(i10));
            }
            M(i10);
        }
        o.b(Q(), new d.c(p(responseException), responseException.getMessage()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void T(ImmersionViewModel immersionViewModel, int i10, ResponseException responseException, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        immersionViewModel.S(i10, responseException, z10);
    }

    private final void U(boolean z10, int i10, int i11, QueryEpisodesResult queryEpisodesResult, ImmersionActivity.ResetReason resetReason) {
        o.b(Q(), new d.C0663d(z10, i10, i11, queryEpisodesResult, resetReason));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void V(ImmersionViewModel immersionViewModel, boolean z10, int i10, int i11, QueryEpisodesResult queryEpisodesResult, ImmersionActivity.ResetReason resetReason, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            resetReason = null;
        }
        immersionViewModel.U(z10, i10, i11, queryEpisodesResult, resetReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(int i10, String str, String str2) {
        if (O()) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("reel_id", String.valueOf(i10));
            bundle.putString("api_url", str);
            bundle.putString("server_result", str2);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "campaign_shorts_api_end", bundle, 0L, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X(int i10, String str, String str2) {
        if (O()) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("reel_id", String.valueOf(i10));
            bundle.putString("api_url", str);
            bundle.putString("err_msg", str2);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "campaign_shorts_api_error", bundle, 0L, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(int i10, String str, String str2) {
        if (O()) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("reel_id", String.valueOf(i10));
            bundle.putString("trace_id", str);
            bundle.putString("api_url", str2);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "campaign_shorts_api_start", bundle, 0L, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData Z() {
        return new MutableLiveData();
    }

    private final void a0(BaseEpisode baseEpisode, boolean z10) {
        v("preloadNextEpisodes -> fromUser(" + z10 + ") isTrailer(" + baseEpisode.isTrailer() + ") shortsId(" + baseEpisode.getShortPlayId() + ") episodeId(" + baseEpisode.getId() + ") bindShortPlayId(" + baseEpisode.getBindShortPlayId() + ')');
        BaseViewModel.j(this, "preloadNextEpisodes", false, new ImmersionViewModel$preloadNextEpisodes$1(baseEpisode, this, z10, null), new Function1() { // from class: vk.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b02;
                b02 = ImmersionViewModel.b0(ImmersionViewModel.this, (String) obj);
                return b02;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(ImmersionViewModel immersionViewModel, String str) {
        o.b(immersionViewModel.Q(), new d.e(false));
        return Unit.f60915a;
    }

    private final void c0(int i10, int i11, boolean z10) {
        BaseViewModel.j(this, "preloadPrevEpisodes(" + i10 + ')', false, new ImmersionViewModel$preloadPrevEpisodes$1(this, i10, i11, z10, null), new Function1() { // from class: vk.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit d02;
                d02 = ImmersionViewModel.d0(ImmersionViewModel.this, (String) obj);
                return d02;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d0(ImmersionViewModel immersionViewModel, String str) {
        o.b(immersionViewModel.Q(), d.f.f48748a);
        return Unit.f60915a;
    }

    private final r f0(Context context, int i10, int i11, int i12) {
        return BaseViewModel.i(this, "queryEpisodeDetail(" + i10 + ')', false, new ImmersionViewModel$queryEpisodeDetail$1(context, this, i10, i11, i12, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g0(android.content.Context r17, int r18, boolean r19, com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity.ResetReason r20, boolean r21, boolean r22, rs.c<? super java.lang.Boolean> r23) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel.g0(android.content.Context, int, boolean, com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$ResetReason, boolean, boolean, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object h0(ImmersionViewModel immersionViewModel, Context context, int i10, boolean z10, ImmersionActivity.ResetReason resetReason, boolean z11, boolean z12, rs.c cVar, int i11, Object obj) {
        Context context2;
        boolean z13;
        ImmersionActivity.ResetReason resetReason2;
        boolean z14;
        boolean z15;
        if ((i11 & 1) != 0) {
            context2 = null;
        } else {
            context2 = context;
        }
        if ((i11 & 4) != 0) {
            z13 = false;
        } else {
            z13 = z10;
        }
        if ((i11 & 8) != 0) {
            resetReason2 = null;
        } else {
            resetReason2 = resetReason;
        }
        if ((i11 & 16) != 0) {
            z14 = false;
        } else {
            z14 = z11;
        }
        if ((i11 & 32) != 0) {
            z15 = false;
        } else {
            z15 = z12;
        }
        return immersionViewModel.g0(context2, i10, z13, resetReason2, z14, z15, cVar);
    }

    private final r i0(Context context, int i10, int i11, boolean z10, int i12, ImmersionActivity.ResetReason resetReason) {
        return BaseViewModel.i(this, "queryEpisodesByCurEpisodeId(" + i10 + '-' + i11 + ')', false, new ImmersionViewModel$queryEpisodesByCurEpisodeId$1(this, i10, i11, resetReason, context, i12, z10, null), 2, null);
    }

    static /* synthetic */ r j0(ImmersionViewModel immersionViewModel, Context context, int i10, int i11, boolean z10, int i12, ImmersionActivity.ResetReason resetReason, int i13, Object obj) {
        Context context2;
        boolean z11;
        ImmersionActivity.ResetReason resetReason2;
        if ((i13 & 1) != 0) {
            context2 = null;
        } else {
            context2 = context;
        }
        if ((i13 & 8) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        if ((i13 & 32) != 0) {
            resetReason2 = null;
        } else {
            resetReason2 = resetReason;
        }
        return immersionViewModel.i0(context2, i10, i11, z11, i12, resetReason2);
    }

    private final r k0(int i10, int i11, int i12) {
        return BaseViewModel.i(this, "queryEpisodesByEpisodeNum(" + i10 + '-' + i11 + ')', false, new ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1(this, i10, i11, i12, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01fe A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0222  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l0(android.content.Context r20, boolean r21, int r22, int r23, int r24, int r25, int r26, boolean r27, com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity.ResetReason r28, boolean r29, boolean r30, boolean r31, rs.c<? super java.lang.Boolean> r32) {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel.l0(android.content.Context, boolean, int, int, int, int, int, boolean, com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$ResetReason, boolean, boolean, boolean, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object m0(ImmersionViewModel immersionViewModel, Context context, boolean z10, int i10, int i11, int i12, int i13, int i14, boolean z11, ImmersionActivity.ResetReason resetReason, boolean z12, boolean z13, boolean z14, rs.c cVar, int i15, Object obj) {
        return immersionViewModel.l0((i15 & 1) != 0 ? null : context, (i15 & 2) != 0 ? false : z10, i10, i11, i12, i13, i14, (i15 & 128) != 0 ? false : z11, (i15 & 256) != 0 ? null : resetReason, (i15 & 512) != 0 ? false : z12, (i15 & 1024) != 0 ? false : z13, (i15 & 2048) != 0 ? false : z14, cVar);
    }

    private final void n0(ImmersionParams immersionParams) {
        List<BaseEpisode> subList;
        List<BaseEpisode> subList2;
        int i10;
        List<BaseEpisode> episodeList = immersionParams.getEpisodeList();
        List<BaseEpisode> list = episodeList;
        if (list != null && !list.isEmpty()) {
            int episodeListStartPosition = immersionParams.getEpisodeListStartPosition();
            v("queryEpisodesByEpisodeList -> episodeListSize(" + episodeList.size() + ") startPosition(" + episodeListStartPosition + ')');
            BaseEpisode baseEpisode = (BaseEpisode) CollectionsKt.t0(episodeList, episodeListStartPosition);
            int i11 = 0;
            if (episodeListStartPosition == 0) {
                subList = null;
            } else {
                subList = episodeList.subList(0, episodeListStartPosition);
            }
            if (episodeListStartPosition == episodeList.size() - 1) {
                subList2 = null;
            } else {
                subList2 = episodeList.subList(episodeListStartPosition + 1, episodeList.size());
            }
            if (episodeList.size() == 2) {
                BaseEpisode baseEpisode2 = (BaseEpisode) CollectionsKt.t0(episodeList, 0);
                BaseEpisode baseEpisode3 = (BaseEpisode) CollectionsKt.t0(episodeList, 1);
                if (baseEpisode2 != null && baseEpisode2.isTrailer() && baseEpisode3 != null && baseEpisode2.getBindShortPlayId() == baseEpisode3.getShortPlayId()) {
                    baseEpisode3.setMergeShortPlay(true);
                }
            }
            if (subList != null) {
                i10 = subList.size();
            } else {
                i10 = 0;
            }
            if (subList2 != null) {
                i11 = subList2.size();
            }
            V(this, false, i10, i11, new QueryEpisodesResult(subList, -1, baseEpisode, subList2, null, 16, null), null, 16, null);
            return;
        }
        T(this, immersionParams.getShortsInfo().getShortsId(), ResponseException.Companion.getUNKNOWN_EXCEPTION(), false, 4, null);
    }

    private final r o0(int i10, int i11, boolean z10, int i12) {
        return BaseViewModel.i(this, "queryEpisodesByEpisodeNum(" + i10 + '-' + i11 + ')', false, new ImmersionViewModel$queryEpisodesByEpisodeNum$1(this, i10, i11, z10, i12, null), 2, null);
    }

    private final r p0(int i10, int i11, int i12) {
        return BaseViewModel.i(this, "queryEpisodesByPrevEpisodeId(" + i10 + '-' + i11 + ')', false, new ImmersionViewModel$queryEpisodesByPrevEpisodeId$1(this, i10, i11, i12, null), 2, null);
    }

    private final r q0(int i10, int i11) {
        return BaseViewModel.i(this, "queryEpisodesByShortsId(" + i10 + ')', false, new ImmersionViewModel$queryEpisodesByShortsId$1(this, i10, i11, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r0(boolean r23, int r24, boolean r25, rs.c<? super kotlin.Unit> r26) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel.r0(boolean, int, boolean, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0178  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s0(com.startshorts.androidplayer.bean.shorts.BaseEpisode r26, rs.c<? super java.lang.Boolean> r27) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel.s0(com.startshorts.androidplayer.bean.shorts.BaseEpisode, rs.c):java.lang.Object");
    }

    private final r t0(int i10) {
        return BaseViewModel.i(this, "queryFirstEpisodesByShortsId(" + i10 + ')', false, new ImmersionViewModel$queryFirstEpisodesByShortsId$1(this, i10, null), 2, null);
    }

    private final r u0(int i10) {
        return BaseViewModel.i(this, "queryImmersionBackShorts", false, new ImmersionViewModel$queryImmersionBackShorts$1(i10, null), 2, null);
    }

    private final r v0(int i10) {
        return BaseViewModel.i(this, "queryShortDiscount", false, new ImmersionViewModel$queryShortDiscount$1(i10, this, null), 2, null);
    }

    private final r w0(int i10) {
        return BaseViewModel.i(this, "queryShortsDetail(" + i10 + ')', false, new ImmersionViewModel$queryShortsDetail$1(this, i10, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<d> Q() {
        return (MutableLiveData) this.f48547e.getValue();
    }

    @NotNull
    public final List<Integer> R() {
        return this.f48549g;
    }

    public final void e0(@NotNull c intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof c.m) {
            this.f48548f = ((c.m) intent).a();
            Unit unit = Unit.f60915a;
        } else if (intent instanceof c.a) {
            N(((c.a) intent).a());
            Unit unit2 = Unit.f60915a;
        } else if (intent instanceof c.j) {
            w0(((c.j) intent).a());
        } else if (intent instanceof c.f) {
            c.f fVar = (c.f) intent;
            o0(fVar.b(), fVar.a(), fVar.d(), fVar.c());
        } else if (intent instanceof c.k) {
            c.k kVar = (c.k) intent;
            j0(this, kVar.a(), kVar.d(), kVar.b(), false, kVar.e(), kVar.c(), 8, null);
        } else if (intent instanceof c.l) {
            c.l lVar = (c.l) intent;
            p0(lVar.b(), lVar.a(), lVar.c());
        } else if (intent instanceof c.g) {
            c.g gVar = (c.g) intent;
            q0(gVar.a(), gVar.b());
        } else if (intent instanceof c.d) {
            c.d dVar = (c.d) intent;
            c0(dVar.a(), dVar.c(), dVar.b());
            Unit unit3 = Unit.f60915a;
        } else if (intent instanceof c.C0662c) {
            c.C0662c c0662c = (c.C0662c) intent;
            a0(c0662c.a(), c0662c.b());
            Unit unit4 = Unit.f60915a;
        } else if (intent instanceof c.e) {
            c.e eVar = (c.e) intent;
            f0(eVar.a(), eVar.b(), eVar.c(), eVar.d());
        } else if (intent instanceof c.h) {
            u0(((c.h) intent).a());
        } else if (intent instanceof c.i) {
            v0(((c.i) intent).a());
        } else if (intent instanceof c.b) {
            P();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "ImmersionViewModel";
    }
}
