package com.startshorts.androidplayer.ui.activity.ranking;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.gson.reflect.TypeToken;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.databinding.ActivityRankingBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity;
import com.startshorts.androidplayer.ui.fragment.ranking.RankingFragment;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import jk.b0;
import jk.l;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: RankingActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRankingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingActivity.kt\ncom/startshorts/androidplayer/ui/activity/ranking/RankingActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1863#2,2:213\n*S KotlinDebug\n*F\n+ 1 RankingActivity.kt\ncom/startshorts/androidplayer/ui/activity/ranking/RankingActivity\n*L\n73#1:213,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RankingActivity extends BaseVDBActivity<ActivityRankingBinding> {
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final a f45454u = new a(null);

    /* renamed from: n  reason: collision with root package name */
    private ArrayList<DiscoverRanking> f45457n;

    /* renamed from: o  reason: collision with root package name */
    private int f45458o;

    /* renamed from: p  reason: collision with root package name */
    private int f45459p;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f45461r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private String f45462s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f45463t;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final String f45455l = "RankingActivity";

    /* renamed from: m  reason: collision with root package name */
    private final int f45456m = R$layout.activity_ranking;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private String f45460q = "";

    /* compiled from: RankingActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public final class PagerAdapter extends FragmentStateAdapter {

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ RankingActivity f45464i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PagerAdapter(@NotNull RankingActivity rankingActivity, AppCompatActivity act) {
            super(act);
            Intrinsics.checkNotNullParameter(act, "act");
            this.f45464i = rankingActivity;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NotNull
        public Fragment createFragment(int i10) {
            int i11;
            ArrayList arrayList = this.f45464i.f45457n;
            if (arrayList == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rankTabs");
                arrayList = null;
            }
            Object obj = arrayList.get(i10);
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            DiscoverRanking discoverRanking = (DiscoverRanking) obj;
            RankingFragment.a aVar = RankingFragment.f46649y;
            Integer id2 = discoverRanking.getId();
            if (id2 != null) {
                i11 = id2.intValue();
            } else {
                i11 = 0;
            }
            String name = discoverRanking.getName();
            if (name == null) {
                name = "";
            }
            return aVar.a(i11, name, this.f45464i.f45459p, this.f45464i.f45460q, this.f45464i.f45461r, this.f45464i.f45462s, this.f45464i.f45463t);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            ArrayList arrayList = this.f45464i.f45457n;
            if (arrayList == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rankTabs");
                arrayList = null;
            }
            return arrayList.size();
        }
    }

    /* compiled from: RankingActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRankingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingActivity.kt\ncom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n360#2,7:213\n*S KotlinDebug\n*F\n+ 1 RankingActivity.kt\ncom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$Companion\n*L\n179#1:213,7\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a {

        /* compiled from: RankingActivity.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.activity.ranking.RankingActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0631a extends TypeToken<ArrayList<DiscoverRanking>> {
            C0631a() {
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int c(Activity activity) {
            return activity.getIntent().getIntExtra("act_tab_index", 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ArrayList<DiscoverRanking> d(Activity activity) {
            try {
                String stringExtra = activity.getIntent().getStringExtra("act_tab_list");
                if (stringExtra != null) {
                    Type type = new C0631a().getType();
                    Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
                    ArrayList<DiscoverRanking> arrayList = (ArrayList) l.c(stringExtra, type);
                    if (arrayList != null) {
                        return arrayList;
                    }
                }
                return new ArrayList<>();
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("RankingActivity", "fromJson exception -> " + e10.getMessage());
                return new ArrayList<>();
            }
        }

        public final void e(@NotNull Context context, int i10, @NotNull ArrayList<DiscoverRanking> tabs, int i11, int i12, @NotNull String eventParentTabName, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(tabs, "tabs");
            Intrinsics.checkNotNullParameter(eventParentTabName, "eventParentTabName");
            Iterator<DiscoverRanking> it = tabs.iterator();
            int i13 = 0;
            int i14 = 0;
            while (true) {
                if (it.hasNext()) {
                    Integer id2 = it.next().getId();
                    if (id2 != null && id2.intValue() == i11) {
                        break;
                    }
                    i14++;
                } else {
                    i14 = -1;
                    break;
                }
            }
            if (i14 != -1) {
                i13 = i14;
            }
            Intent intent = new Intent(context, RankingActivity.class);
            intent.putExtra("act_recommend_id", i10);
            intent.putExtra("act_tab_list", l.d(tabs));
            intent.putExtra("act_tab_index", i13);
            intent.putExtra("act_event_tab_id", i12);
            intent.putExtra("act_event_tab_name", eventParentTabName);
            intent.putExtra("act_module_type", str);
            intent.putExtra("act_module_id", str2);
            intent.putExtra("act_module_name", str3);
            context.startActivity(intent);
        }

        private a() {
        }
    }

    /* compiled from: RankingActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements SelectableAdapter.d<SelectableItem> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, SelectableItem d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            RankingActivity.I(RankingActivity.this).f38390b.setSelectedIndex(i10);
            RankingActivity.I(RankingActivity.this).f38393e.setCurrentItem(i10);
            Bundle Q = RankingActivity.this.Q(i10);
            if (Q != null) {
                EventManager.s0(EventManager.f42463a, "ranking_list_tag_click", Q, 0L, 4, null);
            }
        }
    }

    /* compiled from: RankingActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            RankingActivity.this.finish();
        }
    }

    public static final /* synthetic */ ActivityRankingBinding I(RankingActivity rankingActivity) {
        return rankingActivity.E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bundle Q(int i10) {
        ArrayList<DiscoverRanking> arrayList = this.f45457n;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rankTabs");
            arrayList = null;
        }
        DiscoverRanking discoverRanking = (DiscoverRanking) CollectionsKt.t0(arrayList, i10);
        if (discoverRanking == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("scene", "discover_more");
        Integer id2 = discoverRanking.getId();
        String str = "";
        bundle.putString("ranking_list_child_id", (id2 == null || (r1 = id2.toString()) == null) ? "" : "");
        String name = discoverRanking.getName();
        if (name != null) {
            str = name;
        }
        bundle.putString("ranking_list_child_name", str);
        int i11 = this.f45459p;
        if (i11 != 0) {
            bundle.putString("tab_id", String.valueOf(i11));
            bundle.putString("tab_name", this.f45460q);
        }
        return bundle;
    }

    private final void S() {
        ArrayList<DiscoverRanking> arrayList = this.f45457n;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rankTabs");
            arrayList = null;
        }
        for (DiscoverRanking discoverRanking : arrayList) {
            discoverRanking.setClickable(true);
        }
        int c10 = f45454u.c(this);
        E().f38393e.setAdapter(new PagerAdapter(this, this));
        E().f38393e.setCurrentItem(c10, false);
        E().f38393e.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.activity.ranking.RankingActivity$initTabLayout$2
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i10) {
                RankingActivity.I(RankingActivity.this).f38390b.setSelectedIndex(i10);
                Bundle Q = RankingActivity.this.Q(i10);
                if (Q != null) {
                    EventManager.s0(EventManager.f42463a, "ranking_list_tag_show", Q, 0L, 4, null);
                }
            }
        });
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_discover_module_ranking_tab);
        selectableAdapter.J(new b());
        TabView tabView = E().f38390b;
        ArrayList<DiscoverRanking> arrayList2 = this.f45457n;
        if (arrayList2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rankTabs");
            arrayList2 = null;
        }
        Context context = E().f38390b.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        tabView.a(arrayList2, selectableAdapter, null, new CatchExceptionLinearLayoutManager(context, 0, false));
        E().f38390b.setSelectedIndex(c10);
    }

    private final void T() {
        E().f38389a.setOnClickListener(new c());
        S();
    }

    @Nullable
    public final Bundle P() {
        return Q(E().f38393e.getCurrentItem());
    }

    public final int R() {
        return this.f45458o;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return this.f45456m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f45457n = f45454u.d(this);
        this.f45458o = getIntent().getIntExtra("act_recommend_id", 0);
        this.f45459p = getIntent().getIntExtra("act_event_tab_id", 0);
        String stringExtra = getIntent().getStringExtra("act_event_tab_name");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.f45460q = stringExtra;
        this.f45461r = getIntent().getStringExtra("act_module_type");
        this.f45462s = getIntent().getStringExtra("act_module_id");
        this.f45463t = getIntent().getStringExtra("act_module_name");
        ed.a.f51339a.b(this, true);
        View toolbarView = E().f38392d;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        T();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return this.f45455l;
    }
}
