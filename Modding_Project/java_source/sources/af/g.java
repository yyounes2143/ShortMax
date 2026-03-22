package af;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FixedReportManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f637a = new g();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static r f638b;

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c(int i10) {
        EventManager.s(EventManager.f42463a, false, 1, null);
        return Unit.f60915a;
    }

    public final void b() {
        if (f638b == null) {
            qe.a aVar = qe.a.f65321a;
            if (aVar.value().getFixedReportEvent()) {
                Logger.f41511a.h("FixedReportManager", "start");
                f638b = CoroutineUtil.n(CoroutineUtil.f48072a, aVar.value().getFixedReportInterval() * 1000, null, new Function1() { // from class: af.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit c10;
                        c10 = g.c(((Integer) obj).intValue());
                        return c10;
                    }
                }, null, 10, null);
            }
        }
    }

    public final void d() {
        r rVar = f638b;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("FixedReportManager", "stop");
        }
        f638b = null;
    }
}
