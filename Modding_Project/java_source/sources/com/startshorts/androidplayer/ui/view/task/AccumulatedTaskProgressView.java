package com.startshorts.androidplayer.ui.view.task;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import java.util.List;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccumulatedTaskProgressView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccumulatedTaskProgressView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccumulatedTaskProgressView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1872#2,3:74\n*S KotlinDebug\n*F\n+ 1 AccumulatedTaskProgressView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView\n*L\n36#1:74,3\n*E\n"})
/* loaded from: classes7.dex */
public final class AccumulatedTaskProgressView extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ProgressBar f48034b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private FrameLayout f48035c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccumulatedTaskProgressView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final String v(int i10) {
        if (i10 < 60) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            sb2.append('s');
            return sb2.toString();
        }
        return (i10 / 60) + "min";
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_accumulated_task_progress;
    }

    public final void setProgressBarMax(int i10) {
        ProgressBar progressBar = this.f48034b;
        if (progressBar != null) {
            progressBar.setMax(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48034b = (ProgressBar) findViewById(R$id.accumulated_task_progress_bar);
        this.f48035c = (FrameLayout) findViewById(R$id.accumulated_task_progress_container);
    }

    public final void w(int i10, int i11, @NotNull List<NewbieWatchBonus> tasks, int i12) {
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        FrameLayout frameLayout = this.f48035c;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        int i13 = 0;
        for (Object obj : tasks) {
            int i14 = i13 + 1;
            if (i13 < 0) {
                CollectionsKt.y();
            }
            NewbieWatchBonus newbieWatchBonus = (NewbieWatchBonus) obj;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            AccumulatedTaskProgressItemView accumulatedTaskProgressItemView = new AccumulatedTaskProgressItemView(context);
            StringBuilder sb2 = new StringBuilder();
            sb2.append('+');
            sb2.append(newbieWatchBonus.getBonus());
            accumulatedTaskProgressItemView.setBonus(sb2.toString());
            accumulatedTaskProgressItemView.setTime(v(newbieWatchBonus.getPayTime()));
            if (newbieWatchBonus.isReceive()) {
                accumulatedTaskProgressItemView.r(1);
            } else if (i12 >= newbieWatchBonus.getPayTime()) {
                accumulatedTaskProgressItemView.r(2);
            } else {
                accumulatedTaskProgressItemView.r(3);
            }
            if (!newbieWatchBonus.isReceive() && i13 <= i11 + 1) {
                accumulatedTaskProgressItemView.setCoinRunVisibility(0);
            } else {
                accumulatedTaskProgressItemView.setCoinRunVisibility(8);
            }
            FrameLayout frameLayout2 = this.f48035c;
            if (frameLayout2 != null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(g.a(96.0f), -2);
                layoutParams.setMarginStart(g.a((i13 * 80) + 9.5f));
                Unit unit = Unit.f60915a;
                frameLayout2.addView(accumulatedTaskProgressItemView, layoutParams);
            }
            i13 = i14;
        }
        ProgressBar progressBar = this.f48034b;
        if (progressBar != null) {
            progressBar.setProgress(i10);
        }
    }
}
