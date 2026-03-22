package com.startshorts.androidplayer.ui.fragment.mylist;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.tip.Builder;
import com.startshorts.androidplayer.databinding.FragmentWatchedRecentlyBinding;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment;
import com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContainerRecentlyWatchedFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nContainerRecentlyWatchedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContainerRecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,473:1\n1863#2,2:474\n15#3,9:476\n15#3,9:486\n1#4:485\n*S KotlinDebug\n*F\n+ 1 ContainerRecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment\n*L\n168#1:474,2\n271#1:476,9\n375#1:486,9\n*E\n"})
/* loaded from: classes7.dex */
public final class ContainerRecentlyWatchedFragment extends BaseVDBFragment<FragmentWatchedRecentlyBinding> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f46269q = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private int f46270i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private PermissionBottomSheetDialogFragment f46271j;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private List<WeakReference<Fragment>> f46273l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f46274m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f46275n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f46276o;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final ContainerRecentlyWatchedFragment$mOnPageChangeCallback$1 f46272k = new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.ContainerRecentlyWatchedFragment$mOnPageChangeCallback$1
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i10) {
            ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment = ContainerRecentlyWatchedFragment.this;
            containerRecentlyWatchedFragment.r("onPageSelected -> position(" + i10 + ')');
            ContainerRecentlyWatchedFragment.this.f46270i = i10;
            ContainerRecentlyWatchedFragment.H(ContainerRecentlyWatchedFragment.this).f39696d.setSelectedIndex(i10);
        }
    };

    /* renamed from: p  reason: collision with root package name */
    private final int f46277p = R$layout.fragment_watched_recently;

    /* compiled from: ContainerRecentlyWatchedFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ContainerRecentlyWatchedFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ContainerRecentlyWatchedFragment.this.g0();
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ContainerRecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment\n*L\n1#1,20:1\n377#2,14:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements Function0<Unit> {
        public c() {
        }

        public final void a() {
            Context requireContext = ContainerRecentlyWatchedFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            Builder builder = new Builder();
            builder.setContent(ContainerRecentlyWatchedFragment.this.getString(R$string.my_list_fragment_delete_tip));
            builder.setPositiveButtonText(ContainerRecentlyWatchedFragment.this.getString(R$string.common_confirm));
            builder.setPositiveButtonClickListener(new e());
            builder.setNegativeButtonText(ContainerRecentlyWatchedFragment.this.getString(R$string.common_cancel));
            new li.b(requireContext, builder).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: ContainerRecentlyWatchedFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment = ContainerRecentlyWatchedFragment.this;
            containerRecentlyWatchedFragment.W(containerRecentlyWatchedFragment.X());
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ContainerRecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment\n*L\n1#1,20:1\n273#2,25:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f implements Function0<Unit> {
        public f() {
        }

        public final void a() {
            ViewStubProxy viewStubProxy = ContainerRecentlyWatchedFragment.H(ContainerRecentlyWatchedFragment.this).f39695c;
            Intrinsics.checkNotNull(viewStubProxy);
            jk.e0.g(viewStubProxy);
            View root = viewStubProxy.getRoot();
            if (root != null) {
                View findViewById = root.findViewById(R$id.select_all_click_view);
                if (findViewById != null) {
                    findViewById.setOnClickListener(new h());
                }
                View findViewById2 = root.findViewById(R$id.delete_click_view);
                if (findViewById2 != null) {
                    findViewById2.setOnClickListener(new i());
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: ContainerRecentlyWatchedFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends yd.d {
        h() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            boolean z10 = !ContainerRecentlyWatchedFragment.this.f46275n;
            ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment = ContainerRecentlyWatchedFragment.this;
            containerRecentlyWatchedFragment.k0(containerRecentlyWatchedFragment.X(), z10);
            ContainerRecentlyWatchedFragment.this.i0(true, z10);
        }
    }

    /* compiled from: ContainerRecentlyWatchedFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends yd.d {
        i() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment = ContainerRecentlyWatchedFragment.this;
            if (containerRecentlyWatchedFragment.T(containerRecentlyWatchedFragment.X())) {
                ContainerRecentlyWatchedFragment.this.e0();
            }
        }
    }

    public static final /* synthetic */ FragmentWatchedRecentlyBinding H(ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment) {
        return containerRecentlyWatchedFragment.A();
    }

    private final void P() {
        A().f39697e.setTextSize(2, 20.0f);
        ed.a aVar = ed.a.f51339a;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aVar.b(requireActivity, true);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-2, -2);
        if (!(getContext() instanceof MainActivity)) {
            ConstraintLayout constraintLayout = A().f39698f;
            ImageView imageView = new ImageView(requireContext());
            imageView.setImageResource(R$drawable.ic_toolbar_back);
            fk.z zVar = fk.z.f51786a;
            ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(zVar.h(), zVar.h());
            layoutParams2.startToStart = 0;
            layoutParams2.topToTop = 0;
            layoutParams2.bottomToBottom = 0;
            layoutParams2.setMarginStart(zVar.d());
            imageView.setLayoutParams(layoutParams2);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ContainerRecentlyWatchedFragment.Q(ContainerRecentlyWatchedFragment.this, view);
                }
            });
            constraintLayout.addView(imageView);
            BaseTextView baseTextView = A().f39697e;
            layoutParams.startToStart = 0;
            layoutParams.endToEnd = 0;
            layoutParams.topToTop = 0;
            layoutParams.bottomToBottom = 0;
            baseTextView.setLayoutParams(layoutParams);
        } else {
            ConstraintLayout toolbarView = A().f39698f;
            Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
            jk.b0.g(toolbarView, DeviceUtil.f48146a.J());
        }
        BaseTextView baseTextView2 = A().f39697e;
        layoutParams.startToStart = 0;
        layoutParams.topToTop = 0;
        layoutParams.bottomToBottom = 0;
        layoutParams.setMarginStart(fk.z.f51786a.d());
        baseTextView2.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(ContainerRecentlyWatchedFragment containerRecentlyWatchedFragment, View view) {
        containerRecentlyWatchedFragment.requireActivity().onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean T(Class<?> cls) {
        Fragment Y = Y(cls);
        if (Y == null) {
            return false;
        }
        if (Y instanceof MyCollectionFragment) {
            return ((MyCollectionFragment) Y).j1();
        }
        if (!(Y instanceof RecentlyWatchedFragment)) {
            return false;
        }
        return ((RecentlyWatchedFragment) Y).u1();
    }

    private final void U() {
        List<WeakReference<Fragment>> list = this.f46273l;
        if (list != null) {
            list.clear();
        }
    }

    private final FragmentStateAdapter V() {
        List<WeakReference<Fragment>> list = this.f46273l;
        if (list != null) {
            list.clear();
        }
        final ArrayList<Class> arrayList = new ArrayList();
        arrayList.add(RecentlyWatchedFragment.class);
        final ArrayList arrayList2 = new ArrayList();
        for (Class cls : arrayList) {
            arrayList2.add(Long.valueOf(cls.hashCode()));
        }
        return new FragmentStateAdapter() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(ContainerRecentlyWatchedFragment.this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public boolean containsItem(long j10) {
                return arrayList2.contains(Long.valueOf(j10));
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int i10) {
                List list2;
                List list3;
                Object newInstance = arrayList.get(i10).newInstance();
                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
                Fragment fragment = (Fragment) newInstance;
                list2 = ContainerRecentlyWatchedFragment.this.f46273l;
                if (list2 == null) {
                    ContainerRecentlyWatchedFragment.this.f46273l = new ArrayList();
                }
                list3 = ContainerRecentlyWatchedFragment.this.f46273l;
                if (list3 != null) {
                    list3.add(new WeakReference(fragment));
                }
                return fragment;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return arrayList.size();
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i10) {
                return arrayList2.get(i10).longValue();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(Class<?> cls) {
        Fragment Y = Y(cls);
        if (Y != null) {
            if (Y instanceof MyCollectionFragment) {
                ((MyCollectionFragment) Y).g1();
            } else if (Y instanceof RecentlyWatchedFragment) {
                ((RecentlyWatchedFragment) Y).n1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class<?> X() {
        return RecentlyWatchedFragment.class;
    }

    private final Fragment Y(Class<?> cls) {
        Object obj;
        Class<?> cls2;
        List<WeakReference<Fragment>> list = this.f46273l;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                Fragment fragment = (Fragment) ((WeakReference) obj).get();
                if (fragment != null) {
                    cls2 = fragment.getClass();
                } else {
                    cls2 = null;
                }
                if (Intrinsics.areEqual(cls2, cls)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        WeakReference weakReference = (WeakReference) obj;
        if (weakReference == null) {
            return null;
        }
        return (Fragment) weakReference.get();
    }

    private final int Z() {
        RecentlyWatchedFragment recentlyWatchedFragment;
        Fragment Y = Y(X());
        if (Y instanceof RecentlyWatchedFragment) {
            recentlyWatchedFragment = (RecentlyWatchedFragment) Y;
        } else {
            recentlyWatchedFragment = null;
        }
        if (recentlyWatchedFragment != null) {
            return recentlyWatchedFragment.q1();
        }
        return 0;
    }

    private final void b0() {
        ViewStubProxy editViewstub = A().f39695c;
        Intrinsics.checkNotNullExpressionValue(editViewstub, "editViewstub");
        jk.e0.b(editViewstub, 0, 1, null);
    }

    private final void c0() {
        A().f39693a.setOnClickListener(new b());
    }

    private final void d0(FragmentStateAdapter fragmentStateAdapter) {
        ViewPager2 viewPager2 = A().f39699g;
        viewPager2.setSaveEnabled(false);
        viewPager2.setAdapter(fragmentStateAdapter);
        Intrinsics.checkNotNull(viewPager2);
        kd.d.a(viewPager2, false);
        kd.d.b(viewPager2, 2);
        viewPager2.registerOnPageChangeCallback(this.f46272k);
        int i10 = this.f46270i;
        if (i10 >= 0 && i10 < fragmentStateAdapter.getItemCount()) {
            A().f39699g.setCurrentItem(this.f46270i, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0() {
        FragmentExtKt.b(this, new c(), new d());
    }

    private final void f0() {
        FragmentExtKt.b(this, new f(), new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0() {
        String str;
        int i10 = 0;
        if (this.f46274m) {
            this.f46274m = false;
            this.f46275n = false;
            this.f46276o = false;
            b0();
        } else {
            this.f46274m = true;
            f0();
            j0(false);
            l0();
        }
        BaseTextView baseTextView = A().f39693a;
        if (this.f46274m) {
            str = getString(R$string.common_cancel);
        } else {
            str = "";
        }
        baseTextView.setText(str);
        ImageView imageView = A().f39694b;
        if (this.f46274m) {
            i10 = 8;
        }
        imageView.setVisibility(i10);
        A().f39699g.setUserInputEnabled(true ^ this.f46274m);
        h0(X(), this.f46274m);
    }

    private final void h0(Class<?> cls, boolean z10) {
        Fragment Y = Y(cls);
        if (Y != null) {
            if (Y instanceof MyCollectionFragment) {
                ((MyCollectionFragment) Y).p1(z10);
            } else if (Y instanceof RecentlyWatchedFragment) {
                ((RecentlyWatchedFragment) Y).G1(z10);
            }
        }
    }

    private final void j0(boolean z10) {
        ImageView imageView;
        int i10;
        ViewStubProxy viewStubProxy = A().f39695c;
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root != null && (imageView = (ImageView) root.findViewById(R$id.check_box_iv)) != null) {
            if (z10) {
                i10 = R$drawable.ic_checkbox_selected;
            } else {
                i10 = R$drawable.ic_checkbox_unselected;
            }
            imageView.setImageResource(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k0(Class<?> cls, boolean z10) {
        Fragment Y = Y(cls);
        if (Y != null) {
            if (Y instanceof MyCollectionFragment) {
                ((MyCollectionFragment) Y).q1(z10);
            } else if (Y instanceof RecentlyWatchedFragment) {
                ((RecentlyWatchedFragment) Y).H1(z10);
            }
        }
    }

    private final void l0() {
        TextView textView;
        String string;
        int i10;
        int Z = Z();
        ViewStubProxy viewStubProxy = A().f39695c;
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root != null && (textView = (TextView) root.findViewById(R$id.delete_tv)) != null) {
            if (Z > 0) {
                string = getString(R$string.common_delete) + '(' + Z() + ')';
            } else {
                string = getString(R$string.common_delete);
                Intrinsics.checkNotNull(string);
            }
            textView.setText(string);
            Context context = getContext();
            if (context != null) {
                if (Z > 0) {
                    i10 = R$color.primary_normal;
                } else {
                    i10 = R$color.t_b_31;
                }
                textView.setTextColor(ContextCompat.getColor(context, i10));
            }
        }
    }

    public final boolean R() {
        return false;
    }

    public final void S() {
        if (this.f46274m) {
            g0();
        }
    }

    public final void a0() {
        jk.b0.d(A().f39694b);
    }

    public final void i0(boolean z10, boolean z11) {
        boolean z12;
        if (this.f46275n != z11) {
            this.f46275n = z11;
            if (z11 && z10) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f46276o = z12;
            j0(z11);
        }
        if (this.f46274m) {
            l0();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.f46277p;
    }

    @Override // androidx.fragment.app.Fragment
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        PermissionBottomSheetDialogFragment permissionBottomSheetDialogFragment = this.f46271j;
        if (permissionBottomSheetDialogFragment == null) {
            super.onActivityResult(i10, i11, intent);
        } else if (permissionBottomSheetDialogFragment != null) {
            permissionBottomSheetDialogFragment.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        r("mCurrentTabIndex -> " + this.f46270i);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "WatchedRecentlyFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        super.t();
        P();
        c0();
        d0(V());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        if (B()) {
            ViewPager2 viewPager2 = A().f39699g;
            viewPager2.setAdapter(null);
            viewPager2.unregisterOnPageChangeCallback(this.f46272k);
        }
        U();
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
