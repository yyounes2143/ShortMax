package com.startshorts.androidplayer.ui.activity.download.adapter;

import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.viewbinding.ViewBinding;
import au.l;
import com.drake.brv.BindingAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.download.DownloadPauseHeader;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadingDramaInfo;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDownloadDramaBinding;
import com.startshorts.androidplayer.databinding.ItemDownloadDramaDetailHeadBinding;
import com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager;
import com.startshorts.androidplayer.ui.activity.download.DownloadingDramaModel;
import com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import fk.z;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import jk.b0;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import ms.f;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.s;
/* compiled from: DramaDownloadingAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDramaDownloadingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DramaDownloadingAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter\n+ 2 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n*L\n1#1,238:1\n243#2,6:239\n243#2,6:245\n1863#3,2:251\n774#3:253\n865#3,2:254\n1782#3,4:256\n1872#3,3:260\n1872#3,3:263\n1160#4,7:266\n1160#4,7:273\n*S KotlinDebug\n*F\n+ 1 DramaDownloadingAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter\n*L\n43#1:239,6\n44#1:245,6\n144#1:251,2\n150#1:253\n150#1:254,2\n158#1:256,4\n171#1:260,3\n204#1:263,3\n49#1:266,7\n77#1:273,7\n*E\n"})
/* loaded from: classes7.dex */
public final class DramaDownloadingAdapter extends BindingAdapter {
    @NotNull
    public static final a R = new a(null);
    @NotNull
    private static final i<Integer> S = c.b(new Function0() { // from class: vh.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int W;
            W = DramaDownloadingAdapter.W();
            return Integer.valueOf(W);
        }
    });
    @NotNull
    private static final i<Integer> T = c.b(new Function0() { // from class: vh.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int V;
            V = DramaDownloadingAdapter.V();
            return Integer.valueOf(V);
        }
    });
    @NotNull
    private static final i<Float> U = c.b(new Function0() { // from class: vh.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            float X;
            X = DramaDownloadingAdapter.X();
            return Float.valueOf(X);
        }
    });
    @NotNull
    private LifecycleOwner M;
    @NotNull
    private DownloadingDramaModel N;
    private boolean O;
    @Nullable
    private Function2<? super DownloadingDramaInfo, ? super Integer, Unit> P;
    @Nullable
    private Function1<? super Integer, Unit> Q;

    /* compiled from: DramaDownloadingAdapter.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d() {
            return ((Number) DramaDownloadingAdapter.T.getValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int e() {
            return ((Number) DramaDownloadingAdapter.S.getValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float f() {
            return ((Number) DramaDownloadingAdapter.U.getValue()).floatValue();
        }

        private a() {
        }
    }

    /* compiled from: DramaDownloadingAdapter.kt */
    @Metadata
    /* loaded from: classes7.dex */
    static final class b implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45201a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45201a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f45201a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45201a.invoke(obj);
        }
    }

    public DramaDownloadingAdapter(@NotNull LifecycleOwner lifecycleOwner, @NotNull DownloadingDramaModel viewModel) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.M = lifecycleOwner;
        this.N = viewModel;
        final int i10 = R$layout.item_download_drama_detail_head;
        if (Modifier.isInterface(DownloadPauseHeader.class.getModifiers())) {
            q().put(Reflection.typeOf(DownloadPauseHeader.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter$special$$inlined$addType$1
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
            y().put(Reflection.typeOf(DownloadPauseHeader.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter$special$$inlined$addType$2
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
        final int i11 = R$layout.item_download_drama;
        if (Modifier.isInterface(DownloadingDramaInfo.class.getModifiers())) {
            q().put(Reflection.typeOf(DownloadingDramaInfo.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter$special$$inlined$addType$3
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
            y().put(Reflection.typeOf(DownloadingDramaInfo.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter$special$$inlined$addType$4
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
        D(new Function1() { // from class: vh.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Y;
                Y = DramaDownloadingAdapter.Y(DramaDownloadingAdapter.this, (BindingAdapter.BindingViewHolder) obj);
                return Y;
            }
        });
        au.c.d().p(this);
        this.N.E().observe(this.M, new b(new Function1() { // from class: vh.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Z;
                Z = DramaDownloadingAdapter.Z(DramaDownloadingAdapter.this, (Boolean) obj);
                return Z;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int V() {
        return g.a(104.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int W() {
        return g.a(78.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float X() {
        return z.f51786a.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(final DramaDownloadingAdapter dramaDownloadingAdapter, final BindingAdapter.BindingViewHolder onBind) {
        ItemDownloadDramaBinding itemDownloadDramaBinding;
        int i10;
        int i11;
        ItemDownloadDramaDetailHeadBinding itemDownloadDramaDetailHeadBinding;
        Intrinsics.checkNotNullParameter(onBind, "$this$onBind");
        int itemViewType = onBind.getItemViewType();
        int i12 = 0;
        final boolean z10 = false;
        if (itemViewType == R$layout.item_download_drama_detail_head) {
            DownloadPauseHeader downloadPauseHeader = (DownloadPauseHeader) onBind.j();
            if (onBind.l() == null) {
                Object invoke = ItemDownloadDramaDetailHeadBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
                if (invoke != null) {
                    itemDownloadDramaDetailHeadBinding = (ItemDownloadDramaDetailHeadBinding) invoke;
                    onBind.n(itemDownloadDramaDetailHeadBinding);
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadDramaDetailHeadBinding");
                }
            } else {
                ViewBinding l10 = onBind.l();
                if (l10 != null) {
                    itemDownloadDramaDetailHeadBinding = (ItemDownloadDramaDetailHeadBinding) l10;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadDramaDetailHeadBinding");
                }
            }
            itemDownloadDramaDetailHeadBinding.setLifecycleOwner(dramaDownloadingAdapter.M);
            final int size = dramaDownloadingAdapter.N.C().size();
            if (!dramaDownloadingAdapter.O && size != 0) {
                b0.l(itemDownloadDramaDetailHeadBinding.getRoot());
            } else {
                b0.d(itemDownloadDramaDetailHeadBinding.getRoot());
            }
            Boolean value = dramaDownloadingAdapter.N.E().getValue();
            if (value != null) {
                z10 = value.booleanValue();
            }
            if (z10) {
                itemDownloadDramaDetailHeadBinding.f40345a.setText(onBind.i().getString(R$string.download_pause_all));
            } else {
                itemDownloadDramaDetailHeadBinding.f40345a.setText(onBind.i().getString(R$string.download_start_all));
            }
            itemDownloadDramaDetailHeadBinding.f40345a.setOnClickListener(new View.OnClickListener() { // from class: vh.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DramaDownloadingAdapter.g0(DramaDownloadingAdapter.this, size, z10, view);
                }
            });
        } else if (itemViewType == R$layout.item_download_drama) {
            final DownloadingDramaInfo downloadingDramaInfo = (DownloadingDramaInfo) onBind.j();
            if (onBind.l() == null) {
                Object invoke2 = ItemDownloadDramaBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
                if (invoke2 != null) {
                    itemDownloadDramaBinding = (ItemDownloadDramaBinding) invoke2;
                    onBind.n(itemDownloadDramaBinding);
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadDramaBinding");
                }
            } else {
                ViewBinding l11 = onBind.l();
                if (l11 != null) {
                    itemDownloadDramaBinding = (ItemDownloadDramaBinding) l11;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadDramaBinding");
                }
            }
            itemDownloadDramaBinding.setLifecycleOwner(dramaDownloadingAdapter.M);
            ImageView imageView = itemDownloadDramaBinding.f40333a;
            if (dramaDownloadingAdapter.O) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            imageView.setVisibility(i10);
            ImageView imageView2 = itemDownloadDramaBinding.f40333a;
            if (downloadingDramaInfo.getSelect()) {
                i11 = R$drawable.icon_checkbox_checked;
            } else {
                i11 = R$drawable.icon_checkbox_uncheck;
            }
            imageView2.setImageResource(i11);
            ImageView imageView3 = itemDownloadDramaBinding.f40335c;
            if (dramaDownloadingAdapter.O) {
                i12 = 8;
            }
            imageView3.setVisibility(i12);
            int downloadState = downloadingDramaInfo.getDownloadInfo().getDownloadState();
            if (downloadState != 2) {
                if (downloadState != 3) {
                    if (downloadState != 5) {
                        BaseTextView baseTextView = itemDownloadDramaBinding.f40338f;
                        baseTextView.setText(baseTextView.getContext().getString(R$string.download_waiting));
                        itemDownloadDramaBinding.f40335c.setImageResource(R$drawable.icon_download_pause);
                    } else {
                        BaseTextView baseTextView2 = itemDownloadDramaBinding.f40338f;
                        baseTextView2.setText(baseTextView2.getContext().getString(R$string.download_failed_retry));
                        itemDownloadDramaBinding.f40335c.setImageResource(R$drawable.icon_download_refresh);
                    }
                } else {
                    BaseTextView baseTextView3 = itemDownloadDramaBinding.f40338f;
                    baseTextView3.setText(baseTextView3.getContext().getString(R$string.download_suspend));
                    itemDownloadDramaBinding.f40335c.setImageResource(R$drawable.icon_download_continue);
                }
            } else {
                itemDownloadDramaBinding.f40335c.setImageResource(R$drawable.icon_download_pause);
                itemDownloadDramaBinding.f40338f.setText(downloadingDramaInfo.getDownloadInfo().getShowSpeed());
            }
            ImageView ivDownloadState = itemDownloadDramaBinding.f40335c;
            Intrinsics.checkNotNullExpressionValue(ivDownloadState, "ivDownloadState");
            b0.c(ivDownloadState, 0L, new Function1() { // from class: vh.z
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit h02;
                    h02 = DramaDownloadingAdapter.h0(DramaDownloadingAdapter.this, downloadingDramaInfo, onBind, (View) obj);
                    return h02;
                }
            }, 1, null);
            itemDownloadDramaBinding.f40333a.setOnClickListener(new View.OnClickListener() { // from class: vh.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DramaDownloadingAdapter.i0(DownloadingDramaInfo.this, dramaDownloadingAdapter, view);
                }
            });
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView = itemDownloadDramaBinding.f40334b;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(downloadingDramaInfo.getDownloadInfo().getDramaCoverUrl());
            a aVar = R;
            frescoConfig.setOssWidth(aVar.e());
            frescoConfig.setOssHeight(aVar.d());
            frescoConfig.setCornerRadius(aVar.f());
            frescoConfig.setCornerTransform(true);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            itemDownloadDramaBinding.f40336d.setProgress(downloadingDramaInfo.getDownloadInfo().getShowProgress());
            itemDownloadDramaBinding.f40339g.setText(downloadingDramaInfo.getDownloadInfo().getDramaName());
            itemDownloadDramaBinding.f40337e.setText(onBind.i().getString(R$string.common_current_ep, String.valueOf(downloadingDramaInfo.getDownloadInfo().getDramaNum())));
            itemDownloadDramaBinding.f40340h.setText(s.a(Long.valueOf(downloadingDramaInfo.getDownloadInfo().getDownloadedSize())) + '/' + s.a(Long.valueOf(downloadingDramaInfo.getDownloadInfo().getFileSize())));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z(DramaDownloadingAdapter dramaDownloadingAdapter, Boolean bool) {
        dramaDownloadingAdapter.notifyItemChanged(0);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(DramaDownloadingAdapter dramaDownloadingAdapter, int i10, boolean z10, View view) {
        if (!dramaDownloadingAdapter.O && i10 != 0) {
            if (z10) {
                dramaDownloadingAdapter.j0();
            } else {
                dramaDownloadingAdapter.p0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0(DramaDownloadingAdapter dramaDownloadingAdapter, DownloadingDramaInfo downloadingDramaInfo, BindingAdapter.BindingViewHolder bindingViewHolder, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (dramaDownloadingAdapter.O) {
            return Unit.f60915a;
        }
        Function2<? super DownloadingDramaInfo, ? super Integer, Unit> function2 = dramaDownloadingAdapter.P;
        if (function2 != null) {
            function2.invoke(downloadingDramaInfo, Integer.valueOf(bindingViewHolder.k()));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(DownloadingDramaInfo downloadingDramaInfo, DramaDownloadingAdapter dramaDownloadingAdapter, View view) {
        downloadingDramaInfo.setSelect(!downloadingDramaInfo.getSelect());
        dramaDownloadingAdapter.r0();
        dramaDownloadingAdapter.notifyDataSetChanged();
    }

    private final void j0() {
        DownloadEpisodeManager.f45066a.Q(this.N.C(), new Function0() { // from class: vh.c0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit k02;
                k02 = DramaDownloadingAdapter.k0(DramaDownloadingAdapter.this);
                return k02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(DramaDownloadingAdapter dramaDownloadingAdapter) {
        dramaDownloadingAdapter.N.B();
        dramaDownloadingAdapter.notifyDataSetChanged();
        return Unit.f60915a;
    }

    private final void p0() {
        DownloadEpisodeManager.f45066a.W(this.N.C(), new Function0() { // from class: vh.b0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit q02;
                q02 = DramaDownloadingAdapter.q0(DramaDownloadingAdapter.this);
                return q02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(DramaDownloadingAdapter dramaDownloadingAdapter) {
        dramaDownloadingAdapter.N.B();
        dramaDownloadingAdapter.notifyDataSetChanged();
        return Unit.f60915a;
    }

    private final void r0() {
        Function1<? super Integer, Unit> function1 = this.Q;
        if (function1 != null) {
            List<DownloadingDramaInfo> C = this.N.C();
            int i10 = 0;
            if (!(C instanceof Collection) || !C.isEmpty()) {
                for (DownloadingDramaInfo downloadingDramaInfo : C) {
                    if (downloadingDramaInfo.getSelect() && (i10 = i10 + 1) < 0) {
                        CollectionsKt.x();
                    }
                }
            }
            function1.invoke(Integer.valueOf(i10));
        }
    }

    public final void d0(boolean z10) {
        this.O = z10;
        notifyDataSetChanged();
    }

    public final void e0() {
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.N.C()) {
            if (((DownloadingDramaInfo) obj).getSelect()) {
                arrayList.add(obj);
            }
        }
        List asMutableList = TypeIntrinsics.asMutableList(arrayList);
        DownloadEpisodeManager.U(DownloadEpisodeManager.f45066a, asMutableList, null, 2, null);
        this.N.C().removeAll(asMutableList);
        r0();
        notifyDataSetChanged();
    }

    @NotNull
    public final DownloadingDramaModel f0() {
        return this.N;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void handleDownloadStateEvent(@NotNull com.startshorts.androidplayer.ui.activity.download.b event) {
        DownloadTaskInfo downloadInfo;
        Intrinsics.checkNotNullParameter(event, "event");
        int i10 = 0;
        int i11 = -1;
        if (event instanceof b.f) {
            DownloadTaskInfo a10 = ((b.f) event).a();
            List<DownloadingDramaInfo> C = this.N.C();
            if (C.size() > 0) {
                s.b("监听通知下载状态变化：" + a10);
                DownloadingDramaInfo downloadingDramaInfo = null;
                for (Object obj : C) {
                    int i12 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.y();
                    }
                    DownloadingDramaInfo downloadingDramaInfo2 = (DownloadingDramaInfo) obj;
                    if (Intrinsics.areEqual(a10.getCacheKey(), downloadingDramaInfo2.getDownloadInfo().getCacheKey())) {
                        i11 = i10;
                        downloadingDramaInfo = downloadingDramaInfo2;
                    }
                    i10 = i12;
                }
                if (downloadingDramaInfo != null && (downloadInfo = downloadingDramaInfo.getDownloadInfo()) != null && downloadInfo.getDownloadState() == 4) {
                    if (i11 >= 0) {
                        C.remove(i11);
                    }
                    int i13 = i11 + 1;
                    if (i13 > 0) {
                        notifyItemRemoved(i13);
                    }
                } else {
                    int i14 = i11 + 1;
                    if (i14 > 0) {
                        notifyItemChanged(i14);
                    }
                }
            }
            this.N.B();
        } else if (event instanceof b.d) {
            DownloadTaskInfo a11 = ((b.d) event).a();
            List<DownloadingDramaInfo> C2 = this.N.C();
            if (C2.size() > 0) {
                s.b("监听通知下载状态变化：" + a11);
                for (Object obj2 : C2) {
                    int i15 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.y();
                    }
                    DownloadingDramaInfo downloadingDramaInfo3 = (DownloadingDramaInfo) obj2;
                    if (Intrinsics.areEqual(a11.getCacheKey(), downloadingDramaInfo3.getDownloadInfo().getCacheKey())) {
                        downloadingDramaInfo3.getDownloadInfo();
                        i11 = i10;
                    }
                    i10 = i15;
                }
                int i16 = i11 + 1;
                if (i16 > 0) {
                    notifyItemChanged(i16);
                }
            }
        }
    }

    public final void l0() {
        au.c.d().r(this);
    }

    public final void m0(boolean z10) {
        for (DownloadingDramaInfo downloadingDramaInfo : this.N.C()) {
            downloadingDramaInfo.setSelect(z10);
        }
        r0();
        notifyDataSetChanged();
    }

    public final void n0(@Nullable Function2<? super DownloadingDramaInfo, ? super Integer, Unit> function2) {
        this.P = function2;
    }

    public final void o0(@Nullable Function1<? super Integer, Unit> function1) {
        this.Q = function1;
    }
}
