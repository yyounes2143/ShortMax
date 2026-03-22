package com.startshorts.androidplayer.ui.activity.download.adapter;

import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.viewbinding.ViewBinding;
import au.l;
import com.drake.brv.BindingAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadedDramaInfo;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDownloadedDramaEpBinding;
import com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager;
import com.startshorts.androidplayer.ui.activity.download.DownloadedDramaModel;
import com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadedAdapter;
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
/* compiled from: DramaDownloadedAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDramaDownloadedAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DramaDownloadedAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadedAdapter\n+ 2 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n*L\n1#1,144:1\n243#2,6:145\n1863#3,2:151\n774#3:153\n865#3,2:154\n1782#3,4:156\n774#3:160\n865#3,2:161\n1160#4,7:163\n*S KotlinDebug\n*F\n+ 1 DramaDownloadedAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadedAdapter\n*L\n41#1:145,6\n93#1:151,2\n99#1:153\n99#1:154,2\n110#1:156,4\n118#1:160\n118#1:161,2\n45#1:163,7\n*E\n"})
/* loaded from: classes7.dex */
public final class DramaDownloadedAdapter extends BindingAdapter {
    @NotNull
    public static final a S = new a(null);
    @NotNull
    private static final i<Integer> T = c.b(new Function0() { // from class: vh.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int T2;
            T2 = DramaDownloadedAdapter.T();
            return Integer.valueOf(T2);
        }
    });
    @NotNull
    private static final i<Integer> U = c.b(new Function0() { // from class: vh.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int S2;
            S2 = DramaDownloadedAdapter.S();
            return Integer.valueOf(S2);
        }
    });
    @NotNull
    private static final i<Float> V = c.b(new Function0() { // from class: vh.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            float U2;
            U2 = DramaDownloadedAdapter.U();
            return Float.valueOf(U2);
        }
    });
    @NotNull
    private LifecycleOwner M;
    @NotNull
    private DownloadedDramaModel N;
    private boolean O;
    @Nullable
    private Function2<? super DownloadedDramaInfo, ? super Integer, Unit> P;
    @Nullable
    private Function1<? super Integer, Unit> Q;
    @Nullable
    private Function0<Unit> R;

    /* compiled from: DramaDownloadedAdapter.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d() {
            return ((Number) DramaDownloadedAdapter.U.getValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int e() {
            return ((Number) DramaDownloadedAdapter.T.getValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float f() {
            return ((Number) DramaDownloadedAdapter.V.getValue()).floatValue();
        }

        private a() {
        }
    }

    public DramaDownloadedAdapter(@NotNull LifecycleOwner lifecycleOwner, @NotNull DownloadedDramaModel viewModel) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.M = lifecycleOwner;
        this.N = viewModel;
        final int i10 = R$layout.item_downloaded_drama_ep;
        if (Modifier.isInterface(DownloadedDramaInfo.class.getModifiers())) {
            q().put(Reflection.typeOf(DownloadedDramaInfo.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadedAdapter$special$$inlined$addType$1
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
            y().put(Reflection.typeOf(DownloadedDramaInfo.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadedAdapter$special$$inlined$addType$2
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
        D(new Function1() { // from class: vh.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit V2;
                V2 = DramaDownloadedAdapter.V(DramaDownloadedAdapter.this, (BindingAdapter.BindingViewHolder) obj);
                return V2;
            }
        });
        au.c.d().p(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int S() {
        return g.a(104.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int T() {
        return g.a(78.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float U() {
        return z.f51786a.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(final DramaDownloadedAdapter dramaDownloadedAdapter, final BindingAdapter.BindingViewHolder onBind) {
        ItemDownloadedDramaEpBinding itemDownloadedDramaEpBinding;
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(onBind, "$this$onBind");
        final DownloadedDramaInfo downloadedDramaInfo = (DownloadedDramaInfo) onBind.j();
        if (onBind.l() == null) {
            Object invoke = ItemDownloadedDramaEpBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
            if (invoke != null) {
                itemDownloadedDramaEpBinding = (ItemDownloadedDramaEpBinding) invoke;
                onBind.n(itemDownloadedDramaEpBinding);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadedDramaEpBinding");
            }
        } else {
            ViewBinding l10 = onBind.l();
            if (l10 != null) {
                itemDownloadedDramaEpBinding = (ItemDownloadedDramaEpBinding) l10;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadedDramaEpBinding");
            }
        }
        itemDownloadedDramaEpBinding.setLifecycleOwner(dramaDownloadedAdapter.M);
        ImageView imageView = itemDownloadedDramaEpBinding.f40366a;
        int i12 = 8;
        if (dramaDownloadedAdapter.O) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        imageView.setVisibility(i10);
        ImageView imageView2 = itemDownloadedDramaEpBinding.f40366a;
        if (downloadedDramaInfo.getSelect()) {
            i11 = R$drawable.icon_checkbox_checked;
        } else {
            i11 = R$drawable.icon_checkbox_uncheck_white;
        }
        imageView2.setImageResource(i11);
        ImageView imageView3 = itemDownloadedDramaEpBinding.f40368c;
        if (!dramaDownloadedAdapter.O && downloadedDramaInfo.getDownloadInfo().isLockType()) {
            i12 = 0;
        }
        imageView3.setVisibility(i12);
        itemDownloadedDramaEpBinding.f40366a.setOnClickListener(new View.OnClickListener() { // from class: vh.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DramaDownloadedAdapter.e0(DownloadedDramaInfo.this, dramaDownloadedAdapter, view);
            }
        });
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = itemDownloadedDramaEpBinding.f40367b;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(downloadedDramaInfo.getDownloadInfo().getDramaCoverUrl());
        a aVar = S;
        frescoConfig.setOssWidth(aVar.e());
        frescoConfig.setOssHeight(aVar.d());
        frescoConfig.setCornerRadius(aVar.f());
        frescoConfig.setCornerTransform(true);
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        itemDownloadedDramaEpBinding.f40370e.setText(s.a(Long.valueOf(downloadedDramaInfo.getDownloadInfo().getFileSize())));
        itemDownloadedDramaEpBinding.f40369d.setText(onBind.i().getString(R$string.common_current_ep, String.valueOf(downloadedDramaInfo.getDownloadInfo().getDramaNum())));
        View root = itemDownloadedDramaEpBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: vh.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit f02;
                f02 = DramaDownloadedAdapter.f0(DramaDownloadedAdapter.this, downloadedDramaInfo, onBind, (View) obj);
                return f02;
            }
        }, 1, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(DramaDownloadedAdapter dramaDownloadedAdapter, List list) {
        gt.g.d(ViewModelKt.getViewModelScope(dramaDownloadedAdapter.N), null, null, new DramaDownloadedAdapter$deleteSelect$1$1(dramaDownloadedAdapter, list, null), 3, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(DownloadedDramaInfo downloadedDramaInfo, DramaDownloadedAdapter dramaDownloadedAdapter, View view) {
        downloadedDramaInfo.setSelect(!downloadedDramaInfo.getSelect());
        dramaDownloadedAdapter.l0();
        dramaDownloadedAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f0(DramaDownloadedAdapter dramaDownloadedAdapter, DownloadedDramaInfo downloadedDramaInfo, BindingAdapter.BindingViewHolder bindingViewHolder, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (dramaDownloadedAdapter.O) {
            downloadedDramaInfo.setSelect(!downloadedDramaInfo.getSelect());
            dramaDownloadedAdapter.l0();
            dramaDownloadedAdapter.notifyDataSetChanged();
            return Unit.f60915a;
        }
        Function2<? super DownloadedDramaInfo, ? super Integer, Unit> function2 = dramaDownloadedAdapter.P;
        if (function2 != null) {
            function2.invoke(downloadedDramaInfo, Integer.valueOf(bindingViewHolder.k()));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l0() {
        List<DownloadedDramaInfo> D = this.N.D();
        int i10 = 0;
        if (!(D instanceof Collection) || !D.isEmpty()) {
            for (DownloadedDramaInfo downloadedDramaInfo : D) {
                if (downloadedDramaInfo.getSelect() && (i10 = i10 + 1) < 0) {
                    CollectionsKt.x();
                }
            }
        }
        Function1<? super Integer, Unit> function1 = this.Q;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(i10));
        }
    }

    public final void a0(boolean z10) {
        this.O = z10;
        notifyDataSetChanged();
    }

    public final void b0() {
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.N.D()) {
            if (((DownloadedDramaInfo) obj).getSelect()) {
                arrayList.add(obj);
            }
        }
        final List<DownloadedDramaInfo> asMutableList = TypeIntrinsics.asMutableList(arrayList);
        DownloadEpisodeManager.f45066a.S(asMutableList, new Function0() { // from class: vh.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit c02;
                c02 = DramaDownloadedAdapter.c0(DramaDownloadedAdapter.this, asMutableList);
                return c02;
            }
        });
    }

    @NotNull
    public final DownloadedDramaModel d0() {
        return this.N;
    }

    public final void g0() {
        au.c.d().r(this);
    }

    public final void h0(boolean z10) {
        for (DownloadedDramaInfo downloadedDramaInfo : this.N.D()) {
            downloadedDramaInfo.setSelect(z10);
        }
        l0();
        notifyDataSetChanged();
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void handleDownloadStateEvent(@NotNull b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event instanceof b.e) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : ((b.e) event).a()) {
                if (((DownloadTaskInfo) obj).getShortPlayId() == this.N.F()) {
                    arrayList.add(obj);
                }
            }
            this.N.J(TypeIntrinsics.asMutableList(arrayList));
            l0();
            Function0<Unit> function0 = this.R;
            if (function0 != null) {
                function0.invoke();
            }
            notifyDataSetChanged();
        } else if (event instanceof b.f) {
            DownloadTaskInfo a10 = ((b.f) event).a();
            if (a10.getDownloadState() == 4) {
                s.b("监听通知下载状态变化：" + a10);
                if (a10.getShortPlayId() == this.N.F()) {
                    this.N.B(a10);
                    l0();
                    Function0<Unit> function02 = this.R;
                    if (function02 != null) {
                        function02.invoke();
                    }
                    notifyDataSetChanged();
                }
            }
        }
    }

    public final void i0(@Nullable Function2<? super DownloadedDramaInfo, ? super Integer, Unit> function2) {
        this.P = function2;
    }

    public final void j0(@Nullable Function0<Unit> function0) {
        this.R = function0;
    }

    public final void k0(@Nullable Function1<? super Integer, Unit> function1) {
        this.Q = function1;
    }
}
