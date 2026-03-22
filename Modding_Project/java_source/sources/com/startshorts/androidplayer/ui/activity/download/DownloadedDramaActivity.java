package com.startshorts.androidplayer.ui.activity.download;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import au.l;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.download.DownloadedDramaInfo;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.databinding.ActivityDownloadManageBinding;
import com.startshorts.androidplayer.ui.activity.base.PageStateActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadedDramaActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadedDramaModel;
import com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadedAdapter;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.activity.download.e;
import com.startshorts.androidplayer.ui.activity.download.f;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.i0;
import uh.s;
/* compiled from: DownloadedDramaActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DownloadedDramaActivity extends PageStateActivity<ActivityDownloadManageBinding> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f45138w = new a(null);
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private DramaDownloadedAdapter f45139r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final i f45140s = kotlin.c.b(new Function0() { // from class: uh.o0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DownloadedDramaModel l02;
            l02 = DownloadedDramaActivity.l0(DownloadedDramaActivity.this);
            return l02;
        }
    });

    /* renamed from: t  reason: collision with root package name */
    private boolean f45141t;

    /* renamed from: u  reason: collision with root package name */
    private int f45142u;

    /* renamed from: v  reason: collision with root package name */
    private int f45143v;

    /* compiled from: DownloadedDramaActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (i0.f68447a.b()) {
                return;
            }
            Intent intent = new Intent(context, DownloadedDramaActivity.class);
            intent.putExtra("DRAMA_ID", i10);
            context.startActivity(intent);
        }

        private a() {
        }
    }

    /* compiled from: DownloadedDramaActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DownloadedDramaActivity.this.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadedDramaActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45145a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45145a = function;
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
            return this.f45145a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45145a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(DownloadedDramaActivity downloadedDramaActivity) {
        DramaDownloadedAdapter dramaDownloadedAdapter = downloadedDramaActivity.f45139r;
        if (dramaDownloadedAdapter != null) {
            dramaDownloadedAdapter.b0();
        }
        if (downloadedDramaActivity.n0().D().size() == 0) {
            downloadedDramaActivity.f45141t = false;
            downloadedDramaActivity.C0();
            downloadedDramaActivity.T();
        }
        u.j(u.f51776a, R$string.download_delete_success, 0, 2, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0() {
        DownloadEpisodeManager.f45066a.f0();
        if (n0().D().isEmpty()) {
            this.f45141t = false;
            T();
            b0.d(((ActivityDownloadManageBinding) E()).f38223c);
        } else {
            b0.l(((ActivityDownloadManageBinding) E()).f38223c);
            O();
        }
        C0();
    }

    private final void C0() {
        int i10;
        int i11;
        int i12;
        int i13;
        ActivityDownloadManageBinding activityDownloadManageBinding = (ActivityDownloadManageBinding) E();
        ImageView imageView = activityDownloadManageBinding.f38223c;
        int i14 = 8;
        if (!this.f45141t && n0().D().size() != 0) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        imageView.setVisibility(i10);
        BaseTextView baseTextView = activityDownloadManageBinding.f38229i;
        if (this.f45141t && n0().D().size() > 0) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        baseTextView.setVisibility(i11);
        BaseTextView baseTextView2 = activityDownloadManageBinding.f38230j;
        if (this.f45141t && n0().D().size() > 0) {
            i12 = 0;
        } else {
            i12 = 8;
        }
        baseTextView2.setVisibility(i12);
        BaseTextView baseTextView3 = activityDownloadManageBinding.f38232l;
        if (this.f45141t && n0().D().size() > 0) {
            i13 = 0;
        } else {
            i13 = 8;
        }
        baseTextView3.setVisibility(i13);
        View view = activityDownloadManageBinding.f38222b;
        if (this.f45141t && n0().D().size() > 0) {
            i14 = 0;
        }
        view.setVisibility(i14);
        DramaDownloadedAdapter dramaDownloadedAdapter = this.f45139r;
        if (dramaDownloadedAdapter != null) {
            dramaDownloadedAdapter.a0(this.f45141t);
        }
    }

    public static final /* synthetic */ ActivityDownloadManageBinding i0(DownloadedDramaActivity downloadedDramaActivity) {
        return (ActivityDownloadManageBinding) downloadedDramaActivity.E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadedDramaModel l0(final DownloadedDramaActivity downloadedDramaActivity) {
        final DownloadedDramaModel downloadedDramaModel = (DownloadedDramaModel) new ViewModelProvider(downloadedDramaActivity).get(DownloadedDramaModel.class);
        downloadedDramaModel.E().observe(downloadedDramaActivity, new c(new Function1() { // from class: uh.r0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m02;
                m02 = DownloadedDramaActivity.m0(DownloadedDramaActivity.this, downloadedDramaModel, (com.startshorts.androidplayer.ui.activity.download.f) obj);
                return m02;
            }
        }));
        return downloadedDramaModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(DownloadedDramaActivity downloadedDramaActivity, DownloadedDramaModel downloadedDramaModel, f fVar) {
        if (fVar instanceof f.b) {
            gt.g.d(LifecycleOwnerKt.getLifecycleScope(downloadedDramaActivity), null, null, new DownloadedDramaActivity$downloadViewModel$2$1$1$1(downloadedDramaActivity, downloadedDramaModel, fVar, null), 3, null);
        } else if (fVar instanceof f.a) {
            f.a aVar = (f.a) fVar;
            if (aVar.a().getState() == 1) {
                downloadedDramaActivity.V();
            } else {
                downloadedDramaActivity.W(aVar.a().getMsg());
            }
        }
        return Unit.f60915a;
    }

    private final DownloadedDramaModel n0() {
        return (DownloadedDramaModel) this.f45140s.getValue();
    }

    private final void o0() {
        n0().I(new e.a(this.f45143v));
    }

    private final void p0() {
        DownloadEpisodeManager.f45066a.M().observe(this, new c(new Function1() { // from class: uh.p0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit q02;
                q02 = DownloadedDramaActivity.q0(DownloadedDramaActivity.this, (Long) obj);
                return q02;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(DownloadedDramaActivity downloadedDramaActivity, Long l10) {
        if (l10 != null) {
            String e10 = s.e(l10.longValue());
            String a10 = s.a(Long.valueOf(downloadedDramaActivity.n0().C()));
            String string = downloadedDramaActivity.getString(R$string.downloaded_remain_size, a10, e10);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            int q02 = StringsKt.q0(string, e10, 0, false, 6, null);
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new ForegroundColorSpan(downloadedDramaActivity.getColor(R$color.download_storage_remain)), 0, a10.length(), 33);
            spannableString.setSpan(new ForegroundColorSpan(downloadedDramaActivity.getColor(R$color.download_storage_remain)), q02, e10.length() + q02, 33);
            ((ActivityDownloadManageBinding) downloadedDramaActivity.E()).f38231k.setText(spannableString);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(DownloadedDramaActivity downloadedDramaActivity, DownloadedDramaInfo info, int i10) {
        Intrinsics.checkNotNullParameter(info, "info");
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("offline_download");
        immersionParams.setType(6);
        immersionParams.setEpisodeNum(info.getDownloadInfo().getDramaNum());
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(info.getDownloadInfo().getShortPlayId());
        immersionShortsInfo.setShortPlayCode(info.getDownloadInfo().getShortPlayCode());
        immersionShortsInfo.setShortsName(info.getDownloadInfo().getDramaName());
        immersionShortsInfo.setCover(info.getDownloadInfo().getShortCoverUrl());
        immersionShortsInfo.setUpack(info.getDownloadInfo().getUpack());
        immersionShortsInfo.setPreferredResolution(info.getDownloadInfo().getSolution());
        immersionParams.setShortsInfo(immersionShortsInfo);
        Unit unit = Unit.f60915a;
        aVar.a(downloadedDramaActivity, immersionParams);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t0(DownloadedDramaActivity downloadedDramaActivity, int i10) {
        int i11;
        String string;
        int i12;
        downloadedDramaActivity.f45142u = i10;
        BaseTextView baseTextView = ((ActivityDownloadManageBinding) downloadedDramaActivity.E()).f38232l;
        if (i10 > 0) {
            i11 = R$string.download_deselect_all;
        } else {
            i11 = R$string.download_select_all;
        }
        baseTextView.setText(downloadedDramaActivity.getString(i11));
        BaseTextView baseTextView2 = ((ActivityDownloadManageBinding) downloadedDramaActivity.E()).f38230j;
        if (i10 > 0) {
            string = downloadedDramaActivity.getString(R$string.download_delete_num, String.valueOf(i10));
        } else {
            string = downloadedDramaActivity.getString(R$string.download_delete);
        }
        baseTextView2.setText(string);
        BaseTextView baseTextView3 = ((ActivityDownloadManageBinding) downloadedDramaActivity.E()).f38230j;
        if (i10 > 0) {
            i12 = R$color.download_delete_btn;
        } else {
            i12 = R$color.download_divider;
        }
        baseTextView3.setTextColor(downloadedDramaActivity.getColor(i12));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(DownloadedDramaActivity downloadedDramaActivity) {
        gt.g.d(LifecycleOwnerKt.getLifecycleScope(downloadedDramaActivity), null, null, new DownloadedDramaActivity$initRecyclerView$1$3$1(downloadedDramaActivity, null), 3, null);
        return Unit.f60915a;
    }

    private final void v0() {
        View toolbarView = ((ActivityDownloadManageBinding) E()).f38228h;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        ((ActivityDownloadManageBinding) E()).f38224d.setOnClickListener(new b());
        ActivityDownloadManageBinding activityDownloadManageBinding = (ActivityDownloadManageBinding) E();
        activityDownloadManageBinding.f38223c.setOnClickListener(new View.OnClickListener() { // from class: uh.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadedDramaActivity.w0(DownloadedDramaActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38229i.setOnClickListener(new View.OnClickListener() { // from class: uh.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadedDramaActivity.x0(DownloadedDramaActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38232l.setOnClickListener(new View.OnClickListener() { // from class: uh.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadedDramaActivity.y0(DownloadedDramaActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38230j.setOnClickListener(new View.OnClickListener() { // from class: uh.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadedDramaActivity.z0(DownloadedDramaActivity.this, view);
            }
        });
        r0();
        DownloadEpisodeManager.f45066a.f0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(DownloadedDramaActivity downloadedDramaActivity, View view) {
        downloadedDramaActivity.f45141t = true;
        downloadedDramaActivity.C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(DownloadedDramaActivity downloadedDramaActivity, View view) {
        downloadedDramaActivity.f45141t = false;
        downloadedDramaActivity.C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(DownloadedDramaActivity downloadedDramaActivity, View view) {
        boolean z10;
        DramaDownloadedAdapter dramaDownloadedAdapter = downloadedDramaActivity.f45139r;
        if (dramaDownloadedAdapter != null) {
            if (downloadedDramaActivity.f45142u == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            dramaDownloadedAdapter.h0(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(final DownloadedDramaActivity downloadedDramaActivity, View view) {
        if (downloadedDramaActivity.f45142u > 0) {
            String string = downloadedDramaActivity.getString(R$string.download_delete_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            gi.b bVar = new gi.b(downloadedDramaActivity, string);
            bVar.y(new Function0() { // from class: uh.q0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit A0;
                    A0 = DownloadedDramaActivity.A0(DownloadedDramaActivity.this);
                    return A0;
                }
            });
            bVar.show();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public int K() {
        return R$layout.viewstub_download_empty;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    @NotNull
    public String L() {
        String string = getString(R$string.download_empty);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void handleDownloadStateEvent(@NotNull com.startshorts.androidplayer.ui.activity.download.b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event instanceof b.C0630b) {
            finish();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_download_manage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        int intExtra = getIntent().getIntExtra("DRAMA_ID", 0);
        this.f45143v = intExtra;
        if (intExtra == 0) {
            finish();
            return;
        }
        v0();
        o0();
        p0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        DramaDownloadedAdapter dramaDownloadedAdapter = this.f45139r;
        if (dramaDownloadedAdapter != null) {
            dramaDownloadedAdapter.g0();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "DownloadDramaActivity";
    }

    public final void r0() {
        DramaDownloadedAdapter dramaDownloadedAdapter = new DramaDownloadedAdapter(this, n0());
        dramaDownloadedAdapter.i0(new Function2() { // from class: uh.s0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit s02;
                s02 = DownloadedDramaActivity.s0(DownloadedDramaActivity.this, (DownloadedDramaInfo) obj, ((Integer) obj2).intValue());
                return s02;
            }
        });
        dramaDownloadedAdapter.k0(new Function1() { // from class: uh.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit t02;
                t02 = DownloadedDramaActivity.t0(DownloadedDramaActivity.this, ((Integer) obj).intValue());
                return t02;
            }
        });
        dramaDownloadedAdapter.j0(new Function0() { // from class: uh.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit u02;
                u02 = DownloadedDramaActivity.u0(DownloadedDramaActivity.this);
                return u02;
            }
        });
        this.f45139r = dramaDownloadedAdapter;
        ((ActivityDownloadManageBinding) E()).f38226f.setItemAnimator(null);
        RecyclerView recyclerView = ((ActivityDownloadManageBinding) E()).f38226f;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        o1.b.c(recyclerView, 4, 0, false, false, 14, null).setAdapter(this.f45139r);
    }
}
