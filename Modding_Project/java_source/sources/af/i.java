package af;

import android.os.Bundle;
import androidx.work.PeriodicWorkRequest;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class i {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static String f641c;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static String f644f;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i f639a = new i();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Object f640b = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static long f642d = -1;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f643e = true;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static Object f645g = new Object();

    private i() {
    }

    private final Triple<Boolean, Boolean, String> b() {
        boolean z10;
        Triple<Boolean, Boolean, String> triple;
        synchronized (f640b) {
            try {
                String str = f641c;
                long L = DeviceUtil.f48146a.L();
                boolean z11 = false;
                if (str != null && str.length() != 0) {
                    long j10 = f642d;
                    if (j10 != -1 && L - j10 >= PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
                        Logger.f41511a.e("SessionManager", "sessionId(" + str + ") timeout");
                        f642d = -1L;
                        str = null;
                    }
                    z10 = false;
                    if (str != null || str.length() == 0) {
                        str = System.currentTimeMillis() + '_' + f639a.c();
                        ud.b bVar = ud.b.f68412a;
                        bVar.R4(bVar.E1() + 1);
                        z11 = true;
                    }
                    Logger.f41511a.h("SessionManager", "createSessionId -> firstCreate(" + z10 + ") createNew(" + z11 + ") sessionId(" + str + ") sessionCount(" + f639a.d() + ')');
                    triple = new Triple<>(Boolean.valueOf(z10), Boolean.valueOf(z11), str);
                }
                z10 = true;
                if (str != null) {
                }
                str = System.currentTimeMillis() + '_' + f639a.c();
                ud.b bVar2 = ud.b.f68412a;
                bVar2.R4(bVar2.E1() + 1);
                z11 = true;
                Logger.f41511a.h("SessionManager", "createSessionId -> firstCreate(" + z10 + ") createNew(" + z11 + ") sessionId(" + str + ") sessionCount(" + f639a.d() + ')');
                triple = new Triple<>(Boolean.valueOf(z10), Boolean.valueOf(z11), str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return triple;
    }

    private final String c() {
        String str = f644f;
        if (str == null || str.length() == 0) {
            str = DeviceUtil.f48146a.h();
        }
        if (str == null || str.length() == 0) {
            hk.c cVar = hk.c.f52893a;
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            str = cVar.a(uuid);
        }
        f644f = str;
        return str;
    }

    private final int d() {
        return ud.b.f68412a.E1();
    }

    public final void a() {
        f644f = null;
    }

    @NotNull
    public final String e() {
        String str = f641c;
        if (str == null) {
            return "";
        }
        return str;
    }

    public final void f() {
        synchronized (f645g) {
            try {
                if (f643e) {
                    return;
                }
                f643e = true;
                Logger logger = Logger.f41511a;
                logger.h("SessionManager", CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
                f642d = DeviceUtil.f48146a.L();
                i iVar = f639a;
                Triple<Boolean, Boolean, String> b10 = iVar.b();
                if (!b10.f().booleanValue() && !b10.g().booleanValue()) {
                    logger.h("SessionManager", "session(" + b10.h() + ") -> pause");
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("session_id", b10.h());
                    bundle.putInt("session_number", iVar.d());
                    bundle.putString("state", CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "session", bundle, 0L, 4, null);
                }
                Unit unit2 = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void g() {
        synchronized (f645g) {
            try {
                if (!f643e) {
                    return;
                }
                f643e = false;
                Logger logger = Logger.f41511a;
                logger.h("SessionManager", CampaignEx.JSON_NATIVE_VIDEO_RESUME);
                i iVar = f639a;
                Triple<Boolean, Boolean, String> b10 = iVar.b();
                f642d = -1L;
                if (b10.f().booleanValue()) {
                    logger.h("SessionManager", "session(" + b10.h() + ") -> start");
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("session_id", b10.h());
                    bundle.putInt("session_number", iVar.d());
                    bundle.putString("state", "start");
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "session", bundle, 0L, 4, null);
                } else if (b10.g().booleanValue()) {
                    logger.h("SessionManager", "session(" + f641c + ") -> end");
                    EventManager eventManager2 = EventManager.f42463a;
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("session_id", f641c);
                    bundle2.putInt("session_number", iVar.d() + (-1));
                    bundle2.putString("state", "end");
                    Unit unit2 = Unit.f60915a;
                    EventManager.s0(eventManager2, "session", bundle2, 0L, 4, null);
                    logger.h("SessionManager", "session(" + b10.h() + ") -> start");
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("session_id", b10.h());
                    bundle3.putInt("session_number", iVar.d());
                    bundle3.putString("state", "start");
                    EventManager.s0(eventManager2, "session", bundle3, 0L, 4, null);
                } else {
                    logger.h("SessionManager", "session(" + b10.h() + ") -> resume");
                    EventManager eventManager3 = EventManager.f42463a;
                    Bundle bundle4 = new Bundle();
                    bundle4.putString("session_id", b10.h());
                    bundle4.putInt("session_number", iVar.d());
                    bundle4.putString("state", CampaignEx.JSON_NATIVE_VIDEO_RESUME);
                    Unit unit3 = Unit.f60915a;
                    EventManager.s0(eventManager3, "session", bundle4, 0L, 4, null);
                }
                f641c = b10.h();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
