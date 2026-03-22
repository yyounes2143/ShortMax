package com.startshorts.androidplayer.ui.view.main.tab;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ce.j;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.eventbus.RefreshCollectListEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshDiscoverFragmentEvent;
import com.startshorts.androidplayer.bean.eventbus.UpdateMainTabEvent;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jk.g;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MainTabLayout.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMainTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainTabLayout.kt\ncom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,305:1\n1872#2,3:306\n*S KotlinDebug\n*F\n+ 1 MainTabLayout.kt\ncom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout\n*L\n55#1:306,3\n*E\n"})
/* loaded from: classes7.dex */
public final class MainTabLayout extends LinearLayout {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f47462c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private List<MainTab> f47463a;

    /* renamed from: b  reason: collision with root package name */
    private int f47464b;

    /* compiled from: MainTabLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MainTabLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public final class b implements View.OnTouchListener {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Function0<Unit> f47465a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final GestureDetector f47466b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MainTabLayout f47467c;

        /* compiled from: MainTabLayout.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a extends GestureDetector.SimpleOnGestureListener {
            a() {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                b.this.f47465a.invoke();
                return true;
            }
        }

        public b(@NotNull MainTabLayout mainTabLayout, @NotNull Context context, Function0<Unit> onDoubleTap) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(onDoubleTap, "onDoubleTap");
            this.f47467c = mainTabLayout;
            this.f47465a = onDoubleTap;
            this.f47466b = new GestureDetector(context, new a());
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(@Nullable View view, @NotNull MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            return this.f47466b.onTouchEvent(event);
        }
    }

    /* compiled from: MainTabLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MainTab.Type.values().length];
            try {
                iArr[MainTab.Type.ACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: MainTabLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ MainTab f47469e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ BaseMainTabView f47470f;

        /* compiled from: MainTabLayout.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[MainTab.Type.values().length];
                try {
                    iArr[MainTab.Type.DISCOVER.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[MainTab.Type.SHORTS.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[MainTab.Type.REWARDS.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[MainTab.Type.MY_LIST.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[MainTab.Type.PROFILE.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[MainTab.Type.ACT.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(MainTab mainTab, BaseMainTabView baseMainTabView) {
            super(0L, 1, null);
            this.f47469e = mainTab;
            this.f47470f = baseMainTabView;
        }

        @Override // yd.d
        public void a(View v10) {
            ActResource actResource;
            Intrinsics.checkNotNullParameter(v10, "v");
            if (this.f47469e.isSelected()) {
                if (this.f47469e.getType() == MainTab.Type.DISCOVER) {
                    au.c.d().l(new RefreshDiscoverFragmentEvent());
                    return;
                }
                return;
            }
            switch (a.$EnumSwitchMapping$0[this.f47469e.getType().ordinal()]) {
                case 1:
                    EventManager.s0(EventManager.f42463a, "discover_tab_click", null, 0L, 6, null);
                    break;
                case 2:
                    EventManager.s0(EventManager.f42463a, "short_tab_click", null, 0L, 6, null);
                    break;
                case 3:
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("scene", "tab");
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "reward_click", bundle, 0L, 4, null);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("scene", "tab");
                    EventManager.s0(eventManager, "reward_show", bundle2, 0L, 4, null);
                    if (this.f47470f.w()) {
                        RewardsRepo.f44515a.z();
                        break;
                    }
                    break;
                case 4:
                    EventManager.s0(EventManager.f42463a, "mylist_tab_click", null, 0L, 6, null);
                    if (this.f47470f.w()) {
                        au.c.d().l(new RefreshCollectListEvent());
                        break;
                    }
                    break;
                case 5:
                    EventManager.s0(EventManager.f42463a, "me_tab_click", null, 0L, 6, null);
                    break;
                case 6:
                    Object extra = this.f47469e.getExtra();
                    if (extra instanceof ActResource) {
                        actResource = (ActResource) extra;
                    } else {
                        actResource = null;
                    }
                    if (actResource != null) {
                        BaseMainTabView baseMainTabView = this.f47470f;
                        EventManager eventManager2 = EventManager.f42463a;
                        eventManager2.S("tab", actResource);
                        EventManager.s0(eventManager2, "activity_tab_click", EventManager.x(eventManager2, actResource, false, 2, null), 0L, 4, null);
                        j jVar = j.f3485a;
                        Context context = baseMainTabView.getContext();
                        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                        j.o(jVar, context, "tab", actResource, null, 8, null);
                        break;
                    }
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            au.c.d().l(new UpdateMainTabEvent(this.f47469e.getType(), true, "tab", null, 8, null));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainTabLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47464b = g.a(62.0f);
    }

    private final List<MainTab> b(String str) {
        boolean z10;
        Object obj;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MainTab(MainTab.Type.DISCOVER, null, null, 6, null));
        arrayList.add(new MainTab(MainTab.Type.SHORTS, null, null, 6, null));
        if (RewardsRepo.f44515a.q()) {
            arrayList.add(new MainTab(MainTab.Type.REWARDS, null, null, 6, null));
        } else {
            ActResourceManager actResourceManager = ActResourceManager.f41582a;
            ActResource p10 = actResourceManager.p();
            if (p10 != null && actResourceManager.n(p10)) {
                z10 = true;
            } else {
                z10 = false;
            }
            Logger logger = Logger.f41511a;
            logger.h("MainTabLayout", "createTabList -> resourceReady(" + z10 + ')');
            if (z10) {
                arrayList.add(new MainTab(MainTab.Type.ACT, null, p10, 2, null));
            }
        }
        arrayList.add(new MainTab(MainTab.Type.MY_LIST, null, null, 6, null));
        arrayList.add(new MainTab(MainTab.Type.PROFILE, null, null, 6, null));
        Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((MainTab) obj).getType().toString(), str)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        MainTab mainTab = (MainTab) obj;
        if (mainTab == null) {
            mainTab = (MainTab) CollectionsKt.r0(arrayList);
        }
        mainTab.setState(MainTab.State.SELECTED);
        return arrayList;
    }

    private final BaseMainTabView c(MainTab mainTab) {
        BaseMainTabView normalMainTabView;
        if (c.$EnumSwitchMapping$0[mainTab.getType().ordinal()] == 1) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            normalMainTabView = new ActMainTabView(context);
        } else {
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            normalMainTabView = new NormalMainTabView(context2);
        }
        normalMainTabView.setOnClickListener(new d(mainTab, normalMainTabView));
        return normalMainTabView;
    }

    private final void h() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            childAt.setOnTouchListener(new b(this, context, new Function0() { // from class: com.startshorts.androidplayer.ui.view.main.tab.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit i10;
                    i10 = MainTabLayout.i();
                    return i10;
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i() {
        au.c.d().l(new RefreshDiscoverFragmentEvent());
        return Unit.f60915a;
    }

    @Nullable
    public final ViewGroup d(@NotNull MainTab.Type type) {
        MainTab.Type type2;
        Intrinsics.checkNotNullParameter(type, "type");
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof com.startshorts.androidplayer.ui.view.main.tab.a) {
                MainTab tab = ((com.startshorts.androidplayer.ui.view.main.tab.a) childAt).getTab();
                if (tab != null) {
                    type2 = tab.getType();
                } else {
                    type2 = null;
                }
                if (type2 == type) {
                    if (!(childAt instanceof ViewGroup)) {
                        return null;
                    }
                    return (ViewGroup) childAt;
                }
            }
        }
        return null;
    }

    public final int e(@Nullable MainTab.Type type) {
        MainTab.Type type2;
        if (type == null) {
            return -1;
        }
        int childCount = getChildCount();
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt instanceof com.startshorts.androidplayer.ui.view.main.tab.a) {
                com.startshorts.androidplayer.ui.view.main.tab.a aVar = (com.startshorts.androidplayer.ui.view.main.tab.a) childAt;
                MainTab tab = aVar.getTab();
                MainTab.Type type3 = null;
                if (tab != null) {
                    type2 = tab.getType();
                } else {
                    type2 = null;
                }
                if (type2 == MainTab.Type.ACT) {
                    i10 = i12;
                }
                MainTab tab2 = aVar.getTab();
                if (tab2 != null) {
                    type3 = tab2.getType();
                }
                if (type3 == type) {
                    i11 = i12;
                }
            }
        }
        if (type != MainTab.Type.ACT) {
            if (i10 != -1 && i11 > i10) {
                return i11 - 1;
            }
            return i11;
        }
        return i10;
    }

    public final int f(@Nullable MainTab.Type type) {
        MainTab.Type type2;
        int i10 = -1;
        if (type == null) {
            return -1;
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt instanceof com.startshorts.androidplayer.ui.view.main.tab.a) {
                MainTab tab = ((com.startshorts.androidplayer.ui.view.main.tab.a) childAt).getTab();
                if (tab != null) {
                    type2 = tab.getType();
                } else {
                    type2 = null;
                }
                if (type2 == type) {
                    i10 = i11;
                }
            }
        }
        return i10;
    }

    public final void g(@NotNull String defaultType) {
        Intrinsics.checkNotNullParameter(defaultType, "defaultType");
        List<MainTab> b10 = b(defaultType);
        this.f47463a = b10;
        removeAllViews();
        this.f47464b = Math.round((DeviceUtil.f48146a.G() * 1.0f) / b10.size());
        int i10 = 0;
        for (Object obj : b10) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            MainTab mainTab = (MainTab) obj;
            BaseMainTabView c10 = c(mainTab);
            addView(c10, new LinearLayout.LayoutParams(this.f47464b, -1));
            c10.x(mainTab);
            MainTab.Type type = mainTab.getType();
            MainTab.Type type2 = MainTab.Type.REWARDS;
            if (type == type2 && !RewardsRepo.f44515a.o()) {
                l(type2, true);
            }
            i10 = i11;
        }
        h();
    }

    @Nullable
    public final List<MainTab> getTabLists() {
        return this.f47463a;
    }

    public final int getTabSize() {
        List<MainTab> list = this.f47463a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final int getTabViewWidth() {
        return this.f47464b;
    }

    public final void j(@NotNull MainTab.Type type) {
        MainTab.Type type2;
        Intrinsics.checkNotNullParameter(type, "type");
        if (type == MainTab.Type.ACT) {
            return;
        }
        int childCount = getChildCount();
        MainTab mainTab = null;
        int i10 = -1;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt instanceof com.startshorts.androidplayer.ui.view.main.tab.a) {
                com.startshorts.androidplayer.ui.view.main.tab.a aVar = (com.startshorts.androidplayer.ui.view.main.tab.a) childAt;
                MainTab tab = aVar.getTab();
                if (tab != null) {
                    type2 = tab.getType();
                } else {
                    type2 = null;
                }
                if (type2 == type) {
                    mainTab = aVar.getTab();
                    aVar.o(MainTab.State.SELECTED);
                    i10 = i11;
                } else {
                    aVar.o(MainTab.State.UNSELECTED);
                }
            }
        }
        if (i10 != -1 && mainTab != null) {
            l(type, false);
        }
    }

    public final void k(@NotNull String currentType, @NotNull MainTab.Type targetType, boolean z10) {
        Intrinsics.checkNotNullParameter(currentType, "currentType");
        Intrinsics.checkNotNullParameter(targetType, "targetType");
        ViewGroup d10 = d(targetType);
        if (d10 != null && (d10 instanceof com.startshorts.androidplayer.ui.view.main.tab.a)) {
            ((com.startshorts.androidplayer.ui.view.main.tab.a) d10).c(currentType, z10);
        }
    }

    public final void l(@NotNull MainTab.Type type, boolean z10) {
        Intrinsics.checkNotNullParameter(type, "type");
        ViewGroup d10 = d(type);
        if (d10 != null && (d10 instanceof com.startshorts.androidplayer.ui.view.main.tab.a)) {
            ((com.startshorts.androidplayer.ui.view.main.tab.a) d10).j(z10);
        }
    }
}
