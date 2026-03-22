package tf;

import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.manager.push.task.PushPriority;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultCustomPushTask.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c extends sf.a {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f67298d = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f67299b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final PushTime f67300c;

    /* compiled from: DefaultCustomPushTask.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(@NotNull String id2, @NotNull PushTime pushTime) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(pushTime, "pushTime");
        this.f67299b = id2;
        this.f67300c = pushTime;
    }

    @Override // sf.b
    @Nullable
    public PushTime a() {
        if (ud.a.f68411a.t()) {
            return null;
        }
        return d(DeviceUtil.f48146a.K());
    }

    @Override // sf.b
    @NotNull
    public List<PushTime> b() {
        return CollectionsKt.t(this.f67300c);
    }

    @Override // sf.b
    @NotNull
    public PushType c() {
        return PushType.CUSTOM;
    }

    @Override // sf.b
    @NotNull
    public String getId() {
        return this.f67299b;
    }

    @Override // sf.b
    @NotNull
    public PushPriority priority() {
        return PushPriority.CUSTOM_PUSH;
    }
}
