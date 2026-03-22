package ch;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import jk.f;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NotificationLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0091a f3493a = new C0091a(null);

    /* compiled from: NotificationLocalDS.kt */
    @Metadata
    /* renamed from: ch.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0091a {
        public /* synthetic */ C0091a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0091a() {
        }
    }

    private final String a(String str) {
        if (!Intrinsics.areEqual(str, "discover")) {
            str = "shared";
        }
        return TimeUtil.f48175a.f(f.a(new Date())) + '_' + str;
    }

    public final int b(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        String a10 = a(scene);
        int K1 = ud.b.f68412a.K1(a10, 1);
        Logger logger = Logger.f41511a;
        logger.h("NotificationLocalDS", "getShowNotificationPermissionDialogCount -> key=" + a10 + ",count=" + K1 + ",maxCountPerDay=1");
        return K1;
    }

    public final void c() {
        ud.b bVar = ud.b.f68412a;
        int o02 = bVar.o0() + 1;
        bVar.z3(o02);
        Logger logger = Logger.f41511a;
        logger.h("NotificationLocalDS", "onDenyCountAdd -> denyNotificationPermissionCount=" + o02);
    }

    public final int d(@NotNull String scene, int i10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        String a10 = a(scene);
        ud.b.f68412a.X4(a10, i10);
        Logger logger = Logger.f41511a;
        logger.h("NotificationLocalDS", "setShowNotificationPermissionDialogCount -> key=" + a10 + ",count=" + i10);
        return i10;
    }
}
