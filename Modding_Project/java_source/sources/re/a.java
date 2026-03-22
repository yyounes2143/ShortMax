package re;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.configure.PlayerConfigController;
import com.startshorts.androidplayer.bean.configure.PlayerPreloadConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import java.util.ArrayList;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.text.StringsKt;
import me.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: PlayerJsonConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements b<PlayerConfigController> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f65803a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f65804b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final PlayerConfigController f65805c;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PlayerPreloadConfig("480p", 4, 1024, 5, 4));
        arrayList.add(new PlayerPreloadConfig("720p", 4, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT, 5, 4));
        arrayList.add(new PlayerPreloadConfig("1080p", 4, 2048, 5, 4));
        f65805c = new PlayerConfigController(arrayList);
    }

    private a() {
    }

    private final boolean f(String str) {
        List<PlayerPreloadConfig> preloadConfigs;
        if (StringsKt.t0(str)) {
            Logger.f41511a.e("PlayerJsonConfigure", "update failed -> json is blank");
            return false;
        }
        try {
            PlayerConfigController playerConfigController = (PlayerConfigController) l.b(str, PlayerConfigController.class);
            if (playerConfigController != null && (preloadConfigs = playerConfigController.getPreloadConfigs()) != null && !preloadConfigs.isEmpty()) {
                f65805c.setPreloadConfigs(playerConfigController.getPreloadConfigs());
            }
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("PlayerJsonConfigure", "update failed " + e10);
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
        Object h10 = AppConfigureUtil.f42209a.h("player_config_android", this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public void c(boolean z10) {
        f65804b = z10;
    }

    @Override // me.b
    public boolean e() {
        return f65804b;
    }

    @Override // me.b
    @NotNull
    /* renamed from: g */
    public PlayerConfigController value() {
        return f65805c;
    }
}
