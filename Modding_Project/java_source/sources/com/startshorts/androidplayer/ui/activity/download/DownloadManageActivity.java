package com.startshorts.androidplayer.ui.activity.download;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import au.l;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.download.DownloadedManagerInfo;
import com.startshorts.androidplayer.bean.download.DownloadingManagerInfo;
import com.startshorts.androidplayer.databinding.ActivityDownloadManageBinding;
import com.startshorts.androidplayer.ui.activity.base.PageStateActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadManageActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadManagerModel;
import com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.activity.download.c;
import com.startshorts.androidplayer.ui.activity.download.d;
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
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.i0;
import uh.s;
/* compiled from: DownloadManageActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DownloadManageActivity extends PageStateActivity<ActivityDownloadManageBinding> {
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final a f45123v = new a(null);
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private DownloadManageAdapter f45124r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final i f45125s = kotlin.c.b(new Function0() { // from class: uh.z
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DownloadManagerModel l02;
            l02 = DownloadManageActivity.l0(DownloadManageActivity.this);
            return l02;
        }
    });

    /* renamed from: t  reason: collision with root package name */
    private boolean f45126t;

    /* renamed from: u  reason: collision with root package name */
    private int f45127u;

    /* compiled from: DownloadManageActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (i0.f68447a.b()) {
                return;
            }
            context.startActivity(new Intent(context, DownloadManageActivity.class));
        }

        private a() {
        }
    }

    /* compiled from: DownloadManageActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DownloadManageActivity.this.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadManageActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45129a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45129a = function;
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
            return this.f45129a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45129a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(DownloadManageActivity downloadManageActivity) {
        DownloadManageAdapter downloadManageAdapter = downloadManageActivity.f45124r;
        Intrinsics.checkNotNull(downloadManageAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter");
        downloadManageAdapter.c0();
        if (downloadManageActivity.n0().C().size() == 0) {
            downloadManageActivity.f45126t = false;
            downloadManageActivity.B0();
            downloadManageActivity.T();
        }
        u.j(u.f51776a, R$string.download_delete_success, 0, 2, null);
        return Unit.f60915a;
    }

    public static final /* synthetic */ ActivityDownloadManageBinding i0(DownloadManageActivity downloadManageActivity) {
        return (ActivityDownloadManageBinding) downloadManageActivity.E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadManagerModel l0(final DownloadManageActivity downloadManageActivity) {
        DownloadManagerModel downloadManagerModel = (DownloadManagerModel) new ViewModelProvider(downloadManageActivity).get(DownloadManagerModel.class);
        downloadManagerModel.B().observe(downloadManageActivity, new c(new Function1() { // from class: uh.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m02;
                m02 = DownloadManageActivity.m0(DownloadManageActivity.this, (com.startshorts.androidplayer.ui.activity.download.d) obj);
                return m02;
            }
        }));
        return downloadManagerModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(DownloadManageActivity downloadManageActivity, d dVar) {
        if (dVar instanceof d.b) {
            gt.g.d(LifecycleOwnerKt.getLifecycleScope(downloadManageActivity), null, null, new DownloadManageActivity$downloadViewModel$2$1$1$1(dVar, downloadManageActivity, null), 3, null);
        } else if (dVar instanceof d.a) {
            d.a aVar = (d.a) dVar;
            if (aVar.a().getState() == 1) {
                downloadManageActivity.V();
            } else {
                downloadManageActivity.W(aVar.a().getMsg());
            }
        }
        return Unit.f60915a;
    }

    private final DownloadManagerModel n0() {
        return (DownloadManagerModel) this.f45125s.getValue();
    }

    private final void o0() {
        n0().F(new c.a());
    }

    private final void p0() {
        DownloadEpisodeManager.f45066a.M().observe(this, new c(new Function1() { // from class: uh.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit q02;
                q02 = DownloadManageActivity.q0(DownloadManageActivity.this, (Long) obj);
                return q02;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(DownloadManageActivity downloadManageActivity, Long l10) {
        if (l10 != null) {
            String e10 = s.e(l10.longValue());
            String string = downloadManageActivity.getString(R$string.download_remain_size, e10);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new ForegroundColorSpan(downloadManageActivity.getColor(R$color.download_storage_remain)), 0, e10.length(), 33);
            ((ActivityDownloadManageBinding) downloadManageActivity.E()).f38231k.setText(spannableString);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(DownloadManageActivity downloadManageActivity, DownloadedManagerInfo item, int i10) {
        Intrinsics.checkNotNullParameter(item, "item");
        DownloadedDramaActivity.f45138w.a(downloadManageActivity, item.getShortPlayId());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t0(DownloadManageActivity downloadManageActivity, DownloadingManagerInfo item, int i10) {
        Intrinsics.checkNotNullParameter(item, "item");
        DownloadingDramaActivity.f45159w.a(downloadManageActivity, item.getShortPlayId());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(DownloadManageActivity downloadManageActivity, int i10) {
        int i11;
        String string;
        int i12;
        downloadManageActivity.f45127u = i10;
        BaseTextView baseTextView = ((ActivityDownloadManageBinding) downloadManageActivity.E()).f38232l;
        if (i10 > 0) {
            i11 = R$string.download_deselect_all;
        } else {
            i11 = R$string.download_select_all;
        }
        baseTextView.setText(downloadManageActivity.getString(i11));
        BaseTextView baseTextView2 = ((ActivityDownloadManageBinding) downloadManageActivity.E()).f38230j;
        if (i10 > 0) {
            string = downloadManageActivity.getString(R$string.download_delete_num, String.valueOf(i10));
        } else {
            string = downloadManageActivity.getString(R$string.download_delete);
        }
        baseTextView2.setText(string);
        BaseTextView baseTextView3 = ((ActivityDownloadManageBinding) downloadManageActivity.E()).f38230j;
        if (i10 > 0) {
            i12 = R$color.download_delete_btn;
        } else {
            i12 = R$color.download_divider;
        }
        baseTextView3.setTextColor(downloadManageActivity.getColor(i12));
        return Unit.f60915a;
    }

    private final void v0() {
        View toolbarView = ((ActivityDownloadManageBinding) E()).f38228h;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        ((ActivityDownloadManageBinding) E()).f38224d.setOnClickListener(new b());
        ActivityDownloadManageBinding activityDownloadManageBinding = (ActivityDownloadManageBinding) E();
        activityDownloadManageBinding.f38223c.setOnClickListener(new View.OnClickListener() { // from class: uh.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadManageActivity.w0(DownloadManageActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38229i.setOnClickListener(new View.OnClickListener() { // from class: uh.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadManageActivity.x0(DownloadManageActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38232l.setOnClickListener(new View.OnClickListener() { // from class: uh.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadManageActivity.y0(DownloadManageActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38230j.setOnClickListener(new View.OnClickListener() { // from class: uh.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadManageActivity.z0(DownloadManageActivity.this, view);
            }
        });
        r0();
        DownloadEpisodeManager.f45066a.f0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(DownloadManageActivity downloadManageActivity, View view) {
        downloadManageActivity.f45126t = true;
        downloadManageActivity.B0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(DownloadManageActivity downloadManageActivity, View view) {
        downloadManageActivity.f45126t = false;
        downloadManageActivity.B0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(DownloadManageActivity downloadManageActivity, View view) {
        boolean z10;
        DownloadManageAdapter downloadManageAdapter = downloadManageActivity.f45124r;
        Intrinsics.checkNotNull(downloadManageAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter");
        if (downloadManageActivity.f45127u == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        downloadManageAdapter.j0(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(final DownloadManageActivity downloadManageActivity, View view) {
        if (downloadManageActivity.f45127u > 0) {
            String string = downloadManageActivity.getString(R$string.download_delete_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            gi.b bVar = new gi.b(downloadManageActivity, string);
            bVar.y(new Function0() { // from class: uh.u
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit A0;
                    A0 = DownloadManageActivity.A0(DownloadManageActivity.this);
                    return A0;
                }
            });
            bVar.show();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B0() {
        /*
            r5 = this;
            androidx.databinding.ViewDataBinding r0 = r5.E()
            com.startshorts.androidplayer.databinding.ActivityDownloadManageBinding r0 = (com.startshorts.androidplayer.databinding.ActivityDownloadManageBinding) r0
            android.widget.ImageView r1 = r0.f38223c
            boolean r2 = r5.f45126t
            r3 = 8
            r4 = 0
            if (r2 != 0) goto L1e
            com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter r2 = r5.f45124r
            if (r2 == 0) goto L18
            int r2 = r2.getItemCount()
            goto L19
        L18:
            r2 = r4
        L19:
            if (r2 != 0) goto L1c
            goto L1e
        L1c:
            r2 = r4
            goto L1f
        L1e:
            r2 = r3
        L1f:
            r1.setVisibility(r2)
            com.startshorts.androidplayer.ui.view.base.BaseTextView r1 = r0.f38229i
            boolean r2 = r5.f45126t
            if (r2 == 0) goto L36
            com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter r2 = r5.f45124r
            if (r2 == 0) goto L31
            int r2 = r2.getItemCount()
            goto L32
        L31:
            r2 = r4
        L32:
            if (r2 <= 0) goto L36
            r2 = r4
            goto L37
        L36:
            r2 = r3
        L37:
            r1.setVisibility(r2)
            com.startshorts.androidplayer.ui.view.base.BaseTextView r1 = r0.f38230j
            boolean r2 = r5.f45126t
            if (r2 == 0) goto L4e
            com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter r2 = r5.f45124r
            if (r2 == 0) goto L49
            int r2 = r2.getItemCount()
            goto L4a
        L49:
            r2 = r4
        L4a:
            if (r2 <= 0) goto L4e
            r2 = r4
            goto L4f
        L4e:
            r2 = r3
        L4f:
            r1.setVisibility(r2)
            com.startshorts.androidplayer.ui.view.base.BaseTextView r1 = r0.f38232l
            boolean r2 = r5.f45126t
            if (r2 == 0) goto L66
            com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter r2 = r5.f45124r
            if (r2 == 0) goto L61
            int r2 = r2.getItemCount()
            goto L62
        L61:
            r2 = r4
        L62:
            if (r2 <= 0) goto L66
            r2 = r4
            goto L67
        L66:
            r2 = r3
        L67:
            r1.setVisibility(r2)
            android.view.View r0 = r0.f38222b
            boolean r1 = r5.f45126t
            if (r1 == 0) goto L7d
            com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter r1 = r5.f45124r
            if (r1 == 0) goto L79
            int r1 = r1.getItemCount()
            goto L7a
        L79:
            r1 = r4
        L7a:
            if (r1 <= 0) goto L7d
            r3 = r4
        L7d:
            r0.setVisibility(r3)
            com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter r0 = r5.f45124r
            java.lang.String r1 = "null cannot be cast to non-null type com.startshorts.androidplayer.ui.activity.download.adapter.DownloadManageAdapter"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            boolean r1 = r5.f45126t
            r0.b0(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.download.DownloadManageActivity.B0():void");
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
        v0();
        o0();
        p0();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "DownloadManageActivity";
    }

    public final void r0() {
        DownloadManageAdapter downloadManageAdapter = new DownloadManageAdapter(this, n0());
        downloadManageAdapter.k0(new Function2() { // from class: uh.a0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit s02;
                s02 = DownloadManageActivity.s0(DownloadManageActivity.this, (DownloadedManagerInfo) obj, ((Integer) obj2).intValue());
                return s02;
            }
        });
        downloadManageAdapter.l0(new Function2() { // from class: uh.b0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit t02;
                t02 = DownloadManageActivity.t0(DownloadManageActivity.this, (DownloadingManagerInfo) obj, ((Integer) obj2).intValue());
                return t02;
            }
        });
        downloadManageAdapter.m0(new Function1() { // from class: uh.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit u02;
                u02 = DownloadManageActivity.u0(DownloadManageActivity.this, ((Integer) obj).intValue());
                return u02;
            }
        });
        this.f45124r = downloadManageAdapter;
        ((ActivityDownloadManageBinding) E()).f38226f.setItemAnimator(null);
        RecyclerView recyclerView = ((ActivityDownloadManageBinding) E()).f38226f;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        o1.b.e(recyclerView, 0, false, false, false, 15, null).setAdapter(this.f45124r);
        RecyclerView recyclerView2 = ((ActivityDownloadManageBinding) E()).f38226f;
        Intrinsics.checkNotNullExpressionValue(recyclerView2, "recyclerView");
        o1.b.f(recyclerView2, n0().C());
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        n0().w();
        DownloadManageAdapter downloadManageAdapter = this.f45124r;
        if (downloadManageAdapter != null) {
            downloadManageAdapter.i0();
        }
    }
}
