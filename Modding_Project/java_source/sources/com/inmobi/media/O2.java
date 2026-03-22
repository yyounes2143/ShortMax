package com.inmobi.media;

import androidx.annotation.WorkerThread;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.O2;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class O2 {

    /* renamed from: a  reason: collision with root package name */
    public static final LinkedHashMap f23923a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    public static final ms.i f23924b = kotlin.c.b(L2.f23795a);

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicBoolean f23925c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicBoolean f23926d = new AtomicBoolean(true);

    /* renamed from: e  reason: collision with root package name */
    public static final ConcurrentHashMap f23927e = new ConcurrentHashMap();

    /* renamed from: f  reason: collision with root package name */
    public static final ms.i f23928f = kotlin.c.b(K2.f23769a);

    static {
        Uc.f().a(new int[]{2, 1}, H2.f23692a);
        Uc.a(new Runnable() { // from class: ub.h1
            @Override // java.lang.Runnable
            public final void run() {
                O2.a();
            }
        });
    }

    @NotNull
    public static final Config a(@NotNull String str, @Nullable String str2, @Nullable N2 n22) {
        return M2.a(str, str2, n22);
    }

    public static final /* synthetic */ String b() {
        return "ConfigBootstrapHandler";
    }

    public static final /* synthetic */ String f() {
        return "O2";
    }

    @WorkerThread
    public static final void g() {
        M2.a();
    }

    @WorkerThread
    public static final void h() {
        if (f23925c.getAndSet(false)) {
            Intrinsics.checkNotNullExpressionValue(f(), "access$getTAG$cp(...)");
            ((I2) f23924b.getValue()).sendEmptyMessage(5);
        }
    }

    public static final void a() {
        M2.a();
    }
}
