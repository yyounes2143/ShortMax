package com.startshorts.androidplayer.utils;

import android.content.Context;
import bc.d;
import bc.e;
import com.jiuzhou.cdn.CdnHelper;
import com.startshorts.androidplayer.log.Logger;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResourceHandler.kt */
@Metadata
@SourceDebugExtension({"SMAP\nResourceHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceHandler.kt\ncom/startshorts/androidplayer/utils/ResourceHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1#2:151\n*E\n"})
/* loaded from: classes7.dex */
public final class ResourceHandler {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ResourceHandler f48167a = new ResourceHandler();

    /* renamed from: b  reason: collision with root package name */
    private static long f48168b = -1;

    /* compiled from: ResourceHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        private boolean f48169a = true;

        a() {
        }

        @Override // bc.d
        public void d(String tag, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            ResourceHandler.g(tag, msg, null, 4, null);
        }

        @Override // bc.d
        public void e(String tag, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            ResourceHandler.i(tag, msg, null, 4, null);
        }

        @Override // bc.d
        public void i(String tag, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            ResourceHandler.k(tag, msg, null, 4, null);
        }

        @Override // bc.d
        public void e(String tag, String msg, Throwable e10) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(e10, "e");
            ResourceHandler.h(tag, msg, e10);
        }
    }

    private ResourceHandler() {
    }

    private final boolean b() {
        return qe.a.f65321a.value().getCdnEnable();
    }

    private final void d() {
        e.f2600a.f(new a());
    }

    private static final String e(Throwable th2) {
        String message;
        if (th2 != null && (message = th2.getMessage()) != null) {
            String str = " errMsg:" + message;
            if (str != null) {
                return str;
            }
        }
        return "";
    }

    private static final void f(String str, String str2, Throwable th2) {
        if (id.a.f53392a.c()) {
            Logger logger = Logger.f41511a;
            logger.h(str, str2 + e(th2));
        }
    }

    static /* synthetic */ void g(String str, String str2, Throwable th2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        f(str, str2, th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(String str, String str2, Throwable th2) {
        Logger logger = Logger.f41511a;
        logger.e(str, str2 + e(th2));
    }

    static /* synthetic */ void i(String str, String str2, Throwable th2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        h(str, str2, th2);
    }

    private static final void j(String str, String str2, Throwable th2) {
        Logger logger = Logger.f41511a;
        logger.h(str, str2 + e(th2));
    }

    static /* synthetic */ void k(String str, String str2, Throwable th2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        j(str, str2, th2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void m(ResourceHandler resourceHandler, String str, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        resourceHandler.l(str, function0);
    }

    public static /* synthetic */ void q(ResourceHandler resourceHandler, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        resourceHandler.p(z10);
    }

    public final void c(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        CdnHelper cdnHelper = CdnHelper.f25532a;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        cdnHelper.k(applicationContext);
        d();
    }

    public final void l(@Nullable String str, @Nullable Function0<Unit> function0) {
        if (str != null && str.length() != 0 && b()) {
            CoroutineUtil.l(CoroutineUtil.f48072a, "onUrlError", false, new ResourceHandler$onUrlError$1(function0, str, null), 2, null);
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    @NotNull
    public final String n(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (!b()) {
            return url;
        }
        if (!f.f60747a.h(url)) {
            return url;
        }
        String t10 = CdnHelper.t(CdnHelper.f25532a, url, false, 2, null);
        if (t10 != null && t10.length() != 0) {
            return t10;
        }
        return url;
    }

    @NotNull
    public final String o(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (!b()) {
            return url;
        }
        String t10 = CdnHelper.t(CdnHelper.f25532a, url, false, 2, null);
        if (t10 != null && t10.length() != 0) {
            return t10;
        }
        return url;
    }

    public final void p(boolean z10) {
        if (!b()) {
            return;
        }
        long L = DeviceUtil.f48146a.L();
        if (L - f48168b < 30000) {
            return;
        }
        f48168b = L;
        CoroutineUtil.l(CoroutineUtil.f48072a, "updateCdn", false, new ResourceHandler$updateCdn$1(z10, null), 2, null);
    }
}
