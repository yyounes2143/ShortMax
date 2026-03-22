package com.startshorts.androidplayer.ui.activity.download.adapter;

import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;
import au.l;
import com.drake.brv.BindingAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.download.DownloadManagerHeader;
import com.startshorts.androidplayer.bean.download.DownloadManagerItem;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadedManagerInfo;
import com.startshorts.androidplayer.bean.download.DownloadingManagerInfo;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDownloadDramaHeadBinding;
import com.startshorts.androidplayer.databinding.ItemDownloadedDramaBinding;
import com.startshorts.androidplayer.databinding.ItemDownloadingDramaBinding;
import com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager;
import com.startshorts.androidplayer.ui.activity.download.DownloadManagerModel;
import com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import fk.z;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import jk.b0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.s;
/* compiled from: DownloadManageAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadManageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadManageAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter\n+ 2 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n*L\n1#1,226:1\n243#2,6:227\n243#2,6:233\n243#2,6:239\n1863#3,2:245\n774#3:247\n865#3,2:248\n1782#3,4:250\n1160#4,7:254\n1160#4,7:261\n1160#4,7:268\n*S KotlinDebug\n*F\n+ 1 DownloadManageAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter\n*L\n43#1:227,6\n44#1:233,6\n45#1:239,6\n143#1:245,2\n157#1:247\n157#1:248,2\n209#1:250,4\n50#1:254,7\n57#1:261,7\n98#1:268,7\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadManageAdapter extends BindingAdapter {
    @NotNull
    public static final a S = new a(null);
    @NotNull
    private static final i<Integer> T = c.b(new Function0() { // from class: vh.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int V2;
            V2 = DownloadManageAdapter.V();
            return Integer.valueOf(V2);
        }
    });
    @NotNull
    private static final i<Integer> U = c.b(new Function0() { // from class: vh.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int U2;
            U2 = DownloadManageAdapter.U();
            return Integer.valueOf(U2);
        }
    });
    @NotNull
    private static final i<Float> V = c.b(new Function0() { // from class: vh.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            float W;
            W = DownloadManageAdapter.W();
            return Float.valueOf(W);
        }
    });
    @NotNull
    private LifecycleOwner M;
    @NotNull
    private DownloadManagerModel N;
    private boolean O;
    @Nullable
    private Function2<? super DownloadingManagerInfo, ? super Integer, Unit> P;
    @Nullable
    private Function2<? super DownloadedManagerInfo, ? super Integer, Unit> Q;
    @Nullable
    private Function1<? super Integer, Unit> R;

    /* compiled from: DownloadManageAdapter.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d() {
            return ((Number) DownloadManageAdapter.U.getValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int e() {
            return ((Number) DownloadManageAdapter.T.getValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float f() {
            return ((Number) DownloadManageAdapter.V.getValue()).floatValue();
        }

        private a() {
        }
    }

    public DownloadManageAdapter(@NotNull LifecycleOwner lifecycleOwner, @NotNull DownloadManagerModel viewModel) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.M = lifecycleOwner;
        this.N = viewModel;
        final int i10 = R$layout.item_download_drama_head;
        if (Modifier.isInterface(DownloadManagerHeader.class.getModifiers())) {
            q().put(Reflection.typeOf(DownloadManagerHeader.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter$special$$inlined$addType$1
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
            y().put(Reflection.typeOf(DownloadManagerHeader.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter$special$$inlined$addType$2
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
        final int i11 = R$layout.item_downloading_drama;
        if (Modifier.isInterface(DownloadingManagerInfo.class.getModifiers())) {
            q().put(Reflection.typeOf(DownloadingManagerInfo.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter$special$$inlined$addType$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i12) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i11);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        } else {
            y().put(Reflection.typeOf(DownloadingManagerInfo.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter$special$$inlined$addType$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i12) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i11);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        }
        final int i12 = R$layout.item_downloaded_drama;
        if (Modifier.isInterface(DownloadedManagerInfo.class.getModifiers())) {
            q().put(Reflection.typeOf(DownloadedManagerInfo.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter$special$$inlined$addType$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i13) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i12);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        } else {
            y().put(Reflection.typeOf(DownloadedManagerInfo.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter$special$$inlined$addType$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i13) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i12);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        }
        D(new Function1() { // from class: vh.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit X;
                X = DownloadManageAdapter.X(DownloadManageAdapter.this, (BindingAdapter.BindingViewHolder) obj);
                return X;
            }
        });
        au.c.d().p(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int U() {
        return g.a(104.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int V() {
        return g.a(78.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float W() {
        return z.f51786a.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X(final DownloadManageAdapter downloadManageAdapter, final BindingAdapter.BindingViewHolder onBind) {
        ItemDownloadedDramaBinding itemDownloadedDramaBinding;
        int i10;
        ItemDownloadingDramaBinding itemDownloadingDramaBinding;
        int i11;
        ItemDownloadDramaHeadBinding itemDownloadDramaHeadBinding;
        Intrinsics.checkNotNullParameter(onBind, "$this$onBind");
        int itemViewType = onBind.getItemViewType();
        if (itemViewType == R$layout.item_download_drama_head) {
            DownloadManagerHeader downloadManagerHeader = (DownloadManagerHeader) onBind.j();
            if (onBind.l() == null) {
                Object invoke = ItemDownloadDramaHeadBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
                if (invoke != null) {
                    itemDownloadDramaHeadBinding = (ItemDownloadDramaHeadBinding) invoke;
                    onBind.n(itemDownloadDramaHeadBinding);
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadDramaHeadBinding");
                }
            } else {
                ViewBinding l10 = onBind.l();
                if (l10 != null) {
                    itemDownloadDramaHeadBinding = (ItemDownloadDramaHeadBinding) l10;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadDramaHeadBinding");
                }
            }
            itemDownloadDramaHeadBinding.setLifecycleOwner(downloadManageAdapter.M);
            itemDownloadDramaHeadBinding.f40350a.setText(downloadManagerHeader.getTitle());
        } else {
            int i12 = 8;
            if (itemViewType == R$layout.item_downloading_drama) {
                final DownloadingManagerInfo downloadingManagerInfo = (DownloadingManagerInfo) onBind.j();
                if (onBind.l() == null) {
                    Object invoke2 = ItemDownloadingDramaBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
                    if (invoke2 != null) {
                        itemDownloadingDramaBinding = (ItemDownloadingDramaBinding) invoke2;
                        onBind.n(itemDownloadingDramaBinding);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadingDramaBinding");
                    }
                } else {
                    ViewBinding l11 = onBind.l();
                    if (l11 != null) {
                        itemDownloadingDramaBinding = (ItemDownloadingDramaBinding) l11;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadingDramaBinding");
                    }
                }
                itemDownloadingDramaBinding.setLifecycleOwner(downloadManageAdapter.M);
                ImageView imageView = itemDownloadingDramaBinding.f40375a;
                if (downloadManageAdapter.O) {
                    i12 = 0;
                }
                imageView.setVisibility(i12);
                ImageView imageView2 = itemDownloadingDramaBinding.f40375a;
                if (downloadingManagerInfo.getSelect()) {
                    i11 = R$drawable.icon_checkbox_checked;
                } else {
                    i11 = R$drawable.icon_checkbox_uncheck;
                }
                imageView2.setImageResource(i11);
                View root = itemDownloadingDramaBinding.getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                b0.c(root, 0L, new Function1() { // from class: vh.i
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit e02;
                        e02 = DownloadManageAdapter.e0(DownloadManageAdapter.this, downloadingManagerInfo, onBind, (View) obj);
                        return e02;
                    }
                }, 1, null);
                itemDownloadingDramaBinding.f40375a.setOnClickListener(new View.OnClickListener() { // from class: vh.j
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DownloadManageAdapter.f0(DownloadingManagerInfo.this, downloadManageAdapter, view);
                    }
                });
                f fVar = f.f60747a;
                CustomFrescoView customFrescoView = itemDownloadingDramaBinding.f40376b;
                FrescoConfig frescoConfig = new FrescoConfig();
                frescoConfig.setUrl(downloadingManagerInfo.getTaskInfoList().get(0).getDramaCoverUrl());
                a aVar = S;
                frescoConfig.setOssWidth(aVar.e());
                frescoConfig.setOssHeight(aVar.d());
                frescoConfig.setCornerRadius(aVar.f());
                frescoConfig.setCornerTransform(true);
                frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
                DownloadTaskInfo downloadingItem = downloadingManagerInfo.getDownloadingItem();
                if (downloadingItem == null) {
                    return Unit.f60915a;
                }
                s.b("download bindItem:" + downloadingItem.getDramaNum() + " and progress:" + downloadingItem.getShowProgress());
                itemDownloadingDramaBinding.f40380f.setText(downloadingManagerInfo.getShortPlayName());
                itemDownloadingDramaBinding.f40377c.setProgress(downloadingItem.getShowProgress());
                itemDownloadingDramaBinding.f40378d.setText(onBind.i().getString(R$string.common_current_ep, String.valueOf(downloadingItem.getDramaNum())));
                itemDownloadingDramaBinding.f40381g.setText(onBind.i().getString(R$string.common_total_ep, String.valueOf(downloadingManagerInfo.getDownloadingCount())));
                itemDownloadingDramaBinding.f40379e.setText(downloadingItem.getShowSpeed());
                itemDownloadingDramaBinding.f40382h.setText(s.a(Long.valueOf(downloadingItem.getDownloadedSize())) + '/' + s.a(Long.valueOf(downloadingItem.getFileSize())));
            } else if (itemViewType == R$layout.item_downloaded_drama) {
                final DownloadedManagerInfo downloadedManagerInfo = (DownloadedManagerInfo) onBind.j();
                if (onBind.l() == null) {
                    Object invoke3 = ItemDownloadedDramaBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
                    if (invoke3 != null) {
                        itemDownloadedDramaBinding = (ItemDownloadedDramaBinding) invoke3;
                        onBind.n(itemDownloadedDramaBinding);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadedDramaBinding");
                    }
                } else {
                    ViewBinding l12 = onBind.l();
                    if (l12 != null) {
                        itemDownloadedDramaBinding = (ItemDownloadedDramaBinding) l12;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadedDramaBinding");
                    }
                }
                itemDownloadedDramaBinding.setLifecycleOwner(downloadManageAdapter.M);
                ImageView imageView3 = itemDownloadedDramaBinding.f40356a;
                if (downloadManageAdapter.O) {
                    i12 = 0;
                }
                imageView3.setVisibility(i12);
                ImageView imageView4 = itemDownloadedDramaBinding.f40356a;
                if (downloadedManagerInfo.getSelect()) {
                    i10 = R$drawable.icon_checkbox_checked;
                } else {
                    i10 = R$drawable.icon_checkbox_uncheck;
                }
                imageView4.setImageResource(i10);
                itemDownloadedDramaBinding.f40356a.setOnClickListener(new View.OnClickListener() { // from class: vh.k
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DownloadManageAdapter.g0(DownloadedManagerInfo.this, downloadManageAdapter, view);
                    }
                });
                f fVar2 = f.f60747a;
                CustomFrescoView customFrescoView2 = itemDownloadedDramaBinding.f40357b;
                FrescoConfig frescoConfig2 = new FrescoConfig();
                frescoConfig2.setUrl(downloadedManagerInfo.getTaskInfoList().get(0).getDramaCoverUrl());
                a aVar2 = S;
                frescoConfig2.setOssWidth(aVar2.e());
                frescoConfig2.setOssHeight(aVar2.d());
                frescoConfig2.setCornerRadius(aVar2.f());
                frescoConfig2.setCornerTransform(true);
                frescoConfig2.setPlaceholderResId(R$drawable.ic_cover_placeholder);
                Unit unit2 = Unit.f60915a;
                fVar2.A(customFrescoView2, frescoConfig2);
                itemDownloadedDramaBinding.f40360e.setText(onBind.i().getString(R$string.common_total_ep, String.valueOf(downloadedManagerInfo.getDownloadedCount())));
                itemDownloadedDramaBinding.f40359d.setText(downloadedManagerInfo.getDramaName());
                itemDownloadedDramaBinding.f40358c.setText(downloadedManagerInfo.getDramaContent());
                itemDownloadedDramaBinding.f40361f.setText(s.a(Long.valueOf(downloadedManagerInfo.getDownloadedSize())));
                View root2 = itemDownloadedDramaBinding.getRoot();
                Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
                b0.c(root2, 0L, new Function1() { // from class: vh.l
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit h02;
                        h02 = DownloadManageAdapter.h0(DownloadManageAdapter.this, downloadedManagerInfo, onBind, (View) obj);
                        return h02;
                    }
                }, 1, null);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d0(DownloadManageAdapter downloadManageAdapter) {
        downloadManageAdapter.N.G();
        downloadManageAdapter.n0();
        downloadManageAdapter.notifyDataSetChanged();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e0(DownloadManageAdapter downloadManageAdapter, DownloadingManagerInfo downloadingManagerInfo, BindingAdapter.BindingViewHolder bindingViewHolder, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (downloadManageAdapter.O) {
            downloadingManagerInfo.setSelect(!downloadingManagerInfo.getSelect());
            downloadManageAdapter.n0();
            downloadManageAdapter.notifyDataSetChanged();
            return Unit.f60915a;
        }
        Function2<? super DownloadingManagerInfo, ? super Integer, Unit> function2 = downloadManageAdapter.P;
        if (function2 != null) {
            function2.invoke(downloadingManagerInfo, Integer.valueOf(bindingViewHolder.k()));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(DownloadingManagerInfo downloadingManagerInfo, DownloadManageAdapter downloadManageAdapter, View view) {
        downloadingManagerInfo.setSelect(!downloadingManagerInfo.getSelect());
        downloadManageAdapter.n0();
        downloadManageAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(DownloadedManagerInfo downloadedManagerInfo, DownloadManageAdapter downloadManageAdapter, View view) {
        downloadedManagerInfo.setSelect(!downloadedManagerInfo.getSelect());
        downloadManageAdapter.n0();
        downloadManageAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0(DownloadManageAdapter downloadManageAdapter, DownloadedManagerInfo downloadedManagerInfo, BindingAdapter.BindingViewHolder bindingViewHolder, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (downloadManageAdapter.O) {
            return Unit.f60915a;
        }
        Function2<? super DownloadedManagerInfo, ? super Integer, Unit> function2 = downloadManageAdapter.Q;
        if (function2 != null) {
            function2.invoke(downloadedManagerInfo, Integer.valueOf(bindingViewHolder.k()));
        }
        return Unit.f60915a;
    }

    private final void n0() {
        boolean z10;
        Function1<? super Integer, Unit> function1 = this.R;
        if (function1 != null) {
            List<DownloadManagerItem> C = this.N.C();
            int i10 = 0;
            if (!(C instanceof Collection) || !C.isEmpty()) {
                int i11 = 0;
                for (DownloadManagerItem downloadManagerItem : C) {
                    if (downloadManagerItem instanceof DownloadedManagerInfo) {
                        z10 = ((DownloadedManagerInfo) downloadManagerItem).getSelect();
                    } else if (downloadManagerItem instanceof DownloadingManagerInfo) {
                        z10 = ((DownloadingManagerInfo) downloadManagerItem).getSelect();
                    } else {
                        z10 = false;
                    }
                    if (z10 && (i11 = i11 + 1) < 0) {
                        CollectionsKt.x();
                    }
                }
                i10 = i11;
            }
            function1.invoke(Integer.valueOf(i10));
        }
    }

    public final void b0(boolean z10) {
        this.O = z10;
        notifyDataSetChanged();
    }

    public final void c0() {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.N.C()) {
            DownloadManagerItem downloadManagerItem = (DownloadManagerItem) obj;
            if (downloadManagerItem instanceof DownloadedManagerInfo) {
                z10 = ((DownloadedManagerInfo) downloadManagerItem).getSelect();
            } else if (downloadManagerItem instanceof DownloadingManagerInfo) {
                z10 = ((DownloadingManagerInfo) downloadManagerItem).getSelect();
            } else {
                z10 = false;
            }
            if (z10) {
                arrayList.add(obj);
            }
        }
        DownloadEpisodeManager.f45066a.R(TypeIntrinsics.asMutableList(arrayList), new Function0() { // from class: vh.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit d02;
                d02 = DownloadManageAdapter.d0(DownloadManageAdapter.this);
                return d02;
            }
        });
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void handleDownloadStateEvent(@NotNull b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event instanceof b.d) {
            DownloadTaskInfo a10 = ((b.d) event).a();
            if (this.N.C().size() > 0) {
                s.b("监听通知下载进度变化：" + a10);
                notifyItemChanged(1);
            }
        } else if (event instanceof b.e) {
            this.N.G();
            notifyDataSetChanged();
        } else if (event instanceof b.f) {
            DownloadTaskInfo a11 = ((b.f) event).a();
            if (this.N.C().size() > 0) {
                if (a11.getDownloadState() == 4) {
                    this.N.G();
                    notifyDataSetChanged();
                    return;
                }
                notifyItemChanged(1);
            }
        }
    }

    public final void i0() {
        au.c.d().r(this);
    }

    public final void j0(boolean z10) {
        for (DownloadManagerItem downloadManagerItem : this.N.C()) {
            if (downloadManagerItem instanceof DownloadedManagerInfo) {
                ((DownloadedManagerInfo) downloadManagerItem).setSelect(z10);
            }
            if (downloadManagerItem instanceof DownloadingManagerInfo) {
                ((DownloadingManagerInfo) downloadManagerItem).setSelect(z10);
            }
        }
        n0();
        notifyDataSetChanged();
    }

    public final void k0(@Nullable Function2<? super DownloadedManagerInfo, ? super Integer, Unit> function2) {
        this.Q = function2;
    }

    public final void l0(@Nullable Function2<? super DownloadingManagerInfo, ? super Integer, Unit> function2) {
        this.P = function2;
    }

    public final void m0(@Nullable Function1<? super Integer, Unit> function1) {
        this.R = function1;
    }
}
