package tf;

import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.manager.push.task.PushPriority;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultBonusWillExpiredPushTask.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a extends sf.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final C0930a f67296b = new C0930a(null);

    /* compiled from: DefaultBonusWillExpiredPushTask.kt */
    @Metadata
    /* renamed from: tf.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0930a {
        public /* synthetic */ C0930a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0930a() {
        }
    }

    @Override // sf.b
    @Nullable
    public PushTime a() {
        PushTime d10;
        if (g()) {
            return null;
        }
        ud.a aVar = ud.a.f68411a;
        if (aVar.t() || aVar.l() || AccountRepo.f43052a.z0() || f() || e() || (d10 = d(DeviceUtil.f48146a.K())) == null) {
            return null;
        }
        return d10;
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
        return PushType.BONUS_WILL_EXPIRED;
    }

    @Override // sf.b
    @NotNull
    public String getId() {
        return "";
    }

    @Override // sf.b
    @NotNull
    public PushPriority priority() {
        return PushPriority.BONUS_WILL_EXPIRED;
    }
}
