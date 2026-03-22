package com.startshorts.androidplayer.ui.activity.download;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.DownloadActivityListItem;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.bean.shorts.QueryDownloadEpisodesResult;
import com.startshorts.androidplayer.databinding.ActivityDownloadChooseBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.PageStateActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadChooseActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadChooseViewModel;
import com.startshorts.androidplayer.ui.activity.download.adapter.DownloadChooseListAdapter;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import jk.b0;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.k;
import uh.i0;
import uh.s;
/* compiled from: DownloadChooseActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadChooseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadChooseActivity.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1948#2,14:266\n*S KotlinDebug\n*F\n+ 1 DownloadChooseActivity.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity\n*L\n110#1:266,14\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadChooseActivity extends PageStateActivity<ActivityDownloadChooseBinding> {
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    public static final a f45038x = new a(null);
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private BaseEpisode f45039r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private ShortTaskInfo f45040s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private DownloadChooseListAdapter f45041t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final i f45042u = kotlin.c.b(new Function0() { // from class: uh.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DownloadChooseViewModel x02;
            x02 = DownloadChooseActivity.x0(DownloadChooseActivity.this);
            return x02;
        }
    });
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private PlayResolution f45043v = PlayResolution.Companion.getPLAY_RESOLUTION_AUTO();
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private List<PlayResolution> f45044w = new ArrayList();

    /* compiled from: DownloadChooseActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context, @Nullable Integer num, @Nullable Integer num2, @Nullable BaseEpisode baseEpisode) {
            int i10;
            Intrinsics.checkNotNullParameter(context, "context");
            if (i0.f68447a.b()) {
                return;
            }
            Intent intent = new Intent(context, DownloadChooseActivity.class);
            int i11 = 0;
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
            }
            intent.putExtra("solution", i10);
            if (num2 != null) {
                i11 = num2.intValue();
            }
            intent.putExtra("play_solution", i11);
            if (baseEpisode != null) {
                intent.putExtra("episode", l.d(baseEpisode));
            }
            context.startActivity(intent);
        }

        private a() {
        }
    }

    /* compiled from: DownloadChooseActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DownloadChooseActivity.this.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadChooseActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45046a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45046a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f45046a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45046a.invoke(obj);
        }
    }

    private final void i0() {
        if (this.f45043v.isAuto()) {
            Iterator<T> it = this.f45044w.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                if (it.hasNext()) {
                    int resolutionValue = ((PlayResolution) next).getResolutionValue();
                    do {
                        Object next2 = it.next();
                        int resolutionValue2 = ((PlayResolution) next2).getResolutionValue();
                        if (resolutionValue < resolutionValue2) {
                            next = next2;
                            resolutionValue = resolutionValue2;
                        }
                    } while (it.hasNext());
                    this.f45043v = (PlayResolution) next;
                } else {
                    this.f45043v = (PlayResolution) next;
                }
            } else {
                throw new NoSuchElementException();
            }
        }
        ((ActivityDownloadChooseBinding) E()).f38205c.setText(this.f45043v.getLabel(this));
    }

    private final DownloadChooseViewModel j0() {
        return (DownloadChooseViewModel) this.f45042u.getValue();
    }

    private final void k0() {
        w0();
    }

    private final void l0() {
        j0().B().observe(this, new c(new Function1() { // from class: uh.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m02;
                m02 = DownloadChooseActivity.m0(DownloadChooseActivity.this, (QueryDownloadEpisodesResult) obj);
                return m02;
            }
        }));
        j0().E().observe(this, new c(new Function1() { // from class: uh.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit n02;
                n02 = DownloadChooseActivity.n0(DownloadChooseActivity.this, (Boolean) obj);
                return n02;
            }
        }));
        j0().D().observe(this, new c(new Function1() { // from class: uh.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit o02;
                o02 = DownloadChooseActivity.o0(DownloadChooseActivity.this, (Integer) obj);
                return o02;
            }
        }));
        DownloadEpisodeManager.f45066a.M().observe(this, new c(new Function1() { // from class: uh.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit p02;
                p02 = DownloadChooseActivity.p0(DownloadChooseActivity.this, (Long) obj);
                return p02;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(DownloadChooseActivity downloadChooseActivity, QueryDownloadEpisodesResult queryDownloadEpisodesResult) {
        if (queryDownloadEpisodesResult != null) {
            RecyclerView recyclerView = ((ActivityDownloadChooseBinding) downloadChooseActivity.E()).f38211i;
            Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
            o1.b.f(recyclerView, downloadChooseActivity.j0().C());
            downloadChooseActivity.P();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n0(DownloadChooseActivity downloadChooseActivity, Boolean bool) {
        if (bool != null) {
            if (!bool.booleanValue()) {
                ((ActivityDownloadChooseBinding) downloadChooseActivity.E()).f38214l.setText(downloadChooseActivity.getString(R$string.select_all));
            } else {
                ((ActivityDownloadChooseBinding) downloadChooseActivity.E()).f38214l.setText(downloadChooseActivity.getString(R$string.download_select_cancel));
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(DownloadChooseActivity downloadChooseActivity, Integer num) {
        if (num != null) {
            if (num.intValue() == 0) {
                ((ActivityDownloadChooseBinding) downloadChooseActivity.E()).f38216n.setText(downloadChooseActivity.getString(R$string.view_download));
            } else {
                ((ActivityDownloadChooseBinding) downloadChooseActivity.E()).f38216n.setText(downloadChooseActivity.getString(R$string.view_download_count, num.toString()));
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p0(DownloadChooseActivity downloadChooseActivity, Long l10) {
        if (l10 != null) {
            String e10 = s.e(l10.longValue());
            String string = downloadChooseActivity.getString(R$string.store_remain, e10);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new ForegroundColorSpan(downloadChooseActivity.getColor(R$color.download_storage_remain)), 0, e10.length(), 33);
            ((ActivityDownloadChooseBinding) downloadChooseActivity.E()).f38215m.setText(spannableString);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r0(DownloadChooseListAdapter downloadChooseListAdapter, DownloadChooseActivity downloadChooseActivity, DownloadActivityListItem item, int i10) {
        ShortTaskInfo shortTaskInfo;
        Intrinsics.checkNotNullParameter(item, "item");
        if (Intrinsics.areEqual(downloadChooseListAdapter.T().E().getValue(), Boolean.TRUE)) {
            if (item.isSelect()) {
                item.setSelect(false);
            } else if (item.isSelectAble()) {
                item.setSelect(true);
            }
            downloadChooseListAdapter.notifyItemChanged(i10);
            downloadChooseListAdapter.Q();
        } else if (item.isSelectAble() && (shortTaskInfo = downloadChooseActivity.f45040s) != null) {
            gt.g.d(LifecycleOwnerKt.getLifecycleScope(downloadChooseActivity), null, null, new DownloadChooseActivity$initView$2$1$1$1(shortTaskInfo, item, downloadChooseActivity, downloadChooseListAdapter, i10, null), 3, null);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(DownloadChooseActivity downloadChooseActivity, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Integer value = downloadChooseActivity.j0().D().getValue();
        s.b("tvViewDownload click :" + value);
        if (value != null && value.intValue() == 0) {
            DownloadManageActivity.f45123v.a(downloadChooseActivity);
        } else {
            DownloadChooseListAdapter downloadChooseListAdapter = downloadChooseActivity.f45041t;
            if (downloadChooseListAdapter != null) {
                downloadChooseListAdapter.R(downloadChooseActivity.f45040s, downloadChooseActivity.f45043v.getResolutionValue());
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t0(DownloadChooseActivity downloadChooseActivity, View it) {
        boolean z10;
        Intrinsics.checkNotNullParameter(it, "it");
        Boolean value = downloadChooseActivity.j0().E().getValue();
        if (value != null) {
            z10 = value.booleanValue();
        } else {
            z10 = false;
        }
        if (z10) {
            DownloadChooseListAdapter downloadChooseListAdapter = downloadChooseActivity.f45041t;
            if (downloadChooseListAdapter != null) {
                downloadChooseListAdapter.P();
            }
        } else {
            DownloadChooseListAdapter downloadChooseListAdapter2 = downloadChooseActivity.f45041t;
            if (downloadChooseListAdapter2 != null) {
                downloadChooseListAdapter2.W();
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(final DownloadChooseActivity downloadChooseActivity, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ClarityChooseDialog clarityChooseDialog = new ClarityChooseDialog();
        clarityChooseDialog.R(downloadChooseActivity.f45043v, downloadChooseActivity.f45044w);
        clarityChooseDialog.V(new Function1() { // from class: uh.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit v02;
                v02 = DownloadChooseActivity.v0(DownloadChooseActivity.this, (d) obj);
                return v02;
            }
        });
        FragmentManager supportFragmentManager = downloadChooseActivity.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        clarityChooseDialog.v(supportFragmentManager);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(DownloadChooseActivity downloadChooseActivity, uh.d solution) {
        Intrinsics.checkNotNullParameter(solution, "solution");
        downloadChooseActivity.f45043v = PlayResolution.Companion.create(solution.b());
        downloadChooseActivity.i0();
        return Unit.f60915a;
    }

    private final void w0() {
        BaseEpisode baseEpisode = this.f45039r;
        if (baseEpisode != null) {
            int shortPlayId = baseEpisode.getShortPlayId();
            U();
            j0().F(shortPlayId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadChooseViewModel x0(DownloadChooseActivity downloadChooseActivity) {
        return (DownloadChooseViewModel) new ViewModelProvider(downloadChooseActivity).get(DownloadChooseViewModel.class);
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void handleDownloadStateEvent(@NotNull com.startshorts.androidplayer.ui.activity.download.b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event instanceof b.C0630b) {
            finish();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_download_choose;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        BaseEpisode baseEpisode;
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        String stringExtra = getIntent().getStringExtra("episode");
        if (stringExtra != null) {
            baseEpisode = (BaseEpisode) l.b(stringExtra, BaseEpisode.class);
        } else {
            baseEpisode = null;
        }
        this.f45039r = baseEpisode;
        j0().H(this.f45039r);
        BaseEpisode baseEpisode2 = this.f45039r;
        if (baseEpisode2 != null) {
            this.f45040s = new ShortTaskInfo(baseEpisode2.getShortPlayId(), baseEpisode2.getShortPlayCode(), baseEpisode2.getCheckedShortPlayName(), baseEpisode2.getRowDramaCover(), baseEpisode2.getSummary());
        }
        if (this.f45039r == null) {
            finish();
        }
        this.f45043v = PlayResolution.Companion.create(0);
        this.f45044w.addAll(k.m(k.f64864a, this.f45039r, false, 2, null));
        LinearLayout llClarity = ((ActivityDownloadChooseBinding) E()).f38207e;
        Intrinsics.checkNotNullExpressionValue(llClarity, "llClarity");
        b0.c(llClarity, 0L, new Function1() { // from class: uh.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit u02;
                u02 = DownloadChooseActivity.u0(DownloadChooseActivity.this, (View) obj);
                return u02;
            }
        }, 1, null);
        l0();
        q0();
        i0();
        k0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        DownloadChooseListAdapter downloadChooseListAdapter = this.f45041t;
        if (downloadChooseListAdapter != null) {
            downloadChooseListAdapter.V();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        BaseEpisode baseEpisode = this.f45039r;
        if (baseEpisode != null) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            String shortPlayCode = baseEpisode.getShortPlayCode();
            if (shortPlayCode == null) {
                shortPlayCode = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            bundle.putString("from", shortPlayCode);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "download_show", bundle, 0L, 4, null);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    public final void q0() {
        String str;
        View toolbarView = ((ActivityDownloadChooseBinding) E()).f38212j;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        ((ActivityDownloadChooseBinding) E()).f38208f.setOnClickListener(new b());
        BaseTextView baseTextView = ((ActivityDownloadChooseBinding) E()).f38209g;
        BaseEpisode baseEpisode = this.f45039r;
        if (baseEpisode != null) {
            str = baseEpisode.getCheckedShortPlayName();
        } else {
            str = null;
        }
        baseTextView.setText(str);
        final DownloadChooseListAdapter downloadChooseListAdapter = new DownloadChooseListAdapter(this, j0());
        downloadChooseListAdapter.X(new Function2() { // from class: uh.g
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit r02;
                r02 = DownloadChooseActivity.r0(DownloadChooseListAdapter.this, this, (DownloadActivityListItem) obj, ((Integer) obj2).intValue());
                return r02;
            }
        });
        this.f45041t = downloadChooseListAdapter;
        BaseTextView tvViewDownload = ((ActivityDownloadChooseBinding) E()).f38216n;
        Intrinsics.checkNotNullExpressionValue(tvViewDownload, "tvViewDownload");
        b0.c(tvViewDownload, 0L, new Function1() { // from class: uh.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit s02;
                s02 = DownloadChooseActivity.s0(DownloadChooseActivity.this, (View) obj);
                return s02;
            }
        }, 1, null);
        RecyclerView recyclerView = ((ActivityDownloadChooseBinding) E()).f38211i;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        o1.b.c(recyclerView, 5, 0, false, false, 14, null);
        ((ActivityDownloadChooseBinding) E()).f38211i.setItemAnimator(null);
        ((ActivityDownloadChooseBinding) E()).f38211i.setAdapter(this.f45041t);
        BaseTextView tvSelectAll = ((ActivityDownloadChooseBinding) E()).f38214l;
        Intrinsics.checkNotNullExpressionValue(tvSelectAll, "tvSelectAll");
        b0.c(tvSelectAll, 0L, new Function1() { // from class: uh.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit t02;
                t02 = DownloadChooseActivity.t0(DownloadChooseActivity.this, (View) obj);
                return t02;
            }
        }, 1, null);
        DownloadEpisodeManager.f45066a.f0();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "DownloadChooseActivity";
    }
}
