package mg;

import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.repo.config.QueryDeferredDelegate;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IRemoteConfigDS.kt */
@Metadata
/* loaded from: classes7.dex */
public interface f {

    /* compiled from: IRemoteConfigDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        @Nullable
        public static Object a(@NotNull f fVar, @NotNull String str, @NotNull rs.c<? super Boolean> cVar) {
            return fVar.a().a(str, kotlin.coroutines.jvm.internal.a.e(5000L), cVar);
        }

        @NotNull
        public static ConcurrentHashMap<String, RemoteConfigValue> b(@NotNull f fVar) {
            ConcurrentHashMap<String, RemoteConfigValue> e10 = fVar.e();
            if (e10 == null) {
                return new ConcurrentHashMap<>();
            }
            return e10;
        }

        public static boolean c(@NotNull f fVar) {
            int i10;
            ConcurrentHashMap<String, RemoteConfigValue> e10 = fVar.e();
            if (e10 != null) {
                i10 = e10.size();
            } else {
                i10 = 0;
            }
            if (i10 <= 0) {
                return false;
            }
            return true;
        }

        @NotNull
        public static f d(@NotNull f fVar, @NotNull Function0<Unit> action) {
            Intrinsics.checkNotNullParameter(action, "action");
            fVar.a().g(action);
            return fVar;
        }
    }

    @NotNull
    QueryDeferredDelegate a();

    boolean b();

    void c();

    @Nullable
    Object d(@NotNull String str, @NotNull rs.c<? super Boolean> cVar);

    @Nullable
    ConcurrentHashMap<String, RemoteConfigValue> e();

    @NotNull
    ConcurrentHashMap<String, RemoteConfigValue> f();

    @NotNull
    f g(@NotNull Function0<Unit> function0);

    @NotNull
    String tag();
}
