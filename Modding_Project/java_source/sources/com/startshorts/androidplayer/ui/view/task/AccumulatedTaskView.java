package com.startshorts.androidplayer.ui.view.task;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
import android.widget.TextView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccumulatedTaskView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccumulatedTaskView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccumulatedTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n774#2:198\n865#2,2:199\n*S KotlinDebug\n*F\n+ 1 AccumulatedTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView\n*L\n167#1:198\n167#1:199,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AccumulatedTaskView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f48036h = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private TextView f48037b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextView f48038c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private AccumulatedTaskProgressView f48039d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private HorizontalScrollView f48040e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private TextView f48041f;

    /* renamed from: g  reason: collision with root package name */
    private int f48042g;

    /* compiled from: AccumulatedTaskView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccumulatedTaskView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48042g = -1;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_accumulated_task;
    }

    @Nullable
    public final TextView getMWatchNowTv() {
        return this.f48041f;
    }

    public final void setMWatchNowTv(@Nullable TextView textView) {
        this.f48041f = textView;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48037b = (TextView) findViewById(R$id.accumulated_task_limited_time_tv);
        this.f48038c = (TextView) findViewById(R$id.accumulated_task_coin_bonus_tv);
        this.f48039d = (AccumulatedTaskProgressView) findViewById(R$id.accumulated_task_progress_view);
        this.f48040e = (HorizontalScrollView) findViewById(R$id.accumulated_task_scroll_view);
        this.f48041f = (TextView) findViewById(R$id.watch_now_tv);
    }
}
