package com.startshorts.androidplayer.manager.dialog.home;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.guide.core.GuideLayout;
import com.startshorts.androidplayer.ui.view.guide.model.HighLight;
import com.startshorts.androidplayer.ui.view.main.tab.MainTabLayout;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import java.util.ArrayList;
import java.util.List;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardTabGuideProcessor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRewardTabGuideProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardTabGuideProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/RewardTabGuideProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1863#2,2:146\n1863#2,2:148\n*S KotlinDebug\n*F\n+ 1 RewardTabGuideProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/RewardTabGuideProcessor\n*L\n58#1:146,2\n131#1:148,2\n*E\n"})
/* loaded from: classes6.dex */
public final class i implements com.startshorts.androidplayer.manager.dialog.home.c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42439a = new a(null);

    /* compiled from: RewardTabGuideProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            if (ud.a.f68411a.g() && RewardsRepo.f44515a.q()) {
                ud.b bVar = ud.b.f68412a;
                if (bVar.i2() && bVar.N1()) {
                    return true;
                }
            }
            return false;
        }

        private a() {
        }
    }

    /* compiled from: RewardTabGuideProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements jj.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<com.startshorts.androidplayer.ui.view.guide.core.a> f42440a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MainActivity f42441b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f42442c;

        b(Ref.ObjectRef<com.startshorts.androidplayer.ui.view.guide.core.a> objectRef, MainActivity mainActivity, Function0<Unit> function0) {
            this.f42440a = objectRef;
            this.f42441b = mainActivity;
            this.f42442c = function0;
        }

        @Override // jj.a
        public void a(com.startshorts.androidplayer.ui.view.guide.core.a controller) {
            Intrinsics.checkNotNullParameter(controller, "controller");
            this.f42441b.F0(MainTab.Type.REWARDS, false);
            this.f42441b.F0(MainTab.Type.MY_LIST, false);
            this.f42442c.invoke();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // jj.a
        public void b(com.startshorts.androidplayer.ui.view.guide.core.a controller) {
            Intrinsics.checkNotNullParameter(controller, "controller");
            this.f42440a.element = controller;
        }
    }

    /* compiled from: RewardTabGuideProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c implements jj.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MainActivity f42443a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<com.startshorts.androidplayer.ui.view.guide.core.a> f42444b;

        c(MainActivity mainActivity, Ref.ObjectRef<com.startshorts.androidplayer.ui.view.guide.core.a> objectRef) {
            this.f42443a = mainActivity;
            this.f42444b = objectRef;
        }

        @Override // jj.c
        public void a(int i10) {
            MainTab.Type type;
            String string;
            String string2;
            GuideLayout b10;
            ConstraintLayout.LayoutParams layoutParams;
            ConstraintLayout.LayoutParams layoutParams2;
            if (i10 == 0) {
                type = MainTab.Type.REWARDS;
            } else {
                type = MainTab.Type.MY_LIST;
            }
            int tabViewWidth = this.f42443a.l0().getTabViewWidth() * kotlin.ranges.e.n(this.f42443a.l0().getTabSize() - (this.f42443a.l0().f(type) + 1), 0, 5);
            if (i10 == 0) {
                string = this.f42443a.getString(R$string.main_activity_tab_guide_tip_1);
            } else {
                string = this.f42443a.getString(R$string.main_activity_tab_guide_tip_2);
            }
            String str = string;
            Intrinsics.checkNotNull(str);
            if (i10 == 0) {
                string2 = this.f42443a.getString(R$string.main_activity_tab_reward);
            } else {
                string2 = this.f42443a.getString(R$string.main_activity_tab_my_list);
            }
            Intrinsics.checkNotNull(string2);
            com.startshorts.androidplayer.ui.view.guide.core.a aVar = this.f42444b.element;
            if (aVar != null && (b10 = aVar.b()) != null) {
                MainActivity mainActivity = this.f42443a;
                View findViewById = b10.findViewById(R$id.confirm_tv);
                ConstraintLayout.LayoutParams layoutParams3 = null;
                if (findViewById != null) {
                    ViewGroup.LayoutParams layoutParams4 = findViewById.getLayoutParams();
                    if (layoutParams4 instanceof ConstraintLayout.LayoutParams) {
                        layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams4;
                    } else {
                        layoutParams2 = null;
                    }
                    if (layoutParams2 != null) {
                        layoutParams2.setMarginEnd(tabViewWidth);
                    } else {
                        layoutParams2 = null;
                    }
                    findViewById.setLayoutParams(layoutParams2);
                }
                BaseTextView baseTextView = (BaseTextView) b10.findViewById(R$id.tip_tv);
                if (baseTextView != null) {
                    ViewGroup.LayoutParams layoutParams5 = baseTextView.getLayoutParams();
                    if (layoutParams5 instanceof ConstraintLayout.LayoutParams) {
                        layoutParams = (ConstraintLayout.LayoutParams) layoutParams5;
                    } else {
                        layoutParams = null;
                    }
                    if (layoutParams != null) {
                        layoutParams.setMargins(0, 0, tabViewWidth, jk.g.a(74.0f) + DeviceUtil.f48146a.H());
                        layoutParams3 = layoutParams;
                    }
                    baseTextView.setLayoutParams(layoutParams3);
                    y.l(baseTextView, str, new String[]{string2}, ContextCompat.getColor(mainActivity, 17170443), yf.a.f70794a.g(), 0.0f, false, null, 112, null);
                }
            }
            this.f42443a.F0(type, true);
        }
    }

    private final void d(MainActivity mainActivity, List<com.startshorts.androidplayer.ui.view.guide.model.a> list, Function0<Unit> function0) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ij.a h10 = hj.a.f52885a.a(mainActivity).g(new b(objectRef, mainActivity, function0)).h(new c(mainActivity, objectRef));
        for (com.startshorts.androidplayer.ui.view.guide.model.a aVar : list) {
            h10.a(aVar);
        }
        h10.i();
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    public boolean a() {
        return c.a.b(this);
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @Nullable
    public Object b(@NotNull MainActivity mainActivity, @NotNull Function0<Unit> function0, @NotNull rs.c<? super Boolean> cVar) {
        if (!c(mainActivity)) {
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        if (f42439a.a()) {
            ud.b.f68412a.a5(false);
            MainTabLayout l02 = mainActivity.l0();
            ArrayList arrayList = new ArrayList();
            ArrayList<ViewGroup> arrayList2 = new ArrayList();
            ViewGroup d10 = l02.d(MainTab.Type.REWARDS);
            if (d10 != null) {
                kotlin.coroutines.jvm.internal.a.a(arrayList2.add(d10));
            }
            ViewGroup d11 = l02.d(MainTab.Type.MY_LIST);
            if (d11 != null) {
                kotlin.coroutines.jvm.internal.a.a(arrayList2.add(d11));
            }
            if (arrayList2.size() == 2) {
                for (ViewGroup viewGroup : arrayList2) {
                    arrayList.add(com.startshorts.androidplayer.ui.view.guide.model.a.b(com.startshorts.androidplayer.ui.view.guide.model.a.f47275h.a().l(ContextCompat.getColor(l02.getContext(), R$color.color_main_activity_tab_guide_bg)).m(R$layout.view_main_activity_reward_tab_guide), viewGroup, HighLight.Shape.ROUND_RECTANGLE, z.f51786a.s(), 0, null, null, 32, null));
                }
                d(mainActivity, arrayList, function0);
                return kotlin.coroutines.jvm.internal.a.a(true);
            }
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        return kotlin.coroutines.jvm.internal.a.a(false);
    }

    public boolean c(@NotNull MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return activity.p0();
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "RewardTabGuideProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_REWARD_TAB_GUIDE;
    }
}
