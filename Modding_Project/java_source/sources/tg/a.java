package tg;

import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.repo.config.QueryDeferredDelegate;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import mg.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TesterRemoteConfigDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a implements f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final QueryDeferredDelegate f67306a = new QueryDeferredDelegate(tag());
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<String, RemoteConfigValue> f67307b = new ConcurrentHashMap<>();

    @Override // mg.f
    @NotNull
    public QueryDeferredDelegate a() {
        return this.f67306a;
    }

    @Override // mg.f
    public boolean b() {
        return f.a.c(this);
    }

    @Override // mg.f
    public void c() {
        QueryDeferredDelegate.f(a(), null, 1, null);
    }

    @Override // mg.f
    @Nullable
    public Object d(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return f.a.a(this, str, cVar);
    }

    @Override // mg.f
    @NotNull
    public ConcurrentHashMap<String, RemoteConfigValue> e() {
        return this.f67307b;
    }

    @Override // mg.f
    @NotNull
    public ConcurrentHashMap<String, RemoteConfigValue> f() {
        return f.a.b(this);
    }

    @Override // mg.f
    @NotNull
    public f g(@NotNull Function0<Unit> function0) {
        return f.a.d(this, function0);
    }

    public final void h(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        e().put(key, new RemoteConfigValue(tag(), value, 0L, 4, null));
        QueryDeferredDelegate.f(a(), null, 1, null);
    }

    @Override // mg.f
    @NotNull
    public String tag() {
        return "TesterRemoteConfigDS";
    }
}
