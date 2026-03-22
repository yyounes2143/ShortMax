package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HomeRetainDiscountSubProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class HomeRetainDiscountSubProcessor implements c {
    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    public boolean a() {
        return c.a.b(this);
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @Nullable
    public Object b(@NotNull MainActivity mainActivity, @NotNull Function0<Unit> function0, @NotNull rs.c<? super Boolean> cVar) {
        return gt.e.g(q0.c(), new HomeRetainDiscountSubProcessor$process$2(this, mainActivity, null), cVar);
    }

    public boolean c(@NotNull MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (activity.p0() && HomeRetainDiscountSubsPresent.f42741a.h() == 0) {
            return true;
        }
        return false;
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "Coins2SubProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_COINS_2_SUB;
    }
}
