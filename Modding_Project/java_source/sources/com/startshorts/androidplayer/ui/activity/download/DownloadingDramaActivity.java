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
import com.startshorts.androidplayer.bean.download.DownloadingDramaInfo;
import com.startshorts.androidplayer.databinding.ActivityDownloadManageBinding;
import com.startshorts.androidplayer.ui.activity.base.PageStateActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadingDramaActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadingDramaModel;
import com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.activity.download.g;
import com.startshorts.androidplayer.ui.activity.download.h;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
/* compiled from: DownloadingDramaActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DownloadingDramaActivity extends PageStateActivity<ActivityDownloadManageBinding> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f45159w = new a(null);
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private DramaDownloadingAdapter f45160r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final i f45161s = kotlin.c.b(new Function0() { // from class: uh.c1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DownloadingDramaModel n02;
            n02 = DownloadingDramaActivity.n0(DownloadingDramaActivity.this);
            return n02;
        }
    });

    /* renamed from: t  reason: collision with root package name */
    private boolean f45162t;

    /* renamed from: u  reason: collision with root package name */
    private int f45163u;

    /* renamed from: v  reason: collision with root package name */
    private int f45164v;

    /* compiled from: DownloadingDramaActivity.kt */
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
            Intent intent = new Intent(context, DownloadingDramaActivity.class);
            intent.putExtra("DRAMA_ID", i10);
            context.startActivity(intent);
        }

        private a() {
        }
    }

    /* compiled from: DownloadingDramaActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DownloadingDramaActivity.this.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadingDramaActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45166a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45166a = function;
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
            return this.f45166a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45166a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(DownloadingDramaActivity downloadingDramaActivity, View view) {
        downloadingDramaActivity.f45162t = false;
        downloadingDramaActivity.E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(DownloadingDramaActivity downloadingDramaActivity, View view) {
        boolean z10;
        DramaDownloadingAdapter dramaDownloadingAdapter = downloadingDramaActivity.f45160r;
        if (dramaDownloadingAdapter != null) {
            if (downloadingDramaActivity.f45163u == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            dramaDownloadingAdapter.m0(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(final DownloadingDramaActivity downloadingDramaActivity, View view) {
        if (downloadingDramaActivity.f45163u > 0) {
            String string = downloadingDramaActivity.getString(R$string.download_delete_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            gi.b bVar = new gi.b(downloadingDramaActivity, string);
            bVar.y(new Function0() { // from class: uh.d1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit D0;
                    D0 = DownloadingDramaActivity.D0(DownloadingDramaActivity.this);
                    return D0;
                }
            });
            bVar.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D0(DownloadingDramaActivity downloadingDramaActivity) {
        DramaDownloadingAdapter dramaDownloadingAdapter = downloadingDramaActivity.f45160r;
        if (dramaDownloadingAdapter != null) {
            dramaDownloadingAdapter.e0();
        }
        if (downloadingDramaActivity.p0().C().size() == 0) {
            downloadingDramaActivity.f45162t = false;
            downloadingDramaActivity.E0();
            downloadingDramaActivity.T();
        }
        u.j(u.f51776a, R$string.download_delete_success, 0, 2, null);
        return Unit.f60915a;
    }

    public static final /* synthetic */ ActivityDownloadManageBinding k0(DownloadingDramaActivity downloadingDramaActivity) {
        return (ActivityDownloadManageBinding) downloadingDramaActivity.E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadingDramaModel n0(final DownloadingDramaActivity downloadingDramaActivity) {
        final DownloadingDramaModel downloadingDramaModel = (DownloadingDramaModel) new ViewModelProvider(downloadingDramaActivity).get(DownloadingDramaModel.class);
        downloadingDramaModel.D().observe(downloadingDramaActivity, new c(new Function1() { // from class: uh.g1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit o02;
                o02 = DownloadingDramaActivity.o0(DownloadingDramaActivity.this, downloadingDramaModel, (com.startshorts.androidplayer.ui.activity.download.h) obj);
                return o02;
            }
        }));
        return downloadingDramaModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(DownloadingDramaActivity downloadingDramaActivity, DownloadingDramaModel downloadingDramaModel, h hVar) {
        if (hVar instanceof h.b) {
            gt.g.d(LifecycleOwnerKt.getLifecycleScope(downloadingDramaActivity), null, null, new DownloadingDramaActivity$downloadViewModel$2$1$1$1(downloadingDramaActivity, downloadingDramaModel, hVar, null), 3, null);
        } else if (hVar instanceof h.a) {
            h.a aVar = (h.a) hVar;
            if (aVar.a().getState() == 1) {
                downloadingDramaActivity.V();
            } else {
                downloadingDramaActivity.W(aVar.a().getMsg());
            }
        }
        return Unit.f60915a;
    }

    private final DownloadingDramaModel p0() {
        return (DownloadingDramaModel) this.f45161s.getValue();
    }

    private final void q0() {
        p0().H(new g.a(this.f45164v));
    }

    private final void r0() {
        DownloadEpisodeManager.f45066a.M().observe(this, new c(new Function1() { // from class: uh.v0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit s02;
                s02 = DownloadingDramaActivity.s0(DownloadingDramaActivity.this, (Long) obj);
                return s02;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(DownloadingDramaActivity downloadingDramaActivity, Long l10) {
        if (l10 != null) {
            String e10 = s.e(l10.longValue());
            String string = downloadingDramaActivity.getString(R$string.download_remain_size, e10);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new ForegroundColorSpan(downloadingDramaActivity.getColor(R$color.download_storage_remain)), 0, e10.length(), 33);
            ((ActivityDownloadManageBinding) downloadingDramaActivity.E()).f38231k.setText(spannableString);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(final DramaDownloadingAdapter dramaDownloadingAdapter, DownloadingDramaInfo info, int i10) {
        Intrinsics.checkNotNullParameter(info, "info");
        int downloadState = info.getDownloadInfo().getDownloadState();
        if (downloadState != 0 && downloadState != 1 && downloadState != 2) {
            if (downloadState == 3 || downloadState == 5) {
                DownloadEpisodeManager.f45066a.W(CollectionsKt.t(info), new Function0() { // from class: uh.x0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit w02;
                        w02 = DownloadingDramaActivity.w0(DramaDownloadingAdapter.this);
                        return w02;
                    }
                });
            }
        } else {
            DownloadEpisodeManager.f45066a.Q(CollectionsKt.t(info), new Function0() { // from class: uh.w0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit v02;
                    v02 = DownloadingDramaActivity.v0(DramaDownloadingAdapter.this);
                    return v02;
                }
            });
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(DramaDownloadingAdapter dramaDownloadingAdapter) {
        dramaDownloadingAdapter.f0().B();
        dramaDownloadingAdapter.notifyDataSetChanged();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(DramaDownloadingAdapter dramaDownloadingAdapter) {
        dramaDownloadingAdapter.f0().B();
        dramaDownloadingAdapter.notifyDataSetChanged();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(DownloadingDramaActivity downloadingDramaActivity, int i10) {
        int i11;
        String string;
        int i12;
        downloadingDramaActivity.f45163u = i10;
        BaseTextView baseTextView = ((ActivityDownloadManageBinding) downloadingDramaActivity.E()).f38232l;
        if (i10 > 0) {
            i11 = R$string.download_deselect_all;
        } else {
            i11 = R$string.download_select_all;
        }
        baseTextView.setText(downloadingDramaActivity.getString(i11));
        BaseTextView baseTextView2 = ((ActivityDownloadManageBinding) downloadingDramaActivity.E()).f38230j;
        if (i10 > 0) {
            string = downloadingDramaActivity.getString(R$string.download_delete_num, String.valueOf(i10));
        } else {
            string = downloadingDramaActivity.getString(R$string.download_delete);
        }
        baseTextView2.setText(string);
        BaseTextView baseTextView3 = ((ActivityDownloadManageBinding) downloadingDramaActivity.E()).f38230j;
        if (i10 > 0) {
            i12 = R$color.download_delete_btn;
        } else {
            i12 = R$color.download_divider;
        }
        baseTextView3.setTextColor(downloadingDramaActivity.getColor(i12));
        return Unit.f60915a;
    }

    private final void y0() {
        View toolbarView = ((ActivityDownloadManageBinding) E()).f38228h;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        ((ActivityDownloadManageBinding) E()).f38224d.setOnClickListener(new b());
        ActivityDownloadManageBinding activityDownloadManageBinding = (ActivityDownloadManageBinding) E();
        activityDownloadManageBinding.f38223c.setOnClickListener(new View.OnClickListener() { // from class: uh.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadingDramaActivity.z0(DownloadingDramaActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38229i.setOnClickListener(new View.OnClickListener() { // from class: uh.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadingDramaActivity.A0(DownloadingDramaActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38232l.setOnClickListener(new View.OnClickListener() { // from class: uh.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadingDramaActivity.B0(DownloadingDramaActivity.this, view);
            }
        });
        activityDownloadManageBinding.f38230j.setOnClickListener(new View.OnClickListener() { // from class: uh.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadingDramaActivity.C0(DownloadingDramaActivity.this, view);
            }
        });
        t0();
        DownloadEpisodeManager.f45066a.f0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(DownloadingDramaActivity downloadingDramaActivity, View view) {
        downloadingDramaActivity.f45162t = true;
        downloadingDramaActivity.E0();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E0() {
        /*
            r5 = this;
            androidx.databinding.ViewDataBinding r0 = r5.E()
            com.startshorts.androidplayer.databinding.ActivityDownloadManageBinding r0 = (com.startshorts.androidplayer.databinding.ActivityDownloadManageBinding) r0
            android.widget.ImageView r1 = r0.f38223c
            boolean r2 = r5.f45162t
            r3 = 8
            r4 = 0
            if (r2 != 0) goto L1e
            com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter r2 = r5.f45160r
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
            boolean r2 = r5.f45162t
            if (r2 == 0) goto L36
            com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter r2 = r5.f45160r
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
            boolean r2 = r5.f45162t
            if (r2 == 0) goto L4e
            com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter r2 = r5.f45160r
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
            boolean r2 = r5.f45162t
            if (r2 == 0) goto L66
            com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter r2 = r5.f45160r
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
            boolean r1 = r5.f45162t
            if (r1 == 0) goto L7d
            com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter r1 = r5.f45160r
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
            com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter r0 = r5.f45160r
            if (r0 == 0) goto L89
            boolean r1 = r5.f45162t
            r0.d0(r1)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.download.DownloadingDramaActivity.E0():void");
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
        this.f45164v = intExtra;
        if (intExtra == 0) {
            finish();
            return;
        }
        y0();
        q0();
        r0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        DramaDownloadingAdapter dramaDownloadingAdapter = this.f45160r;
        if (dramaDownloadingAdapter != null) {
            dramaDownloadingAdapter.l0();
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

    public final void t0() {
        final DramaDownloadingAdapter dramaDownloadingAdapter = new DramaDownloadingAdapter(this, p0());
        dramaDownloadingAdapter.n0(new Function2() { // from class: uh.e1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit u02;
                u02 = DownloadingDramaActivity.u0(DramaDownloadingAdapter.this, (DownloadingDramaInfo) obj, ((Integer) obj2).intValue());
                return u02;
            }
        });
        dramaDownloadingAdapter.o0(new Function1() { // from class: uh.f1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit x02;
                x02 = DownloadingDramaActivity.x0(DownloadingDramaActivity.this, ((Integer) obj).intValue());
                return x02;
            }
        });
        this.f45160r = dramaDownloadingAdapter;
        ((ActivityDownloadManageBinding) E()).f38226f.setItemAnimator(null);
        RecyclerView recyclerView = ((ActivityDownloadManageBinding) E()).f38226f;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        o1.b.e(recyclerView, 0, false, false, false, 15, null).setAdapter(this.f45160r);
    }
}
