package com.startshorts.androidplayer.ui.activity.region;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.core.app.ActivityCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.region.RegionAdapter2;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.region.RegionGroup;
import com.startshorts.androidplayer.databinding.ActivityRegionSelectBinding;
import com.startshorts.androidplayer.ui.activity.base.PageStateActivity;
import com.startshorts.androidplayer.ui.activity.region.RegionSelectActivity;
import com.startshorts.androidplayer.ui.view.region.QuickBarView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.region.RegionSelectViewModel;
import fk.v;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.f;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: RegionSelectActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRegionSelectActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegionSelectActivity.kt\ncom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,168:1\n1863#2,2:169\n*S KotlinDebug\n*F\n+ 1 RegionSelectActivity.kt\ncom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity\n*L\n60#1:169,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RegionSelectActivity extends PageStateActivity<ActivityRegionSelectBinding> {
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final a f45468v = new a(null);

    /* renamed from: r  reason: collision with root package name */
    private final int f45469r = R$layout.activity_region_select;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final String f45470s = "RegionSelectActivity";
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private RegionAdapter2 f45471t = new RegionAdapter2();
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final i f45472u = kotlin.c.b(new Function0() { // from class: ai.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            RegionSelectViewModel i02;
            i02 = RegionSelectActivity.i0(RegionSelectActivity.this);
            return i02;
        }
    });

    /* compiled from: RegionSelectActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String a(@NotNull Intent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            String stringExtra = intent.getStringExtra("countryName");
            if (stringExtra == null) {
                return "";
            }
            return stringExtra;
        }

        @NotNull
        public final String b(@NotNull Intent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            String stringExtra = intent.getStringExtra("areaCode");
            if (stringExtra == null) {
                return "";
            }
            return stringExtra;
        }

        public final void c(@NotNull Activity context, @NotNull String areaCode, @NotNull String countryName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(areaCode, "areaCode");
            Intrinsics.checkNotNullParameter(countryName, "countryName");
            Intent intent = new Intent(context, RegionSelectActivity.class);
            intent.putExtra("areaCode", areaCode);
            intent.putExtra("countryName", countryName);
            ActivityCompat.startActivityForResult(context, intent, 4001, null);
        }

        private a() {
        }
    }

    /* compiled from: RegionSelectActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            RegionSelectActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RegionSelectActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45474a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45474a = function;
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
            return this.f45474a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45474a.invoke(obj);
        }
    }

    public static final /* synthetic */ ActivityRegionSelectBinding d0(RegionSelectActivity regionSelectActivity) {
        return (ActivityRegionSelectBinding) regionSelectActivity.E();
    }

    private final RegionSelectViewModel e0() {
        return (RegionSelectViewModel) this.f45472u.getValue();
    }

    private final void f0() {
        S();
    }

    private final void g0() {
        ((ActivityRegionSelectBinding) E()).f38423b.setOnClickListener(new b());
        if (v.f51778a.b()) {
            ((ActivityRegionSelectBinding) E()).f38427f.setGravity(8388629);
        } else {
            ((ActivityRegionSelectBinding) E()).f38427f.setGravity(8388627);
        }
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        ((ActivityRegionSelectBinding) E()).f38426e.setLayoutManager(linearLayoutManager);
        ((ActivityRegionSelectBinding) E()).f38426e.setAdapter(this.f45471t);
        ((ActivityRegionSelectBinding) E()).f38426e.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.startshorts.androidplayer.ui.activity.region.RegionSelectActivity$initView$2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                RegionAdapter2 regionAdapter2;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, i10, i11);
                int findFirstVisibleItemPosition = LinearLayoutManager.this.findFirstVisibleItemPosition();
                if (findFirstVisibleItemPosition != 0 || LinearLayoutManager.this.findFirstCompletelyVisibleItemPosition() != 0) {
                    regionAdapter2 = this.f45471t;
                    RegionAdapter2.a a10 = regionAdapter2.a(findFirstVisibleItemPosition);
                    if (a10 == null) {
                        return;
                    }
                    if (!Intrinsics.areEqual(RegionSelectActivity.d0(this).f38427f.getText(), a10.a())) {
                        RegionSelectActivity.d0(this).f38427f.setText(a10.a());
                    }
                    RegionSelectActivity.d0(this).f38427f.setVisibility(0);
                    return;
                }
                RegionSelectActivity.d0(this).f38427f.setVisibility(4);
            }
        });
        final int i10 = -g.a(12.0f);
        ((ActivityRegionSelectBinding) E()).f38425d.setLetterChanged(new Function1() { // from class: ai.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit h02;
                h02 = RegionSelectActivity.h0(RegionSelectActivity.this, linearLayoutManager, i10, (String) obj);
                return h02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0(RegionSelectActivity regionSelectActivity, LinearLayoutManager linearLayoutManager, int i10, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        int d10 = regionSelectActivity.f45471t.d(it);
        if (-1 != d10) {
            ((ActivityRegionSelectBinding) regionSelectActivity.E()).f38426e.stopScroll();
            linearLayoutManager.scrollToPositionWithOffset(d10, i10);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RegionSelectViewModel i0(final RegionSelectActivity regionSelectActivity) {
        RegionSelectViewModel regionSelectViewModel = (RegionSelectViewModel) new ViewModelProvider(regionSelectActivity).get(RegionSelectViewModel.class);
        regionSelectViewModel.o().observe(regionSelectActivity, new c(new Function1() { // from class: ai.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j02;
                j02 = RegionSelectActivity.j0(RegionSelectActivity.this, (ApiErrorState) obj);
                return j02;
            }
        }));
        regionSelectViewModel.C().observe(regionSelectActivity, new c(new Function1() { // from class: ai.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k02;
                k02 = RegionSelectActivity.k0(RegionSelectActivity.this, (Boolean) obj);
                return k02;
            }
        }));
        regionSelectViewModel.D().observe(regionSelectActivity, new c(new Function1() { // from class: ai.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit l02;
                l02 = RegionSelectActivity.l0(RegionSelectActivity.this, (RegionSelectViewModel.a.C0680a) obj);
                return l02;
            }
        }));
        return regionSelectViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(RegionSelectActivity regionSelectActivity, ApiErrorState apiErrorState) {
        if (regionSelectActivity.f45471t.getItemCount() == 0) {
            if (apiErrorState.getState() == 1) {
                regionSelectActivity.V();
            } else {
                regionSelectActivity.W(apiErrorState.getMsg());
            }
            ((ActivityRegionSelectBinding) regionSelectActivity.E()).f38422a.setVisibility(8);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(RegionSelectActivity regionSelectActivity, Boolean bool) {
        if (bool.booleanValue()) {
            regionSelectActivity.U();
        } else {
            regionSelectActivity.P();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(RegionSelectActivity regionSelectActivity, RegionSelectViewModel.a.C0680a c0680a) {
        int i10 = 0;
        ((ActivityRegionSelectBinding) regionSelectActivity.E()).f38422a.setVisibility(0);
        if (c0680a != null) {
            RegionAdapter2 regionAdapter2 = regionSelectActivity.f45471t;
            List<RegionGroup> a10 = c0680a.a();
            a aVar = f45468v;
            Intent intent = regionSelectActivity.getIntent();
            Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
            String b10 = aVar.b(intent);
            Intent intent2 = regionSelectActivity.getIntent();
            Intrinsics.checkNotNullExpressionValue(intent2, "getIntent(...)");
            regionAdapter2.e(a10, b10, aVar.a(intent2));
            ArrayList arrayList = new ArrayList();
            for (RegionGroup regionGroup : c0680a.a()) {
                if (Intrinsics.areEqual(regionGroup.getFirstCode(), "Hot")) {
                    arrayList.add("#");
                } else {
                    arrayList.add(regionGroup.getFirstCode());
                }
            }
            ((ActivityRegionSelectBinding) regionSelectActivity.E()).f38425d.setCharSet(arrayList);
            QuickBarView quickBarView = ((ActivityRegionSelectBinding) regionSelectActivity.E()).f38425d;
            if (arrayList.size() <= 0) {
                i10 = 8;
            }
            quickBarView.setVisibility(i10);
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public void S() {
        e0().F();
    }

    @Override // android.app.Activity
    public void finish() {
        Intent intent = new Intent();
        String b10 = this.f45471t.b();
        String str = "";
        if (b10 == null) {
            b10 = "";
        }
        intent.putExtra("areaCode", b10);
        String c10 = this.f45471t.c();
        if (c10 != null) {
            str = c10;
        }
        intent.putExtra("countryName", str);
        setResult(-1, intent);
        super.finish();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return this.f45469r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        View toolbarView = ((ActivityRegionSelectBinding) E()).f38429h;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        g0();
        f0();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return this.f45470s;
    }
}
