package dk;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DailyWatchDramaTaskCoinHandler.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDailyWatchDramaTaskCoinHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyWatchDramaTaskCoinHandler.kt\ncom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskCoinHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1#2:144\n*E\n"})
/* loaded from: classes7.dex */
public final class f {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f50434d = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final DailyWatchDramaTaskView f50435a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b f50436b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private r f50437c;

    /* compiled from: DailyWatchDramaTaskCoinHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DailyWatchDramaTaskCoinHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(@NotNull NewbieWatchBonus newbieWatchBonus);

        void b();
    }

    public f(@Nullable DailyWatchDramaTaskView dailyWatchDramaTaskView, @Nullable b bVar) {
        this.f50435a = dailyWatchDramaTaskView;
        this.f50436b = bVar;
    }

    private final long e(NewbieWatchBonus newbieWatchBonus, NewbieWatchTask newbieWatchTask) {
        int i10;
        NewbieWatchBonus g10 = g(newbieWatchBonus, newbieWatchTask.getList());
        if (g10 != null) {
            i10 = g10.getPayTime();
        } else {
            i10 = 0;
        }
        return i10 * 1000;
    }

    private final void f(NewbieWatchTask newbieWatchTask) {
        DailyWatchDramaTaskView dailyWatchDramaTaskView = this.f50435a;
        if (dailyWatchDramaTaskView != null) {
            dailyWatchDramaTaskView.setAllTaskComplete(newbieWatchTask.isAllTaskComplete());
        }
        DailyWatchDramaTaskView dailyWatchDramaTaskView2 = this.f50435a;
        if (dailyWatchDramaTaskView2 != null) {
            dailyWatchDramaTaskView2.setVisibility(0);
        }
    }

    private final NewbieWatchBonus g(NewbieWatchBonus newbieWatchBonus, List<NewbieWatchBonus> list) {
        int indexOf = list.indexOf(newbieWatchBonus) - 1;
        if (indexOf >= 0) {
            return list.get(indexOf);
        }
        return null;
    }

    private final void j(final NewbieWatchBonus newbieWatchBonus, NewbieWatchTask newbieWatchTask) {
        if (this.f50437c != null) {
            Logger.f41511a.h("DailyWatchDramaTaskCoinHandler", "job is started");
            return;
        }
        f(newbieWatchTask);
        final long e10 = e(newbieWatchBonus, newbieWatchTask);
        c();
        this.f50437c = CoroutineUtil.f48072a.e(Long.MAX_VALUE, 1000L, new Function1() { // from class: dk.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k10;
                k10 = f.k(e10, newbieWatchBonus, this, ((Long) obj).longValue());
                return k10;
            }
        }, new Function0() { // from class: dk.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit l10;
                l10 = f.l();
                return l10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(long j10, NewbieWatchBonus newbieWatchBonus, f fVar, long j11) {
        double d10;
        int b10 = vi.e.f68955a.b();
        double X1 = ud.b.f68412a.X1();
        double d11 = X1 - j10;
        double payTime = (newbieWatchBonus.getPayTime() * 1000) - j10;
        double d12 = (payTime - d11) / 1000;
        if (d12 >= 60.0d) {
            DailyWatchDramaTaskView dailyWatchDramaTaskView = fVar.f50435a;
            if (dailyWatchDramaTaskView != null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                d10 = payTime;
                String string = dailyWatchDramaTaskView.getContext().getString(R$string.daily_watch_drama_task_count_down_with_min);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                double d13 = 60;
                String format = String.format(string, Arrays.copyOf(new Object[]{String.valueOf((int) (d12 / d13)), String.valueOf((int) (d12 % d13))}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                dailyWatchDramaTaskView.X(format, b10);
            } else {
                d10 = payTime;
            }
        } else {
            d10 = payTime;
            DailyWatchDramaTaskView dailyWatchDramaTaskView2 = fVar.f50435a;
            if (dailyWatchDramaTaskView2 != null) {
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                String string2 = dailyWatchDramaTaskView2.getContext().getString(R$string.rewards_check_in_dialog_check_more_countdown);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                String format2 = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf((int) (d12 % 60))}, 1));
                Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                dailyWatchDramaTaskView2.X(format2, b10);
            }
        }
        Logger.f41511a.h("DailyWatchDramaTaskCoinHandler", "playTime= " + X1 + ", totalTime= " + d11 + ",startTime= " + j10 + ',');
        if (d11 >= d10) {
            fVar.c();
            b bVar = fVar.f50436b;
            if (bVar != null) {
                bVar.a(newbieWatchBonus);
            }
            DailyWatchDramaTaskView dailyWatchDramaTaskView3 = fVar.f50435a;
            if (dailyWatchDramaTaskView3 != null) {
                dailyWatchDramaTaskView3.X("", b10);
            }
            DailyWatchDramaTaskView dailyWatchDramaTaskView4 = fVar.f50435a;
            if (dailyWatchDramaTaskView4 != null) {
                dailyWatchDramaTaskView4.V();
            }
            fVar.m();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l() {
        return Unit.f60915a;
    }

    private final void m() {
        b bVar = this.f50436b;
        if (bVar != null) {
            bVar.b();
        }
    }

    public final void c() {
        r rVar = this.f50437c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("DailyWatchDramaTaskCoinHandler", "cancelCountDownJob");
        }
        this.f50437c = null;
    }

    public final void d() {
        c();
    }

    public final void h() {
        Object obj;
        long j10;
        double d10;
        DailyWatchDramaTaskView dailyWatchDramaTaskView;
        ud.b bVar = ud.b.f68412a;
        NewbieWatchTask l02 = bVar.l0();
        if (l02 != null) {
            f(l02);
            double X1 = bVar.X1();
            Iterator<T> it = l02.getList().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (X1 < ((NewbieWatchBonus) obj).getPayTime() * 1000) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            NewbieWatchBonus newbieWatchBonus = (NewbieWatchBonus) obj;
            if (newbieWatchBonus != null) {
                long e10 = e(newbieWatchBonus, l02);
                double d11 = X1 - e10;
                double payTime = (newbieWatchBonus.getPayTime() * 1000) - e10;
                double d12 = (payTime - d11) / 1000;
                if (d12 >= 60.0d) {
                    DailyWatchDramaTaskView dailyWatchDramaTaskView2 = this.f50435a;
                    if (dailyWatchDramaTaskView2 != null) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String string = dailyWatchDramaTaskView2.getContext().getString(R$string.daily_watch_drama_task_count_down_with_min);
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        d10 = payTime;
                        double d13 = 60;
                        j10 = e10;
                        String format = String.format(string, Arrays.copyOf(new Object[]{String.valueOf((int) (d12 / d13)), String.valueOf((int) (d12 % d13))}, 2));
                        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                        dailyWatchDramaTaskView2.L(format);
                    } else {
                        j10 = e10;
                        d10 = payTime;
                    }
                } else {
                    j10 = e10;
                    d10 = payTime;
                    DailyWatchDramaTaskView dailyWatchDramaTaskView3 = this.f50435a;
                    if (dailyWatchDramaTaskView3 != null) {
                        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                        String string2 = dailyWatchDramaTaskView3.getContext().getString(R$string.rewards_check_in_dialog_check_more_countdown);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        String format2 = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf((int) (d12 % 60))}, 1));
                        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                        dailyWatchDramaTaskView3.L(format2);
                    }
                }
                Logger.f41511a.h("DailyWatchDramaTaskCoinHandler", "playTime= " + X1 + ", totalTime= " + d11 + ",startTime= " + j10 + ',');
                if (d11 >= d10 && (dailyWatchDramaTaskView = this.f50435a) != null) {
                    DailyWatchDramaTaskView.M(dailyWatchDramaTaskView, null, 1, null);
                }
            }
        }
    }

    public final void i() {
        c();
    }

    public final void n(@NotNull NewbieWatchBonus newbieWatchBonus, @NotNull NewbieWatchTask newbieWatchTask) {
        Intrinsics.checkNotNullParameter(newbieWatchBonus, "newbieWatchBonus");
        Intrinsics.checkNotNullParameter(newbieWatchTask, "newbieWatchTask");
        j(newbieWatchBonus, newbieWatchTask);
    }
}
