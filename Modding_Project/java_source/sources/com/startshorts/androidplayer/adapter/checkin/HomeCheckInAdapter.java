package com.startshorts.androidplayer.adapter.checkin;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.checkin.HomeCheckInAdapter;
import com.startshorts.androidplayer.bean.checkin.CheckInInfo;
import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
import com.startshorts.androidplayer.databinding.ItemHomeCheckInDayBigBinding;
import com.startshorts.androidplayer.databinding.ItemHomeCheckInDayNormalBinding;
import com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import jk.f;
import jk.g;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HomeCheckInAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHomeCheckInAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n1663#2,8:176\n1062#2:184\n360#2,7:185\n*S KotlinDebug\n*F\n+ 1 HomeCheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter\n*L\n140#1:176,8\n140#1:184\n148#1:185,7\n*E\n"})
/* loaded from: classes6.dex */
public final class HomeCheckInAdapter extends BaseAdapter<CheckInInfo> {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final b f37228s = new b(null);

    /* renamed from: o  reason: collision with root package name */
    private int f37229o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private CheckInInfo f37230p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private CheckInInfo f37231q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final i f37232r;

    /* compiled from: HomeCheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<CheckInInfo>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemHomeCheckInDayBigBinding f37233g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ HomeCheckInAdapter f37234h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull HomeCheckInAdapter homeCheckInAdapter, ItemHomeCheckInDayBigBinding binding) {
            super(homeCheckInAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37234h = homeCheckInAdapter;
            this.f37233g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemHomeCheckInDayBigBinding c() {
            return this.f37233g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull CheckInInfo item) {
            int L;
            boolean isSign;
            float f10;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (this.f37234h.f37229o != -1) {
                L = this.f37234h.L(i10);
            } else {
                L = 2;
            }
            boolean z10 = false;
            if (this.f37234h.f37229o == -1) {
                isSign = false;
            } else {
                isSign = item.isSign();
            }
            HomeCheckInAdapter homeCheckInAdapter = this.f37234h;
            ConstraintLayout rootView = c().f40438e;
            Intrinsics.checkNotNullExpressionValue(rootView, "rootView");
            if (L == 0) {
                f10 = 0.4f;
            } else {
                f10 = 1.0f;
            }
            homeCheckInAdapter.R(rootView, f10);
            HomeCheckInAdapter homeCheckInAdapter2 = this.f37234h;
            View bgDay = c().f40434a;
            Intrinsics.checkNotNullExpressionValue(bgDay, "bgDay");
            if (L == 2) {
                z10 = true;
            }
            homeCheckInAdapter2.T(bgDay, z10);
            HomeCheckInAdapter homeCheckInAdapter3 = this.f37234h;
            ImageView dayIv = c().f40437d;
            Intrinsics.checkNotNullExpressionValue(dayIv, "dayIv");
            homeCheckInAdapter3.S(dayIv, isSign, item.getDayIndex());
            c().f40436c.setText(item.getFormatBonus());
            HomeCheckInAdapter homeCheckInAdapter4 = this.f37234h;
            BaseTextView checkInDay = c().f40435b;
            Intrinsics.checkNotNullExpressionValue(checkInDay, "checkInDay");
            homeCheckInAdapter4.U(checkInDay, item.getDayIndex());
        }
    }

    /* compiled from: HomeCheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: HomeCheckInAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<CheckInInfo>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemHomeCheckInDayNormalBinding f37235g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ HomeCheckInAdapter f37236h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull HomeCheckInAdapter homeCheckInAdapter, ItemHomeCheckInDayNormalBinding binding) {
            super(homeCheckInAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37236h = homeCheckInAdapter;
            this.f37235g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemHomeCheckInDayNormalBinding c() {
            return this.f37235g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull CheckInInfo item) {
            int L;
            boolean isSign;
            float f10;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (this.f37236h.f37229o != -1) {
                L = this.f37236h.L(i10);
            } else {
                L = 2;
            }
            boolean z10 = false;
            if (this.f37236h.f37229o == -1) {
                isSign = false;
            } else {
                isSign = item.isSign();
            }
            HomeCheckInAdapter homeCheckInAdapter = this.f37236h;
            ConstraintLayout rootView = c().f40446e;
            Intrinsics.checkNotNullExpressionValue(rootView, "rootView");
            if (L == 0) {
                f10 = 0.4f;
            } else {
                f10 = 1.0f;
            }
            homeCheckInAdapter.R(rootView, f10);
            HomeCheckInAdapter homeCheckInAdapter2 = this.f37236h;
            View bgDay = c().f40442a;
            Intrinsics.checkNotNullExpressionValue(bgDay, "bgDay");
            if (L == 2) {
                z10 = true;
            }
            homeCheckInAdapter2.T(bgDay, z10);
            HomeCheckInAdapter homeCheckInAdapter3 = this.f37236h;
            ImageView dayIv = c().f40445d;
            Intrinsics.checkNotNullExpressionValue(dayIv, "dayIv");
            homeCheckInAdapter3.S(dayIv, isSign, item.getDayIndex());
            c().f40444c.setText(item.getFormatBonus());
            HomeCheckInAdapter homeCheckInAdapter4 = this.f37236h;
            BaseTextView checkInDay = c().f40443b;
            Intrinsics.checkNotNullExpressionValue(checkInDay, "checkInDay");
            homeCheckInAdapter4.U(checkInDay, item.getDayIndex());
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 HomeCheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter\n*L\n1#1,121:1\n140#2:122\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((CheckInInfo) t11).getBonus()), Integer.valueOf(((CheckInInfo) t10).getBonus()));
        }
    }

    public HomeCheckInAdapter() {
        super(0L, 1, null);
        this.f37229o = -1;
        this.f37232r = kotlin.c.b(new Function0() { // from class: ld.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String P;
                P = HomeCheckInAdapter.P();
                return P;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int L(int i10) {
        int i11 = this.f37229o;
        if (i10 == i11) {
            return 1;
        }
        if (i10 < i11) {
            return 0;
        }
        return 2;
    }

    private final String M() {
        return (String) this.f37232r.getValue();
    }

    private final void N() {
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : m()) {
            if (hashSet.add(Integer.valueOf(((CheckInInfo) obj).getBonus()))) {
                arrayList.add(obj);
            }
        }
        List U0 = CollectionsKt.U0(arrayList, new d());
        this.f37230p = (CheckInInfo) CollectionsKt.t0(U0, 0);
        this.f37231q = (CheckInInfo) CollectionsKt.t0(U0, 1);
    }

    private final void O() {
        int i10 = -1;
        if (this.f37229o == -1) {
            Iterator<CheckInInfo> it = m().iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (Intrinsics.areEqual(it.next().getDay(), M())) {
                    i10 = i11;
                    break;
                } else {
                    i11++;
                }
            }
            this.f37229o = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String P() {
        String str;
        CheckInInfoResult a10 = AdSignInfoManager.f42264a.a();
        if (a10 != null) {
            str = a10.getZoneStr();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            return TimeUtil.f48175a.h(f.a(new Date()), str, TimeUtil.Template.YEAR_MONTH_DAY);
        }
        return RewardsRepo.f44515a.l();
    }

    private final void Q(ImageView imageView, float f10) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.width = g.a(f10);
        layoutParams.height = g.a(28.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R(View view, float f10) {
        view.setAlpha(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S(ImageView imageView, boolean z10, int i10) {
        if (z10) {
            imageView.setImageResource(R$drawable.icon_signed_pass);
            Q(imageView, 28.0f);
            return;
        }
        CheckInInfo checkInInfo = this.f37230p;
        if (checkInInfo != null && i10 == checkInInfo.getDayIndex()) {
            imageView.setImageResource(R$drawable.ic_checked_in_3bonus);
            Q(imageView, 68.0f);
            return;
        }
        CheckInInfo checkInInfo2 = this.f37231q;
        if (checkInInfo2 != null && i10 == checkInInfo2.getDayIndex()) {
            imageView.setImageResource(R$drawable.ic_checked_in_2bonus);
            Q(imageView, 48.0f);
            return;
        }
        imageView.setImageResource(R$drawable.icon_not_sign_pass);
        Q(imageView, 28.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(View view, boolean z10) {
        int i10;
        if (z10) {
            i10 = R$drawable.bg_check_in_daily_future;
        } else {
            i10 = R$drawable.bg_check_in_daily_present;
        }
        view.setBackgroundResource(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(TextView textView, int i10) {
        textView.setText(u.f51776a.e(R$string.rewards_activity_check_in_day, Integer.valueOf(i10)));
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void C(@Nullable List<CheckInInfo> list, boolean z10) {
        this.f37229o = -1;
        super.C(list, z10);
        N();
        O();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        CheckInInfo checkInInfo = this.f37230p;
        if (checkInInfo != null && checkInInfo.getDayIndex() == m().get(i10).getDayIndex()) {
            return 2;
        }
        return 1;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<CheckInInfo>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 2) {
            return new a(this, (ItemHomeCheckInDayBigBinding) s(parent, R$layout.item_home_check_in_day_big));
        }
        return new c(this, (ItemHomeCheckInDayNormalBinding) s(parent, R$layout.item_home_check_in_day_normal));
    }
}
