package com.startshorts.androidplayer.ui.view.task;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.task.AccumulatedDailyTaskView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import jk.b0;
import jk.g;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccumulatedDailyTaskView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccumulatedDailyTaskView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccumulatedDailyTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n2632#2,3:309\n1872#2,3:312\n774#2:315\n865#2,2:316\n1#3:318\n*S KotlinDebug\n*F\n+ 1 AccumulatedDailyTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView\n*L\n202#1:309,3\n209#1:312,3\n250#1:315\n250#1:316,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AccumulatedDailyTaskView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f48010r = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private TextView f48011b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextView f48012c;

    /* renamed from: d  reason: collision with root package name */
    private AccumulatedTaskProgressView f48013d;

    /* renamed from: e  reason: collision with root package name */
    private HorizontalScrollView f48014e;

    /* renamed from: f  reason: collision with root package name */
    private View f48015f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f48016g;

    /* renamed from: h  reason: collision with root package name */
    private BaseTextView f48017h;

    /* renamed from: i  reason: collision with root package name */
    private NewbieWatchTask f48018i;

    /* renamed from: j  reason: collision with root package name */
    private List<NewbieWatchBonus> f48019j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private b f48020k;

    /* renamed from: l  reason: collision with root package name */
    private int f48021l;

    /* renamed from: m  reason: collision with root package name */
    private int f48022m;

    /* renamed from: n  reason: collision with root package name */
    private int f48023n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f48024o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private r f48025p;

    /* renamed from: q  reason: collision with root package name */
    private int f48026q;

    /* compiled from: AccumulatedDailyTaskView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AccumulatedDailyTaskView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void b();

        void c();

        void d(@NotNull List<NewbieWatchBonus> list, int i10);
    }

    /* compiled from: AccumulatedDailyTaskView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b bVar = AccumulatedDailyTaskView.this.f48020k;
            if (bVar != null) {
                bVar.c();
            }
        }
    }

    /* compiled from: AccumulatedDailyTaskView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ List<NewbieWatchBonus> f48029f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f48030g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(List<NewbieWatchBonus> list, int i10) {
            super(0L, 1, null);
            this.f48029f = list;
            this.f48030g = i10;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b bVar = AccumulatedDailyTaskView.this.f48020k;
            if (bVar != null) {
                bVar.d(this.f48029f, this.f48030g);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccumulatedDailyTaskView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48022m = -1;
    }

    private final void A() {
        final int i10;
        int i11;
        NewbieWatchBonus newbieWatchBonus;
        int i12;
        final int i13;
        NewbieWatchTask newbieWatchTask = this.f48018i;
        final HorizontalScrollView horizontalScrollView = null;
        if (newbieWatchTask == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dailyWatchTask");
            newbieWatchTask = null;
        }
        NewbieWatchBonus newbieWatchBonus2 = (NewbieWatchBonus) CollectionsKt.D0(newbieWatchTask.getList());
        int i14 = 0;
        if (newbieWatchBonus2 != null) {
            i10 = newbieWatchBonus2.getPayTime();
        } else {
            i10 = 0;
        }
        AccumulatedTaskProgressView accumulatedTaskProgressView = this.f48013d;
        if (accumulatedTaskProgressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAccumulatedTaskProgressView");
            accumulatedTaskProgressView = null;
        }
        accumulatedTaskProgressView.setProgressBarMax(i10);
        List<NewbieWatchBonus> list = this.f48019j;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskList");
            list = null;
        }
        Iterator it = CollectionsKt.N0(list).iterator();
        int i15 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int i16 = i15 + 1;
            if (this.f48023n >= ((NewbieWatchBonus) it.next()).getPayTime()) {
                List<NewbieWatchBonus> list2 = this.f48019j;
                if (list2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("taskList");
                    list2 = null;
                }
                this.f48022m = (list2.size() - 1) - i15;
            } else {
                i15 = i16;
            }
        }
        List<NewbieWatchBonus> list3 = this.f48019j;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskList");
            list3 = null;
        }
        int size = list3.size();
        int i17 = i10 / size;
        int i18 = i10 / (size * 2);
        int i19 = this.f48022m;
        if (i19 == size - 1) {
            i13 = i10;
        } else {
            if (i19 >= 0) {
                i11 = (i19 + 1) * i17;
            } else {
                i11 = 0;
            }
            if (i19 >= 0) {
                List<NewbieWatchBonus> list4 = this.f48019j;
                if (list4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("taskList");
                    list4 = null;
                }
                newbieWatchBonus = list4.get(this.f48022m);
            } else {
                newbieWatchBonus = null;
            }
            List<NewbieWatchBonus> list5 = this.f48019j;
            if (list5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("taskList");
                list5 = null;
            }
            NewbieWatchBonus newbieWatchBonus3 = list5.get(this.f48022m + 1);
            int i20 = this.f48023n;
            if (newbieWatchBonus != null) {
                i12 = newbieWatchBonus.getPayTime();
            } else {
                i12 = 0;
            }
            double d10 = i20 - i12;
            int payTime = newbieWatchBonus3.getPayTime();
            if (newbieWatchBonus != null) {
                i14 = newbieWatchBonus.getPayTime();
            }
            i13 = i11 + ((int) ((d10 / (payTime - i14)) * i18));
        }
        AccumulatedTaskProgressView accumulatedTaskProgressView2 = this.f48013d;
        if (accumulatedTaskProgressView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAccumulatedTaskProgressView");
            accumulatedTaskProgressView2 = null;
        }
        int i21 = this.f48022m;
        List<NewbieWatchBonus> list6 = this.f48019j;
        if (list6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskList");
            list6 = null;
        }
        accumulatedTaskProgressView2.w(i13, i21, list6, this.f48023n);
        HorizontalScrollView horizontalScrollView2 = this.f48014e;
        if (horizontalScrollView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAccumulatedTaskScrollView");
        } else {
            horizontalScrollView = horizontalScrollView2;
        }
        horizontalScrollView.post(new Runnable() { // from class: dk.a
            @Override // java.lang.Runnable
            public final void run() {
                AccumulatedDailyTaskView.B(horizontalScrollView, i13, i10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(HorizontalScrollView horizontalScrollView, int i10, int i11) {
        horizontalScrollView.scrollTo((int) (horizontalScrollView.getWidth() * (i10 / i11)), 0);
    }

    private final void C() {
        List<NewbieWatchBonus> list = this.f48019j;
        List<NewbieWatchBonus> list2 = null;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskList");
            list = null;
        }
        List<NewbieWatchBonus> list3 = list;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            for (NewbieWatchBonus newbieWatchBonus : list3) {
                if (!newbieWatchBonus.isReceive()) {
                    ArrayList arrayList = new ArrayList();
                    List<NewbieWatchBonus> list4 = this.f48019j;
                    if (list4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("taskList");
                    } else {
                        list2 = list4;
                    }
                    int i10 = 0;
                    int i11 = 0;
                    for (Object obj : list2) {
                        int i12 = i10 + 1;
                        if (i10 < 0) {
                            CollectionsKt.y();
                        }
                        NewbieWatchBonus newbieWatchBonus2 = (NewbieWatchBonus) obj;
                        if (!newbieWatchBonus2.isReceive() && this.f48023n >= newbieWatchBonus2.getPayTime()) {
                            arrayList.add(newbieWatchBonus2);
                            i11 = i10;
                        }
                        i10 = i12;
                    }
                    if (arrayList.isEmpty()) {
                        E();
                        return;
                    } else {
                        I(arrayList, i11 + 1);
                        return;
                    }
                }
            }
        }
        D();
    }

    private final void D() {
        ImageView imageView = this.f48016g;
        View view = null;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonIconView");
            imageView = null;
        }
        b0.l(imageView);
        imageView.setImageResource(R$drawable.task_botton_true_icon);
        BaseTextView baseTextView = this.f48017h;
        if (baseTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonTV");
            baseTextView = null;
        }
        baseTextView.setTextColor(baseTextView.getContext().getColor(R$color.v_light));
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(this.f48021l);
        baseTextView.setText(sb2.toString());
        View view2 = this.f48015f;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonView");
        } else {
            view = view2;
        }
        view.setBackgroundResource(R$drawable.bg_task_button);
        view.setAlpha(0.4f);
        view.setEnabled(false);
    }

    private final void E() {
        ImageView imageView = this.f48016g;
        BaseTextView baseTextView = null;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonIconView");
            imageView = null;
        }
        b0.d(imageView);
        View view = this.f48015f;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonView");
            view = null;
        }
        view.setEnabled(true);
        view.setBackgroundResource(R$drawable.bg_task_button);
        view.setOnClickListener(new c());
        BaseTextView baseTextView2 = this.f48017h;
        if (baseTextView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonTV");
        } else {
            baseTextView = baseTextView2;
        }
        baseTextView.setTextColor(baseTextView.getContext().getColor(R$color.v_light));
        baseTextView.setText(baseTextView.getContext().getString(R$string.rewards_activity_go));
    }

    private final void F() {
        NewbieWatchTask newbieWatchTask = this.f48018i;
        if (newbieWatchTask == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dailyWatchTask");
            newbieWatchTask = null;
        }
        int countDownEnd = (int) ((newbieWatchTask.getCountDownEnd() - DeviceUtil.f48146a.K()) / 1000);
        this.f48026q = countDownEnd;
        if (countDownEnd <= 0) {
            this.f48024o = false;
            b0.d(this.f48012c);
            return;
        }
        this.f48024o = true;
        J();
        b0.l(this.f48012c);
    }

    private final void G() {
        String string;
        TextView textView;
        List<NewbieWatchBonus> list = this.f48019j;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskList");
            list = null;
        }
        NewbieWatchBonus newbieWatchBonus = (NewbieWatchBonus) CollectionsKt.D0(list);
        if (newbieWatchBonus != null) {
            this.f48021l = newbieWatchBonus.getCumsumBonus();
            if (this.f48024o) {
                string = getContext().getString(R$string.total_bonus, String.valueOf(this.f48021l));
            } else {
                string = getContext().getString(R$string.rewards_activity_watch_drama_sub_title, String.valueOf(this.f48021l));
            }
            String str = string;
            Intrinsics.checkNotNull(str);
            TextView textView2 = this.f48011b;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mSubTitleTv");
                textView = null;
            } else {
                textView = textView2;
            }
            y.l(textView, str, new String[]{String.valueOf(this.f48021l)}, getContext().getColor(R$color.v_light), yf.a.f70794a.g(), g.b(12.0f), false, null, 96, null);
        }
    }

    private final void I(List<NewbieWatchBonus> list, int i10) {
        ArrayList<NewbieWatchBonus> arrayList = new ArrayList();
        for (Object obj : list) {
            NewbieWatchBonus newbieWatchBonus = (NewbieWatchBonus) obj;
            if (!newbieWatchBonus.isReceive() && this.f48023n >= newbieWatchBonus.getPayTime()) {
                arrayList.add(obj);
            }
        }
        int i11 = 0;
        for (NewbieWatchBonus newbieWatchBonus2 : arrayList) {
            i11 += newbieWatchBonus2.getBonus();
        }
        ImageView imageView = this.f48016g;
        BaseTextView baseTextView = null;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonIconView");
            imageView = null;
        }
        b0.l(imageView);
        imageView.setImageResource(R$drawable.task_botton_coin_icon);
        View view = this.f48015f;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonView");
            view = null;
        }
        view.setEnabled(true);
        view.setBackgroundResource(R$drawable.bg_unity_task_button);
        view.setOnClickListener(new d(arrayList, i10));
        BaseTextView baseTextView2 = this.f48017h;
        if (baseTextView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonTV");
        } else {
            baseTextView = baseTextView2;
        }
        baseTextView.setTextColor(baseTextView.getContext().getColor(R$color.color_rewards_fragment_unity_task_btn));
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(i11);
        baseTextView.setText(sb2.toString());
    }

    private final void J() {
        z();
        this.f48025p = CoroutineUtil.f48072a.d(this.f48026q, new Function1() { // from class: dk.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit K;
                K = AccumulatedDailyTaskView.K(AccumulatedDailyTaskView.this, ((Integer) obj).intValue());
                return K;
            }
        }, new Function0() { // from class: dk.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit L;
                L = AccumulatedDailyTaskView.L(AccumulatedDailyTaskView.this);
                return L;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K(AccumulatedDailyTaskView accumulatedDailyTaskView, int i10) {
        NewbieWatchTask newbieWatchTask = accumulatedDailyTaskView.f48018i;
        if (newbieWatchTask == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dailyWatchTask");
            newbieWatchTask = null;
        }
        long countDownEnd = (newbieWatchTask.getCountDownEnd() - DeviceUtil.f48146a.K()) / 1000;
        if (countDownEnd >= 0) {
            accumulatedDailyTaskView.M(TimeUtil.f48175a.c(countDownEnd, true));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(AccumulatedDailyTaskView accumulatedDailyTaskView) {
        View view = accumulatedDailyTaskView.f48015f;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mButtonView");
            view = null;
        }
        view.setEnabled(false);
        ud.b bVar = ud.b.f68412a;
        bVar.k5(0L);
        bVar.w3(null);
        b0.d(accumulatedDailyTaskView.f48012c);
        accumulatedDailyTaskView.z();
        b bVar2 = accumulatedDailyTaskView.f48020k;
        if (bVar2 != null) {
            bVar2.b();
        }
        return Unit.f60915a;
    }

    private final void M(String str) {
        TextView textView = this.f48012c;
        if (textView != null) {
            textView.setText(getContext().getString(R$string.task_coin_view_limited, str));
        }
    }

    public final void H(@NotNull NewbieWatchTask newbieWatchTask, @NotNull b listener) {
        Intrinsics.checkNotNullParameter(newbieWatchTask, "newbieWatchTask");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f48018i = newbieWatchTask;
        List<NewbieWatchBonus> list = null;
        if (newbieWatchTask == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dailyWatchTask");
            newbieWatchTask = null;
        }
        List<NewbieWatchBonus> list2 = newbieWatchTask.getList();
        this.f48019j = list2;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskList");
        } else {
            list = list2;
        }
        if (list.isEmpty()) {
            return;
        }
        this.f48020k = listener;
        this.f48023n = (int) (ud.b.f68412a.X1() / 1000);
        F();
        G();
        A();
        C();
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_accumulated_daily_task;
    }

    public final void release() {
        z();
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48012c = (TextView) findViewById(R$id.accumulated_task_limited_time_tv);
        this.f48011b = (TextView) findViewById(R$id.accumulated_task_sub_title_tv);
        this.f48013d = (AccumulatedTaskProgressView) findViewById(R$id.accumulated_task_progress_view);
        this.f48014e = (HorizontalScrollView) findViewById(R$id.accumulated_task_scroll_view);
        this.f48015f = findViewById(R$id.button_view);
        this.f48016g = (ImageView) findViewById(R$id.button_iv);
        this.f48017h = (BaseTextView) findViewById(R$id.button_tv);
    }

    public final void z() {
        r rVar = this.f48025p;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("AccumulatedTaskView", "cancelCountDownJob");
        }
        this.f48025p = null;
    }
}
