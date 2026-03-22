package ng;

import com.google.gson.Gson;
import com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig;
import com.tencent.mmkv.MMKV;
import fk.u;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppConfigManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f62912a = new e();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f62913b = kotlin.c.b(new Function0() { // from class: ng.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Gson j10;
            j10 = e.j();
            return j10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f62914c = true;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final i f62915d = kotlin.c.b(new Function0() { // from class: ng.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MMKV n10;
            n10 = e.n();
            return n10;
        }
    });
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final i f62916e = kotlin.c.b(new Function0() { // from class: ng.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            RemoteConfig m10;
            m10 = e.m();
            return m10;
        }
    });

    private e() {
    }

    private final MMKV d() {
        if (!l()) {
            f62914c = false;
            return null;
        }
        try {
            if (MMKV.getRootDir() == null) {
                MMKV.initialize(u.f51776a.b());
            }
            return MMKV.mmkvWithID("app_remote_config");
        } catch (Throwable unused) {
            f62914c = false;
            return null;
        }
    }

    private final Gson f() {
        return (Gson) f62913b.getValue();
    }

    private final RemoteConfig g() {
        return (RemoteConfig) f62916e.getValue();
    }

    private final MMKV h() {
        return (MMKV) f62915d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson j() {
        return lk.b.f62233a.e();
    }

    private final boolean l() {
        try {
            System.loadLibrary("mmkv");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RemoteConfig m() {
        try {
            e eVar = f62912a;
            RemoteConfig remoteConfig = new RemoteConfig(new qg.a(false, eVar.f(), eVar.h()));
            remoteConfig.h();
            return remoteConfig;
        } catch (Throwable unused) {
            f62914c = false;
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV n() {
        return f62912a.d();
    }

    public final void e() {
        if (!f62914c) {
            return;
        }
        try {
            RemoteConfig g10 = g();
            if (g10 != null) {
                g10.j();
            }
        } catch (Throwable unused) {
        }
    }

    @NotNull
    public final <T> T i(@NotNull String key, @NotNull T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(t10, "default");
        if (!f62914c) {
            return t10;
        }
        try {
            RemoteConfig g10 = g();
            if (g10 != null) {
                T t11 = (T) g10.g(key, t10);
                if (t11 != null) {
                    return t11;
                }
                return t10;
            }
            return t10;
        } catch (Throwable unused) {
            f62914c = false;
            return t10;
        }
    }

    public final void k() {
        try {
            g();
        } catch (Throwable unused) {
            f62914c = false;
        }
    }
}
