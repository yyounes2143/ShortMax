package tf;

import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.manager.push.task.PushPriority;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultStartRechargingPushTask.kt */
@Metadata
/* loaded from: classes6.dex */
public final class g extends sf.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f67304b = new a(null);

    /* compiled from: DefaultStartRechargingPushTask.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // sf.b
    @Nullable
    public PushTime a() {
        if (g()) {
            return null;
        }
        ud.a aVar = ud.a.f68411a;
        if (aVar.t() || aVar.l() || f() || e()) {
            return null;
        }
        return d(DeviceUtil.f48146a.K());
    }

    @Override // sf.b
    @NotNull
    public List<PushTime> b() {
        String f10 = TimeUtil.f48175a.f(jk.f.a(new Date()));
        long h10 = h(f10 + " 06:00:00");
        return CollectionsKt.t(new PushTime(h10, h(f10 + " 22:00:00"), 3600000L, 1));
    }

    @Override // sf.b
    @NotNull
    public PushType c() {
        return PushType.START_RECHARGING;
    }

    @Override // sf.b
    @NotNull
    public String getId() {
        return "";
    }

    @Override // sf.b
    @NotNull
    public PushPriority priority() {
        return PushPriority.START_RECHARGING;
    }
}
