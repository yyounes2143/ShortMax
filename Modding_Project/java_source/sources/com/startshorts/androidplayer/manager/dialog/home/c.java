package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IHomeDialogProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public interface c {

    /* compiled from: IHomeDialogProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public static boolean a(@NotNull c cVar, @NotNull MainActivity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            if (ABTestFactory.f42224a.h1().isEnable().invoke().booleanValue()) {
                return activity.r0();
            }
            return activity.p0();
        }

        public static boolean b(@NotNull c cVar) {
            return true;
        }
    }

    boolean a();

    @Nullable
    Object b(@NotNull MainActivity mainActivity, @NotNull Function0<Unit> function0, @NotNull rs.c<? super Boolean> cVar);

    @NotNull
    String name();

    @NotNull
    HomeDialogPriority priority();
}
