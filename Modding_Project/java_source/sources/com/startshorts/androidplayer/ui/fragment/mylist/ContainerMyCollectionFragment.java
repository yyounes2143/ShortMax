package com.startshorts.androidplayer.ui.fragment.mylist;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.tab.MyListTab;
import com.startshorts.androidplayer.bean.tip.Builder;
import com.startshorts.androidplayer.databinding.FragmentCollectionListBinding;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment;
import com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.mylist.MyListViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContainerMyCollectionFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nContainerMyCollectionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContainerMyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,492:1\n1863#2,2:493\n15#3,9:495\n15#3,9:505\n1#4:504\n*S KotlinDebug\n*F\n+ 1 ContainerMyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment\n*L\n179#1:493,2\n288#1:495,9\n393#1:505,9\n*E\n"})
/* loaded from: classes7.dex */
public final class ContainerMyCollectionFragment extends BaseVDBFragment<FragmentCollectionListBinding> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f46247r = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private int f46248i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private PermissionBottomSheetDialogFragment f46249j;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private List<WeakReference<Fragment>> f46252m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f46253n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f46254o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f46255p;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final ms.i f46250k = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MyListViewModel j02;
            j02 = ContainerMyCollectionFragment.j0(ContainerMyCollectionFragment.this);
            return j02;
        }
    });
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final ContainerMyCollectionFragment$mOnPageChangeCallback$1 f46251l = new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.ContainerMyCollectionFragment$mOnPageChangeCallback$1
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i10) {
            ContainerMyCollectionFragment containerMyCollectionFragment = ContainerMyCollectionFragment.this;
            containerMyCollectionFragment.r("onPageSelected -> position(" + i10 + ')');
            ContainerMyCollectionFragment.this.f46248i = i10;
            ContainerMyCollectionFragment.J(ContainerMyCollectionFragment.this).f39402d.setSelectedIndex(i10);
        }
    };

    /* renamed from: q  reason: collision with root package name */
    private final int f46256q = R$layout.fragment_collection_list;

    /* compiled from: ContainerMyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ContainerMyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ContainerMyCollectionFragment.this.n0();
        }
    }

    /* compiled from: ContainerMyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements SelectableAdapter.d<MyListTab> {
        c() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, MyListTab d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            if (!ContainerMyCollectionFragment.this.f46253n) {
                ContainerMyCollectionFragment.J(ContainerMyCollectionFragment.this).f39402d.setSelectedIndex(i10);
                ContainerMyCollectionFragment.J(ContainerMyCollectionFragment.this).f39405g.setCurrentItem(i10, false);
                return;
            }
            ContainerMyCollectionFragment.this.w(R$string.my_list_fragment_edit_mode_tab_disable_tip);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContainerMyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46262a;

        d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46262a = function;
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
            return this.f46262a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46262a.invoke(obj);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ContainerMyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment\n*L\n1#1,20:1\n394#2,14:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class e implements Function0<Unit> {
        public e() {
        }

        public final void a() {
            Context requireContext = ContainerMyCollectionFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            Builder builder = new Builder();
            builder.setContent(ContainerMyCollectionFragment.this.getString(R$string.my_list_fragment_delete_tip));
            builder.setPositiveButtonText(ContainerMyCollectionFragment.this.getString(R$string.common_confirm));
            builder.setPositiveButtonClickListener(new g());
            builder.setNegativeButtonText(ContainerMyCollectionFragment.this.getString(R$string.common_cancel));
            new li.b(requireContext, builder).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: ContainerMyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends yd.d {
        g() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ContainerMyCollectionFragment containerMyCollectionFragment = ContainerMyCollectionFragment.this;
            containerMyCollectionFragment.a0(containerMyCollectionFragment.b0());
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ContainerMyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment\n*L\n1#1,20:1\n289#2,24:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h implements Function0<Unit> {
        public h() {
        }

        public final void a() {
            ViewStubProxy viewStubProxy = ContainerMyCollectionFragment.J(ContainerMyCollectionFragment.this).f39401c;
            Intrinsics.checkNotNull(viewStubProxy);
            jk.e0.g(viewStubProxy);
            View root = viewStubProxy.getRoot();
            if (root != null) {
                View findViewById = root.findViewById(R$id.select_all_click_view);
                if (findViewById != null) {
                    findViewById.setOnClickListener(new j());
                }
                View findViewById2 = root.findViewById(R$id.delete_click_view);
                if (findViewById2 != null) {
                    findViewById2.setOnClickListener(new k());
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: ContainerMyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends yd.d {
        j() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            boolean z10 = !ContainerMyCollectionFragment.this.f46254o;
            ContainerMyCollectionFragment containerMyCollectionFragment = ContainerMyCollectionFragment.this;
            containerMyCollectionFragment.r0(containerMyCollectionFragment.b0(), z10);
            ContainerMyCollectionFragment.this.p0(true, z10);
        }
    }

    /* compiled from: ContainerMyCollectionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends yd.d {
        k() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ContainerMyCollectionFragment containerMyCollectionFragment = ContainerMyCollectionFragment.this;
            if (containerMyCollectionFragment.W(containerMyCollectionFragment.b0())) {
                ContainerMyCollectionFragment.this.l0();
            }
        }
    }

    public static final /* synthetic */ FragmentCollectionListBinding J(ContainerMyCollectionFragment containerMyCollectionFragment) {
        return containerMyCollectionFragment.A();
    }

    private final void S() {
        A().f39403e.setTextSize(2, 20.0f);
        ed.a aVar = ed.a.f51339a;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aVar.b(requireActivity, true);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-2, -2);
        if (!(getContext() instanceof MainActivity)) {
            ConstraintLayout constraintLayout = A().f39404f;
            ImageView imageView = new ImageView(requireContext());
            imageView.setImageResource(R$drawable.ic_toolbar_back);
            fk.z zVar = fk.z.f51786a;
            ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(zVar.h(), zVar.h());
            layoutParams2.startToStart = 0;
            layoutParams2.topToTop = 0;
            layoutParams2.bottomToBottom = 0;
            layoutParams2.setMarginStart(zVar.d());
            imageView.setLayoutParams(layoutParams2);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ContainerMyCollectionFragment.T(ContainerMyCollectionFragment.this, view);
                }
            });
            constraintLayout.addView(imageView);
            BaseTextView baseTextView = A().f39403e;
            layoutParams.startToStart = 0;
            layoutParams.endToEnd = 0;
            layoutParams.topToTop = 0;
            layoutParams.bottomToBottom = 0;
            baseTextView.setLayoutParams(layoutParams);
        } else {
            ConstraintLayout toolbarView = A().f39404f;
            Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
            jk.b0.g(toolbarView, DeviceUtil.f48146a.J());
        }
        BaseTextView baseTextView2 = A().f39403e;
        layoutParams.startToStart = 0;
        layoutParams.topToTop = 0;
        layoutParams.bottomToBottom = 0;
        layoutParams.setMarginStart(fk.z.f51786a.d());
        baseTextView2.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(ContainerMyCollectionFragment containerMyCollectionFragment, View view) {
        containerMyCollectionFragment.requireActivity().onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean W(Class<?> cls) {
        Fragment c02 = c0(cls);
        if (c02 == null) {
            return false;
        }
        if (c02 instanceof MyCollectionFragment2) {
            return ((MyCollectionFragment2) c02).p1();
        }
        if (!(c02 instanceof RecentlyWatchedFragment)) {
            return false;
        }
        return ((RecentlyWatchedFragment) c02).u1();
    }

    private final void X() {
        List<WeakReference<Fragment>> list = this.f46252m;
        if (list != null) {
            list.clear();
        }
    }

    private final FragmentStateAdapter Z() {
        List<WeakReference<Fragment>> list = this.f46252m;
        if (list != null) {
            list.clear();
        }
        final ArrayList<Class> arrayList = new ArrayList();
        arrayList.add(MyCollectionFragment2.class);
        final ArrayList arrayList2 = new ArrayList();
        for (Class cls : arrayList) {
            arrayList2.add(Long.valueOf(cls.hashCode()));
        }
        return new FragmentStateAdapter() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.ContainerMyCollectionFragment$createFragmentStateAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(ContainerMyCollectionFragment.this);
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
                list2 = ContainerMyCollectionFragment.this.f46252m;
                if (list2 == null) {
                    ContainerMyCollectionFragment.this.f46252m = new ArrayList();
                }
                list3 = ContainerMyCollectionFragment.this.f46252m;
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
    public final void a0(Class<?> cls) {
        Fragment c02 = c0(cls);
        if (c02 != null) {
            if (c02 instanceof MyCollectionFragment2) {
                ((MyCollectionFragment2) c02).k1();
            } else if (c02 instanceof RecentlyWatchedFragment) {
                ((RecentlyWatchedFragment) c02).n1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class<?> b0() {
        return MyCollectionFragment2.class;
    }

    private final Fragment c0(Class<?> cls) {
        Object obj;
        Class<?> cls2;
        List<WeakReference<Fragment>> list = this.f46252m;
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

    private final int d0() {
        MyCollectionFragment2 myCollectionFragment2;
        Fragment c02 = c0(b0());
        if (c02 instanceof MyCollectionFragment2) {
            myCollectionFragment2 = (MyCollectionFragment2) c02;
        } else {
            myCollectionFragment2 = null;
        }
        if (myCollectionFragment2 != null) {
            return myCollectionFragment2.m1();
        }
        return 0;
    }

    private final void f0() {
        ViewStubProxy editViewstub = A().f39401c;
        Intrinsics.checkNotNullExpressionValue(editViewstub, "editViewstub");
        jk.e0.b(editViewstub, 0, 1, null);
    }

    private final void g0() {
        A().f39399a.setOnClickListener(new b());
    }

    private final void h0(List<MyListTab> list) {
        r("initTabView -> mCurrentTabIndex(" + this.f46248i + ')');
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_my_list_tab);
        selectableAdapter.I(this.f46248i);
        selectableAdapter.H(false);
        selectableAdapter.J(new c());
        RecyclerView.ItemDecoration itemDecoration = new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.ContainerMyCollectionFragment$initTabView$itemDecoration$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                jk.r.a(outRect, 0, 0, fk.z.f51786a.g(), 0);
            }
        };
        TabView tabView = A().f39402d;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        tabView.a(list, selectableAdapter, itemDecoration, new CatchExceptionLinearLayoutManager(requireContext, 0, false));
    }

    private final void i0(FragmentStateAdapter fragmentStateAdapter) {
        ViewPager2 viewPager2 = A().f39405g;
        viewPager2.setSaveEnabled(false);
        viewPager2.setAdapter(fragmentStateAdapter);
        Intrinsics.checkNotNull(viewPager2);
        kd.d.a(viewPager2, false);
        kd.d.b(viewPager2, 2);
        viewPager2.registerOnPageChangeCallback(this.f46251l);
        int i10 = this.f46248i;
        if (i10 >= 0 && i10 < fragmentStateAdapter.getItemCount()) {
            A().f39405g.setCurrentItem(this.f46248i, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MyListViewModel j0(final ContainerMyCollectionFragment containerMyCollectionFragment) {
        MyListViewModel myListViewModel = (MyListViewModel) new ViewModelProvider(containerMyCollectionFragment).get(MyListViewModel.class);
        myListViewModel.B().observe(containerMyCollectionFragment, new d(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k02;
                k02 = ContainerMyCollectionFragment.k0(ContainerMyCollectionFragment.this, (com.startshorts.androidplayer.viewmodel.mylist.c) obj);
                return k02;
            }
        }));
        return myListViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(ContainerMyCollectionFragment containerMyCollectionFragment, com.startshorts.androidplayer.viewmodel.mylist.c cVar) {
        if (cVar instanceof c.a) {
            containerMyCollectionFragment.h0(((c.a) cVar).a());
            return Unit.f60915a;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l0() {
        FragmentExtKt.b(this, new e(), new f());
    }

    private final void m0() {
        FragmentExtKt.b(this, new h(), new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0() {
        String str;
        int i10 = 0;
        if (this.f46253n) {
            this.f46253n = false;
            this.f46254o = false;
            this.f46255p = false;
            f0();
        } else {
            this.f46253n = true;
            m0();
            q0(false);
            s0();
        }
        BaseTextView baseTextView = A().f39399a;
        if (this.f46253n) {
            str = getString(R$string.common_cancel);
        } else {
            str = "";
        }
        baseTextView.setText(str);
        ImageView imageView = A().f39400b;
        if (this.f46253n) {
            i10 = 8;
        }
        imageView.setVisibility(i10);
        A().f39405g.setUserInputEnabled(true ^ this.f46253n);
        o0(b0(), this.f46253n);
    }

    private final void o0(Class<?> cls, boolean z10) {
        Fragment c02 = c0(cls);
        if (c02 != null) {
            if (c02 instanceof MyCollectionFragment2) {
                ((MyCollectionFragment2) c02).y1(z10);
            } else if (c02 instanceof RecentlyWatchedFragment) {
                ((RecentlyWatchedFragment) c02).G1(z10);
            }
        }
    }

    private final void q0(boolean z10) {
        ImageView imageView;
        int i10;
        ViewStubProxy viewStubProxy = A().f39401c;
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
    public final void r0(Class<?> cls, boolean z10) {
        Fragment c02 = c0(cls);
        if (c02 != null) {
            if (c02 instanceof MyCollectionFragment2) {
                ((MyCollectionFragment2) c02).z1(z10);
            } else if (c02 instanceof RecentlyWatchedFragment) {
                ((RecentlyWatchedFragment) c02).H1(z10);
            }
        }
    }

    private final void s0() {
        TextView textView;
        String string;
        int i10;
        int d02 = d0();
        ViewStubProxy viewStubProxy = A().f39401c;
        Intrinsics.checkNotNull(viewStubProxy);
        jk.e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root != null && (textView = (TextView) root.findViewById(R$id.delete_tv)) != null) {
            if (d02 > 0) {
                string = getString(R$string.common_delete) + '(' + d0() + ')';
            } else {
                string = getString(R$string.common_delete);
                Intrinsics.checkNotNull(string);
            }
            textView.setText(string);
            Context context = getContext();
            if (context != null) {
                if (d02 > 0) {
                    i10 = R$color.primary_normal;
                } else {
                    i10 = R$color.t_b_31;
                }
                textView.setTextColor(ContextCompat.getColor(context, i10));
            }
        }
    }

    public final boolean U() {
        return false;
    }

    public final void V() {
        if (this.f46253n) {
            n0();
        }
    }

    public final void Y() {
        if (!this.f46253n) {
            n0();
        }
    }

    public final void e0() {
        jk.b0.d(A().f39400b);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.f46256q;
    }

    @Override // androidx.fragment.app.Fragment
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        PermissionBottomSheetDialogFragment permissionBottomSheetDialogFragment = this.f46249j;
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
        r("mCurrentTabIndex -> " + this.f46248i);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    public final void p0(boolean z10, boolean z11) {
        boolean z12;
        if (this.f46254o != z11) {
            this.f46254o = z11;
            if (z11 && z10) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f46255p = z12;
            q0(z11);
        }
        if (this.f46253n) {
            s0();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "CollectionListFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        super.t();
        S();
        g0();
        i0(Z());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        if (B()) {
            ViewPager2 viewPager2 = A().f39405g;
            viewPager2.setAdapter(null);
            viewPager2.unregisterOnPageChangeCallback(this.f46251l);
        }
        X();
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f implements Function0<Unit> {
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
    public static final class i implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
