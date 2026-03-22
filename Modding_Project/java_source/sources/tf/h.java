package tf;

import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.manager.push.task.PushPriority;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.repo.billing.subs.SubsRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultSubsBonusPushTask.kt */
@Metadata
/* loaded from: classes6.dex */
public final class h extends sf.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f67305b = new a(null);

    /* compiled from: DefaultSubsBonusPushTask.kt */
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
        if (g() || ud.a.f68411a.t() || SubsRepo.f43486a.k() || e()) {
            return null;
        }
        return d(DeviceUtil.f48146a.K());
    }

    @Override // sf.b
    @NotNull
    public List<PushTime> b() {
        String f10 = TimeUtil.f48175a.f(jk.f.a(new Date()));
        long h10 = h(f10 + " 09:00:00");
        return CollectionsKt.t(new PushTime(h10, h(f10 + " 23:59:59"), -1L, 1));
    }

    @Override // sf.b
    @NotNull
    public PushType c() {
        return PushType.SUBS_BONUS;
    }

    @Override // sf.b
    @NotNull
    public String getId() {
        return "";
    }

    @Override // sf.b
    @NotNull
    public PushPriority priority() {
        return PushPriority.SUBS_BONUS;
    }
}
