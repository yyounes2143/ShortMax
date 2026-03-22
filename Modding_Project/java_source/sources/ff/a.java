package ff;

import android.view.MotionEvent;
import android.view.View;
import df.e;
import ef.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TopSlideTouchHandler.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private int f51696a;

    /* compiled from: TopSlideTouchHandler.kt */
    @Metadata
    /* renamed from: ff.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public interface InterfaceC0743a {
    }

    @Override // ef.c
    public boolean a(@NotNull e manager, @NotNull View view, @NotNull MotionEvent event) {
        float f10;
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    int rawY = (((int) event.getRawY()) - this.f51696a) + manager.l().d();
                    if (((int) event.getRawY()) - this.f51696a > 0) {
                        f10 = manager.l().d();
                    } else {
                        f10 = rawY;
                    }
                    view.setY(f10);
                }
            } else {
                int rawY2 = ((int) event.getRawY()) - this.f51696a;
                if (Math.abs(rawY2) >= view.getHeight() / 3) {
                    manager.k();
                } else {
                    view.setY(manager.l().d());
                    if (Math.abs(rawY2) <= 10) {
                        manager.k();
                    } else {
                        manager.p();
                    }
                }
            }
        } else {
            this.f51696a = (int) event.getRawY();
            manager.m();
        }
        return true;
    }

    public final void b(@Nullable InterfaceC0743a interfaceC0743a) {
    }
}
