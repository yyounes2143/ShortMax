package com.startshorts.androidplayer.ui.activity.download.adapter;

import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.viewbinding.ViewBinding;
import au.c;
import au.l;
import com.drake.brv.BindingAdapter;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.DownloadActivityListItem;
import com.startshorts.androidplayer.databinding.ItemVipChooseBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.download.DownloadChooseViewModel;
import com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager;
import com.startshorts.androidplayer.ui.activity.download.adapter.DownloadChooseListAdapter;
import com.startshorts.androidplayer.ui.activity.download.b;
import gt.g;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.s;
/* compiled from: DownloadChooseListAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadChooseListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadChooseListAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter\n+ 2 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n*L\n1#1,226:1\n243#2,6:227\n1872#3,3:233\n1863#3,2:236\n1863#3,2:238\n1872#3,3:240\n774#3:243\n865#3,2:244\n1160#4,7:246\n*S KotlinDebug\n*F\n+ 1 DownloadChooseListAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter\n*L\n33#1:227,6\n130#1:233,3\n147#1:236,2\n161#1:238,2\n173#1:240,3\n186#1:243\n186#1:244,2\n35#1:246,7\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadChooseListAdapter extends BindingAdapter {
    @NotNull
    private final LifecycleOwner M;
    @NotNull
    private final DownloadChooseViewModel N;
    @Nullable
    private Function2<? super DownloadActivityListItem, ? super Integer, Unit> O;

    public DownloadChooseListAdapter(@NotNull LifecycleOwner lifecycleOwner, @NotNull DownloadChooseViewModel viewmodel) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(viewmodel, "viewmodel");
        this.M = lifecycleOwner;
        this.N = viewmodel;
        final int i10 = R$layout.item_vip_choose;
        if (Modifier.isInterface(DownloadActivityListItem.class.getModifiers())) {
            q().put(Reflection.typeOf(DownloadActivityListItem.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DownloadChooseListAdapter$special$$inlined$addType$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i11) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i10);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        } else {
            y().put(Reflection.typeOf(DownloadActivityListItem.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DownloadChooseListAdapter$special$$inlined$addType$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i11) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i10);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        }
        D(new Function1() { // from class: vh.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit O;
                O = DownloadChooseListAdapter.O(DownloadChooseListAdapter.this, (BindingAdapter.BindingViewHolder) obj);
                return O;
            }
        });
        c.d().p(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(final DownloadChooseListAdapter downloadChooseListAdapter, BindingAdapter.BindingViewHolder onBind) {
        ItemVipChooseBinding itemVipChooseBinding;
        Intrinsics.checkNotNullParameter(onBind, "$this$onBind");
        if (onBind.l() == null) {
            Object invoke = ItemVipChooseBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
            if (invoke != null) {
                itemVipChooseBinding = (ItemVipChooseBinding) invoke;
                onBind.n(itemVipChooseBinding);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemVipChooseBinding");
            }
        } else {
            ViewBinding l10 = onBind.l();
            if (l10 != null) {
                itemVipChooseBinding = (ItemVipChooseBinding) l10;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemVipChooseBinding");
            }
        }
        final DownloadActivityListItem downloadActivityListItem = (DownloadActivityListItem) onBind.j();
        final int k10 = onBind.k();
        itemVipChooseBinding.setLifecycleOwner(downloadChooseListAdapter.M);
        itemVipChooseBinding.f41032f.setText(String.valueOf(downloadActivityListItem.getEpisode().getEpisodeNum()));
        View root = itemVipChooseBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: vh.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit U;
                U = DownloadChooseListAdapter.U(DownloadChooseListAdapter.this, downloadActivityListItem, k10, (View) obj);
                return U;
            }
        }, 1, null);
        BaseEpisode A = downloadChooseListAdapter.N.A();
        int i10 = 0;
        if (A != null && downloadActivityListItem.getEpisode().getEpisodeNum() == A.getEpisodeNum()) {
            itemVipChooseBinding.f41032f.setVisibility(8);
            itemVipChooseBinding.f41031e.setVisibility(0);
            if (downloadActivityListItem.isSelect()) {
                itemVipChooseBinding.f41027a.setBackgroundResource(R$drawable.bg_download_cur_item_selected);
            } else {
                itemVipChooseBinding.f41027a.setBackgroundResource(R$drawable.bg_download_cur_item_unselected);
            }
        } else {
            itemVipChooseBinding.f41032f.setVisibility(0);
            itemVipChooseBinding.f41031e.setVisibility(8);
            if (downloadActivityListItem.isSelect()) {
                itemVipChooseBinding.f41027a.setBackgroundResource(R$drawable.bg_download_item_selected);
            } else {
                itemVipChooseBinding.f41027a.setBackgroundResource(R$drawable.bg_download_item_unselected);
            }
        }
        switch (downloadActivityListItem.getDownloadStatus()) {
            case 0:
            case 1:
            case 3:
                itemVipChooseBinding.f41030d.setImageResource(R$drawable.ic_download_wait);
                b0.l(itemVipChooseBinding.f41030d);
                b0.d(itemVipChooseBinding.f41029c);
                b0.d(itemVipChooseBinding.f41028b);
                break;
            case 2:
                b0.d(itemVipChooseBinding.f41030d);
                b0.l(itemVipChooseBinding.f41029c);
                b0.l(itemVipChooseBinding.f41028b);
                CircularProgressIndicator circularProgressIndicator = itemVipChooseBinding.f41028b;
                DownloadTaskInfo downloadInfo = downloadActivityListItem.getDownloadInfo();
                if (downloadInfo != null) {
                    i10 = downloadInfo.getShowProgress();
                }
                circularProgressIndicator.setProgress(i10);
                break;
            case 4:
                itemVipChooseBinding.f41030d.setImageResource(R$drawable.ic_download_finish);
                b0.l(itemVipChooseBinding.f41030d);
                b0.d(itemVipChooseBinding.f41029c);
                b0.d(itemVipChooseBinding.f41028b);
                break;
            case 5:
                itemVipChooseBinding.f41030d.setImageResource(R$drawable.ic_download_err);
                b0.l(itemVipChooseBinding.f41030d);
                b0.d(itemVipChooseBinding.f41029c);
                b0.d(itemVipChooseBinding.f41028b);
                break;
            case 6:
                b0.d(itemVipChooseBinding.f41030d);
                b0.d(itemVipChooseBinding.f41029c);
                b0.d(itemVipChooseBinding.f41028b);
                break;
        }
        c.b();
        itemVipChooseBinding.invalidateAll();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S(DownloadChooseListAdapter downloadChooseListAdapter) {
        g.d(ViewModelKt.getViewModelScope(downloadChooseListAdapter.N), null, null, new DownloadChooseListAdapter$downloadSelected$2$1(downloadChooseListAdapter, null), 3, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U(DownloadChooseListAdapter downloadChooseListAdapter, DownloadActivityListItem downloadActivityListItem, int i10, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Function2<? super DownloadActivityListItem, ? super Integer, Unit> function2 = downloadChooseListAdapter.O;
        if (function2 != null) {
            function2.invoke(downloadActivityListItem, Integer.valueOf(i10));
        }
        return Unit.f60915a;
    }

    public final void P() {
        for (DownloadActivityListItem downloadActivityListItem : this.N.C()) {
            if (downloadActivityListItem.isSelect()) {
                downloadActivityListItem.setSelect(false);
            }
        }
        this.N.D().setValue(0);
        this.N.E().setValue(Boolean.FALSE);
        notifyDataSetChanged();
    }

    public final void Q() {
        int i10 = 0;
        for (DownloadActivityListItem downloadActivityListItem : this.N.C()) {
            if (downloadActivityListItem.isSelect() && downloadActivityListItem.isSelectAble()) {
                i10++;
            }
        }
        this.N.D().setValue(Integer.valueOf(i10));
        if (i10 == 0) {
            this.N.E().setValue(Boolean.FALSE);
        }
    }

    public final void R(@Nullable ShortTaskInfo shortTaskInfo, int i10) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.N.C()) {
            if (((DownloadActivityListItem) obj).isSelect()) {
                arrayList.add(obj);
            }
        }
        List<DownloadActivityListItem> asMutableList = TypeIntrinsics.asMutableList(arrayList);
        if (asMutableList.isEmpty() || shortTaskInfo == null) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        String shortPlayCode = shortTaskInfo.getShortPlayCode();
        if (shortPlayCode == null) {
            shortPlayCode = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        bundle.putString("from", shortPlayCode);
        bundle.putString("episode", Y(asMutableList));
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "download_click", bundle, 0L, 4, null);
        DownloadEpisodeManager.f45066a.d0(shortTaskInfo, asMutableList, i10, new Function0() { // from class: vh.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit S;
                S = DownloadChooseListAdapter.S(DownloadChooseListAdapter.this);
                return S;
            }
        });
    }

    @NotNull
    public final DownloadChooseViewModel T() {
        return this.N;
    }

    public final void V() {
        c.d().r(this);
    }

    public final void W() {
        for (DownloadActivityListItem downloadActivityListItem : this.N.C()) {
            if (!downloadActivityListItem.isSelect() && downloadActivityListItem.isSelectAble()) {
                downloadActivityListItem.setSelect(true);
            }
        }
        this.N.E().setValue(Boolean.TRUE);
        Q();
        notifyDataSetChanged();
    }

    public final void X(@Nullable Function2<? super DownloadActivityListItem, ? super Integer, Unit> function2) {
        this.O = function2;
    }

    @NotNull
    public final String Y(@NotNull List<DownloadActivityListItem> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            int episodeNum = ((DownloadActivityListItem) obj).getEpisode().getEpisodeNum();
            if (i10 == list.size() - 1) {
                sb2.append(episodeNum);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(episodeNum);
                sb3.append(',');
                sb2.append(sb3.toString());
            }
            i10 = i11;
        }
        String sb4 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb4, "toString(...)");
        return sb4;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void handleDownloadStateEvent(@NotNull b event) {
        DownloadTaskInfo downloadTaskInfo;
        String str;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event instanceof b.e) {
            g.d(ViewModelKt.getViewModelScope(this.N), null, null, new DownloadChooseListAdapter$handleDownloadStateEvent$1(this, null), 3, null);
        } else if (event instanceof b.c) {
            notifyDataSetChanged();
        } else {
            boolean z10 = event instanceof b.f;
            if (z10 || (event instanceof b.d)) {
                if (z10) {
                    downloadTaskInfo = ((b.f) event).a();
                } else {
                    if (event instanceof b.d) {
                        downloadTaskInfo = ((b.d) event).a();
                    } else {
                        downloadTaskInfo = null;
                    }
                    if (downloadTaskInfo == null) {
                        return;
                    }
                }
                s.b("chose adapter变化：" + downloadTaskInfo);
                List<DownloadActivityListItem> C = this.N.C();
                if (C.size() > 0) {
                    int i10 = -1;
                    int i11 = 0;
                    for (Object obj : C) {
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            CollectionsKt.y();
                        }
                        DownloadActivityListItem downloadActivityListItem = (DownloadActivityListItem) obj;
                        String cacheKey = downloadTaskInfo.getCacheKey();
                        DownloadTaskInfo downloadInfo = downloadActivityListItem.getDownloadInfo();
                        if (downloadInfo != null) {
                            str = downloadInfo.getCacheKey();
                        } else {
                            str = null;
                        }
                        if (Intrinsics.areEqual(cacheKey, str)) {
                            downloadActivityListItem.getDownloadInfo();
                            i10 = i11;
                        }
                        i11 = i12;
                    }
                    if (i10 >= 0) {
                        notifyItemChanged(i10);
                    }
                }
            }
        }
    }
}
