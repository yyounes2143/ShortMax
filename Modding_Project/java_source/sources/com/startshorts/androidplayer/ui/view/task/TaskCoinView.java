package com.startshorts.androidplayer.ui.view.task;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.progress.RingProgressBar;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TaskCoinView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTaskCoinView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskCoinView.kt\ncom/startshorts/androidplayer/ui/view/task/TaskCoinView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,144:1\n254#2:145\n*S KotlinDebug\n*F\n+ 1 TaskCoinView.kt\ncom/startshorts/androidplayer/ui/view/task/TaskCoinView\n*L\n136#1:145\n*E\n"})
/* loaded from: classes7.dex */
public final class TaskCoinView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f48057n = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private View f48058b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f48059c;

    /* renamed from: d  reason: collision with root package name */
    private View f48060d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f48061e;

    /* renamed from: f  reason: collision with root package name */
    public RingProgressBar f48062f;

    /* renamed from: g  reason: collision with root package name */
    private View f48063g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f48064h;

    /* renamed from: i  reason: collision with root package name */
    private int f48065i;

    /* renamed from: j  reason: collision with root package name */
    private long f48066j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f48067k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private String f48068l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private String f48069m;

    /* compiled from: TaskCoinView.kt */
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
    public TaskCoinView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48068l = "";
        this.f48069m = "TASK_MODE_NEWBIE";
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_task_coin;
    }

    public final int getMBonus() {
        return this.f48065i;
    }

    @NotNull
    public final RingProgressBar getMCoinProgressBar() {
        RingProgressBar ringProgressBar = this.f48062f;
        if (ringProgressBar != null) {
            return ringProgressBar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mCoinProgressBar");
        return null;
    }

    public final long getMLimitedTime() {
        return this.f48066j;
    }

    @NotNull
    public final String getMScene() {
        return this.f48068l;
    }

    @NotNull
    public final String getTaskMode() {
        return this.f48069m;
    }

    public final void setLastTask(boolean z10) {
        this.f48067k = z10;
    }

    public final void setMBonus(int i10) {
        this.f48065i = i10;
    }

    public final void setMCoinProgressBar(@NotNull RingProgressBar ringProgressBar) {
        Intrinsics.checkNotNullParameter(ringProgressBar, "<set-?>");
        this.f48062f = ringProgressBar;
    }

    public final void setMLimitedTime(long j10) {
        this.f48066j = j10;
    }

    public final void setMScene(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f48068l = str;
    }

    public final void setTaskMode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f48069m = str;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48058b = findViewById(R$id.task_coin_content_cl);
        this.f48059c = (TextView) findViewById(R$id.task_coin_limited_tv);
        this.f48060d = findViewById(R$id.bg_coin_view);
        ImageView imageView = (ImageView) findViewById(R$id.coin_iv);
        this.f48061e = imageView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCoinIv");
            imageView = null;
        }
        imageView.setContentDescription(context.getString(R$string.profile_fragment_coins));
        setMCoinProgressBar((RingProgressBar) findViewById(R$id.coin_progress_bar));
        this.f48063g = findViewById(R$id.bg_coin_got_view);
        this.f48064h = (TextView) findViewById(R$id.task_coin_bonus_tv);
    }
}
