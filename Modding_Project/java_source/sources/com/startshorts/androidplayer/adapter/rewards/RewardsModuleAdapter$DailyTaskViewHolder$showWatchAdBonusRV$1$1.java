package com.startshorts.androidplayer.adapter.rewards;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
/* compiled from: RewardsModuleAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1 extends RecyclerView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f37919a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Ref.IntRef f37920b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ RecyclerView f37921c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ RewardsModuleAdapter f37922d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1(Ref.BooleanRef booleanRef, Ref.IntRef intRef, RecyclerView recyclerView, RewardsModuleAdapter rewardsModuleAdapter) {
        this.f37919a = booleanRef;
        this.f37920b = intRef;
        this.f37921c = recyclerView;
        this.f37922d = rewardsModuleAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(RewardsModuleAdapter rewardsModuleAdapter, Ref.IntRef intRef) {
        DailyTaskAdapter dailyTaskAdapter = rewardsModuleAdapter.G;
        if (dailyTaskAdapter != null) {
            dailyTaskAdapter.notifyItemChanged(intRef.element);
        }
        intRef.element = -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (i10 == 1 || i10 == 2) {
            Ref.BooleanRef booleanRef = this.f37919a;
            if (!booleanRef.element) {
                booleanRef.element = true;
                return;
            }
        }
        if (i10 == 0) {
            this.f37919a.element = false;
            final Ref.IntRef intRef = this.f37920b;
            if (intRef.element != -1) {
                RecyclerView recyclerView2 = this.f37921c;
                final RewardsModuleAdapter rewardsModuleAdapter = this.f37922d;
                recyclerView2.post(new Runnable() { // from class: com.startshorts.androidplayer.adapter.rewards.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1.b(RewardsModuleAdapter.this, intRef);
                    }
                });
            }
        }
    }
}
