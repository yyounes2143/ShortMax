package sf;

import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.manager.push.task.PushPriority;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IPushTask.kt */
@Metadata
/* loaded from: classes6.dex */
public interface b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f66349a = a.f66350a;

    /* compiled from: IPushTask.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f66350a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final long f66351b = 3600000;

        private a() {
        }

        public final long a() {
            return f66351b;
        }
    }

    /* compiled from: IPushTask.kt */
    @Metadata
    /* renamed from: sf.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0921b {
        public static long a(@NotNull b bVar, @NotNull String time) {
            Intrinsics.checkNotNullParameter(time, "time");
            return TimeUtil.f48175a.r(time, TimeUtil.Template.MONTH_DAY_YEAR_HH_MM_SS);
        }
    }

    @Nullable
    PushTime a();

    @NotNull
    List<PushTime> b();

    @NotNull
    PushType c();

    @NotNull
    String getId();

    @NotNull
    PushPriority priority();
}
