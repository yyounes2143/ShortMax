package com.startshorts.androidplayer.ui.fragment.immersion;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionAccumulatedTaskBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import com.startshorts.androidplayer.ui.view.task.AccumulatedDailyTaskView;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionAccumulatedDailyTaskDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionAccumulatedDailyTaskDialog extends BottomSheetPageStateFragment<DialogFragmentImmersionAccumulatedTaskBinding> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f46090q = new a(null);
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private NewbieWatchTask f46091o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private AccumulatedDailyTaskView f46092p;

    /* compiled from: ImmersionAccumulatedDailyTaskDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final int O() {
        NewbieWatchBonus newbieWatchBonus;
        ud.b bVar = ud.b.f68412a;
        NewbieWatchTask l02 = bVar.l0();
        if (l02 == null) {
            return 0;
        }
        long X1 = bVar.X1();
        List<NewbieWatchBonus> list = l02.getList();
        if (list == null) {
            return 0;
        }
        ListIterator<NewbieWatchBonus> listIterator = list.listIterator(list.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                newbieWatchBonus = listIterator.previous();
                if (newbieWatchBonus.getPayTime() * 1000 <= X1) {
                    break;
                }
            } else {
                newbieWatchBonus = null;
                break;
            }
        }
        NewbieWatchBonus newbieWatchBonus2 = newbieWatchBonus;
        if (newbieWatchBonus2 == null) {
            return 0;
        }
        return newbieWatchBonus2.getCumsumBonus();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_immersion_accumulated_daily_task;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        AccumulatedDailyTaskView accumulatedDailyTaskView = this.f46092p;
        if (accumulatedDailyTaskView != null) {
            accumulatedDailyTaskView.release();
        }
        EventManager.s0(EventManager.f42463a, "mission_center_pop_close", null, 0L, 6, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46091o == null) {
            dismiss();
        } else {
            this.f46092p = (AccumulatedDailyTaskView) view.findViewById(R$id.accumulated_task_view);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ImmersionAccumulatedTaskDialog";
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String str) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, str);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putInt("completion_progress", (int) (ud.b.f68412a.X1() / 1000));
        bundle.putInt("tickets", O());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "mission_center_pop_show", bundle, 0L, 4, null);
    }
}
