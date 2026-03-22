package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.ActEntranceManager;
import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActDialogProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b implements c {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(b bVar, Function0 function0) {
        Logger.f41511a.h(bVar.name(), "onDismiss");
        function0.invoke();
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    public boolean a() {
        return false;
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @Nullable
    public Object b(@NotNull MainActivity mainActivity, @NotNull final Function0<Unit> function0, @NotNull rs.c<? super Boolean> cVar) {
        if (!d(mainActivity)) {
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        return ActEntranceManager.f41563a.m(mainActivity, new Function0() { // from class: we.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit e10;
                e10 = com.startshorts.androidplayer.manager.dialog.home.b.e(com.startshorts.androidplayer.manager.dialog.home.b.this, function0);
                return e10;
            }
        }, cVar);
    }

    public boolean d(@NotNull MainActivity mainActivity) {
        return c.a.a(this, mainActivity);
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "ActDialogProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_ACT;
    }
}
