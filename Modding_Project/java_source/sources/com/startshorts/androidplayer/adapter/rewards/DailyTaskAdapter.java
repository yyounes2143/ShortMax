package com.startshorts.androidplayer.adapter.rewards;

import android.view.View;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.ad.TaskRewardReceive;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemWatchAdBonusEnableWatchBinding;
import com.startshorts.androidplayer.databinding.ItemWatchAdBonusWatchedBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DailyTaskAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DailyTaskAdapter extends BaseAdapter<WatchAdBonusTask> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f37863t = new a(null);
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private c f37864o;

    /* renamed from: p  reason: collision with root package name */
    private int f37865p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private r f37866q;

    /* renamed from: r  reason: collision with root package name */
    private final int f37867r;

    /* renamed from: s  reason: collision with root package name */
    private final int f37868s;

    /* compiled from: DailyTaskAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DailyTaskAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDailyTaskAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyTaskAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$EnableWatchViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n295#2,2:164\n*S KotlinDebug\n*F\n+ 1 DailyTaskAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$EnableWatchViewHolder\n*L\n70#1:164,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<WatchAdBonusTask>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemWatchAdBonusEnableWatchBinding f37869g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DailyTaskAdapter f37870h;

        /* compiled from: DailyTaskAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ DailyTaskAdapter f37871e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ WatchAdBonusTask f37872f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(DailyTaskAdapter dailyTaskAdapter, WatchAdBonusTask watchAdBonusTask) {
                super(0L, 1, null);
                this.f37871e = dailyTaskAdapter;
                this.f37872f = watchAdBonusTask;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                c H = this.f37871e.H();
                if (H != null) {
                    H.a(this.f37872f);
                }
            }
        }

        /* compiled from: DailyTaskAdapter.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.adapter.rewards.DailyTaskAdapter$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0613b extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ DailyTaskAdapter f37873e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ WatchAdBonusTask f37874f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0613b(DailyTaskAdapter dailyTaskAdapter, WatchAdBonusTask watchAdBonusTask) {
                super(0L, 1, null);
                this.f37873e = dailyTaskAdapter;
                this.f37874f = watchAdBonusTask;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                c H = this.f37873e.H();
                if (H != null) {
                    H.b(this.f37874f);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DailyTaskAdapter dailyTaskAdapter, ItemWatchAdBonusEnableWatchBinding binding) {
            super(dailyTaskAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37870h = dailyTaskAdapter;
            this.f37869g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemWatchAdBonusEnableWatchBinding c() {
            return this.f37869g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull WatchAdBonusTask item) {
            Object obj;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView = c().f41061c;
            FrescoConfig frescoConfig = new FrescoConfig();
            DailyTaskAdapter dailyTaskAdapter = this.f37870h;
            frescoConfig.setUrl(item.getIcon());
            frescoConfig.setOssWidth(dailyTaskAdapter.f37867r);
            frescoConfig.setOssHeight(dailyTaskAdapter.f37868s);
            frescoConfig.setResizeWidth(dailyTaskAdapter.f37867r);
            frescoConfig.setResizeHeight(dailyTaskAdapter.f37868s);
            frescoConfig.setPlaceholderResId(R$drawable.task_cions_icon);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            c().f41061c.setVisibility(0);
            Integer taskContent = item.getTaskContent();
            if (taskContent != null && taskContent.intValue() == 5) {
                List<TaskRewardReceive> rewardReceiveList = item.getRewardReceiveList();
                Integer num = null;
                if (rewardReceiveList != null) {
                    Iterator<T> it = rewardReceiveList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (((TaskRewardReceive) obj).getRewardValue() > 0) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    TaskRewardReceive taskRewardReceive = (TaskRewardReceive) obj;
                    if (taskRewardReceive != null) {
                        num = Integer.valueOf(taskRewardReceive.getRewardValue());
                    }
                }
                if (num != null && num.intValue() > 0) {
                    c().f41064f.setBackgroundResource(R$drawable.bg_unity_task_button);
                    c().f41059a.setTextColor(c().f41059a.getContext().getColor(R$color.color_rewards_fragment_unity_task_btn));
                    BaseTextView baseTextView = c().f41059a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append('+');
                    sb2.append(num);
                    baseTextView.setText(sb2.toString());
                    ud.a.f68411a.r0(true);
                } else {
                    c().f41064f.setBackgroundResource(R$drawable.bg_task_button);
                    c().f41059a.setTextColor(c().f41059a.getContext().getColor(R$color.v_light));
                    c().f41059a.setText(item.getRewardValueStr());
                }
                c().f41063e.setText(item.getTaskDescription());
            } else {
                c().f41064f.setBackgroundResource(R$drawable.bg_task_button);
                c().f41059a.setTextColor(c().f41059a.getContext().getColor(R$color.v_light));
                String taskDescription = item.getTaskDescription();
                if (item.isContinuedTaskType()) {
                    taskDescription = taskDescription + " (" + item.getCompletedCount() + '/' + item.getSumCount() + ')';
                }
                c().f41063e.setText(taskDescription);
                BaseTextView baseTextView2 = c().f41059a;
                StringBuilder sb3 = new StringBuilder();
                sb3.append('+');
                sb3.append(item.getRewardValue());
                baseTextView2.setText(sb3.toString());
            }
            c().f41064f.setOnClickListener(new a(this.f37870h, item));
            c().f41062d.setOnClickListener(new C0613b(this.f37870h, item));
        }
    }

    /* compiled from: DailyTaskAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface c {
        void a(@NotNull WatchAdBonusTask watchAdBonusTask);

        void b(@NotNull WatchAdBonusTask watchAdBonusTask);
    }

    /* compiled from: DailyTaskAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<WatchAdBonusTask>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemWatchAdBonusWatchedBinding f37875g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DailyTaskAdapter f37876h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull DailyTaskAdapter dailyTaskAdapter, ItemWatchAdBonusWatchedBinding binding) {
            super(dailyTaskAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37876h = dailyTaskAdapter;
            this.f37875g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemWatchAdBonusWatchedBinding c() {
            return this.f37875g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull WatchAdBonusTask item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView = c().f41070c;
            FrescoConfig frescoConfig = new FrescoConfig();
            DailyTaskAdapter dailyTaskAdapter = this.f37876h;
            frescoConfig.setUrl(item.getIcon());
            frescoConfig.setOssWidth(dailyTaskAdapter.f37867r);
            frescoConfig.setOssHeight(dailyTaskAdapter.f37868s);
            frescoConfig.setResizeWidth(dailyTaskAdapter.f37867r);
            frescoConfig.setResizeHeight(dailyTaskAdapter.f37868s);
            frescoConfig.setPlaceholderResId(R$drawable.task_cions_icon);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            c().f41070c.setVisibility(0);
            String taskDescription = item.getTaskDescription();
            if (item.isContinuedTaskType()) {
                taskDescription = taskDescription + " (" + item.getCompletedCount() + '/' + item.getSumCount() + ')';
            }
            c().f41071d.setText(taskDescription);
            BaseTextView baseTextView = c().f41068a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append('+');
            sb2.append(item.getRewardValue());
            baseTextView.setText(sb2.toString());
        }
    }

    public DailyTaskAdapter() {
        super(0L, 1, null);
        this.f37865p = 30;
        this.f37867r = jk.g.a(40.0f);
        this.f37868s = jk.g.a(40.0f);
    }

    private final void G() {
        r rVar = this.f37866q;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            r("cancelCountDownJob");
        }
        this.f37866q = null;
    }

    @Nullable
    public final c H() {
        return this.f37864o;
    }

    public final void I(@Nullable c cVar) {
        this.f37864o = cVar;
    }

    public final void J(int i10) {
        this.f37865p = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        WatchAdBonusTask item = getItem(i10);
        if (item == null || !item.hasCompleted()) {
            return 1;
        }
        return 4;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DailyTaskAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<WatchAdBonusTask>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 4) {
            return new d(this, (ItemWatchAdBonusWatchedBinding) s(parent, R$layout.item_watch_ad_bonus_watched));
        }
        return new b(this, (ItemWatchAdBonusEnableWatchBinding) s(parent, R$layout.item_watch_ad_bonus_enable_watch));
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void z() {
        super.z();
        G();
    }
}
