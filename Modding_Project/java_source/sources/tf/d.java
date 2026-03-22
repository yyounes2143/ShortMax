package tf;

import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.manager.push.task.PushPriority;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultMissCheckInPushTask.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d extends sf.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f67301b = new a(null);

    /* compiled from: DefaultMissCheckInPushTask.kt */
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
        PushTime d10;
        if (g()) {
            return null;
        }
        ud.a aVar = ud.a.f68411a;
        if (aVar.t() || aVar.l() || AccountRepo.f43052a.z0() || RewardsRepo.f44515a.p() || f() || e() || (d10 = d(DeviceUtil.f48146a.K())) == null) {
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
        return PushType.MISS_CHECK_IN;
    }

    @Override // sf.b
    @NotNull
    public String getId() {
        return "";
    }

    @Override // sf.b
    @NotNull
    public PushPriority priority() {
        return PushPriority.MISS_CHECK_IN;
    }
}
