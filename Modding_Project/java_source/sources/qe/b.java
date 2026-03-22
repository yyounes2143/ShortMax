package qe;

import com.startshorts.androidplayer.bean.configure.ServerController;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ServerJsonConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b implements me.b<ServerController> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f65324a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static ServerController f65325b = new ServerController(null, 0, 3, null);

    /* renamed from: c  reason: collision with root package name */
    private static boolean f65326c;

    private b() {
    }

    private final boolean f(String str) {
        if (StringsKt.t0(str)) {
            Logger.f41511a.e("ServerJsonConfigure", "update failed -> json is blank");
            return false;
        }
        try {
            ServerController serverController = (ServerController) l.b(str, ServerController.class);
            if (serverController != null) {
                f65325b = serverController;
            }
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ServerJsonConfigure", "update exception -> " + e10.getMessage());
            return false;
        }
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(f(str));
    }

    @Override // me.b
    @Nullable
    public Object b(@NotNull c<? super Unit> cVar) {
        Object h10 = AppConfigureUtil.f42209a.h("and_server_config", this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public void c(boolean z10) {
        f65326c = z10;
    }

    @Override // me.b
    public boolean e() {
        return f65326c;
    }

    @Override // me.b
    @NotNull
    /* renamed from: g */
    public ServerController value() {
        return f65325b;
    }
}
