package com.startshorts.androidplayer.repo.config.cmsDS;

import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.config.QueryDeferredDelegate;
import com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import mg.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CMSRemoteConfigDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CMSRemoteConfigDS implements f {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f43864e = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final rg.a f43865a = new rg.a();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final QueryDeferredDelegate f43866b = new QueryDeferredDelegate(tag());
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<String, RemoteConfigValue> f43867c;

    /* renamed from: d  reason: collision with root package name */
    private long f43868d;

    /* compiled from: CMSRemoteConfigDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(CMSRemoteConfigDS cMSRemoteConfigDS, String str) {
        QueryDeferredDelegate a10 = cMSRemoteConfigDS.a();
        if (str == null) {
            str = "";
        }
        a10.c(str);
        return Unit.f60915a;
    }

    private final boolean k() {
        if (DeviceUtil.f48146a.L() - this.f43868d < 30000) {
            return true;
        }
        return false;
    }

    private final void n() {
        this.f43868d = DeviceUtil.f48146a.L();
    }

    @Override // mg.f
    @NotNull
    public QueryDeferredDelegate a() {
        return this.f43866b;
    }

    @Override // mg.f
    public boolean b() {
        return f.a.c(this);
    }

    @Override // mg.f
    public void c() {
        if (a().b()) {
            return;
        }
        if (k()) {
            Logger.f41511a.e(tag(), "fetchRemoteConfig -> ignored, interval not reached");
            return;
        }
        n();
        a().d();
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        CoroutineUtil.k(coroutineUtil, null, tag() + ".fetchRemoteConfig", false, new CMSRemoteConfigDS$fetchRemoteConfig$1(this, null), new Function1() { // from class: rg.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j10;
                j10 = CMSRemoteConfigDS.j(CMSRemoteConfigDS.this, (String) obj);
                return j10;
            }
        }, 5, null);
    }

    @Override // mg.f
    @Nullable
    public Object d(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return f.a.a(this, str, cVar);
    }

    @Override // mg.f
    @Nullable
    public ConcurrentHashMap<String, RemoteConfigValue> e() {
        return this.f43867c;
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

    public final void l() {
        this.f43868d = 0L;
    }

    public void m(@Nullable ConcurrentHashMap<String, RemoteConfigValue> concurrentHashMap) {
        this.f43867c = concurrentHashMap;
    }

    @Override // mg.f
    @NotNull
    public String tag() {
        return "CMSRemoteConfigDS";
    }
}
