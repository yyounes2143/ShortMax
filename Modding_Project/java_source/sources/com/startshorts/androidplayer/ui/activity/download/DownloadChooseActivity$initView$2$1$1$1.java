package com.startshorts.androidplayer.ui.activity.download;

import android.os.Bundle;
import androidx.lifecycle.ViewModelKt;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import com.startshorts.androidplayer.bean.shorts.DownloadActivityListItem;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.download.adapter.DownloadChooseListAdapter;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadChooseActivity.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadChooseActivity$initView$2$1$1$1", f = "DownloadChooseActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadChooseActivity$initView$2$1$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45047h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortTaskInfo f45048i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DownloadActivityListItem f45049j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DownloadChooseActivity f45050k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ DownloadChooseListAdapter f45051l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f45052m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadChooseActivity$initView$2$1$1$1(ShortTaskInfo shortTaskInfo, DownloadActivityListItem downloadActivityListItem, DownloadChooseActivity downloadChooseActivity, DownloadChooseListAdapter downloadChooseListAdapter, int i10, rs.c<? super DownloadChooseActivity$initView$2$1$1$1> cVar) {
        super(2, cVar);
        this.f45048i = shortTaskInfo;
        this.f45049j = downloadActivityListItem;
        this.f45050k = downloadChooseActivity;
        this.f45051l = downloadChooseListAdapter;
        this.f45052m = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(DownloadChooseListAdapter downloadChooseListAdapter, int i10) {
        gt.g.d(ViewModelKt.getViewModelScope(downloadChooseListAdapter.T()), null, null, new DownloadChooseActivity$initView$2$1$1$1$2$1(downloadChooseListAdapter, i10, null), 3, null);
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadChooseActivity$initView$2$1$1$1(this.f45048i, this.f45049j, this.f45050k, this.f45051l, this.f45052m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadChooseActivity$initView$2$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PlayResolution playResolution;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45047h == 0) {
            kotlin.f.b(obj);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            ShortTaskInfo shortTaskInfo = this.f45048i;
            DownloadActivityListItem downloadActivityListItem = this.f45049j;
            String shortPlayCode = shortTaskInfo.getShortPlayCode();
            if (shortPlayCode == null) {
                shortPlayCode = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            bundle.putString("from", shortPlayCode);
            bundle.putString("episode", String.valueOf(downloadActivityListItem.getEpisode().getEpisodeNum()));
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "download_click", bundle, 0L, 4, null);
            DownloadEpisodeManager downloadEpisodeManager = DownloadEpisodeManager.f45066a;
            ShortTaskInfo shortTaskInfo2 = this.f45048i;
            List<DownloadActivityListItem> t10 = CollectionsKt.t(this.f45049j);
            playResolution = this.f45050k.f45043v;
            int resolutionValue = playResolution.getResolutionValue();
            final DownloadChooseListAdapter downloadChooseListAdapter = this.f45051l;
            final int i10 = this.f45052m;
            downloadEpisodeManager.d0(shortTaskInfo2, t10, resolutionValue, new Function0() { // from class: com.startshorts.androidplayer.ui.activity.download.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j10;
                    j10 = DownloadChooseActivity$initView$2$1$1$1.j(DownloadChooseListAdapter.this, i10);
                    return j10;
                }
            });
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
