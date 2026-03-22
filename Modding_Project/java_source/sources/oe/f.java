package oe;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdPamMediationGroupConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f implements me.b<String> {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f63187b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f63186a = new f();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static String f63188c = "";

    private f() {
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull rs.c<? super Boolean> cVar) {
        Logger logger = Logger.f41511a;
        logger.h("AdPamMediationGroupConfigure", "init -> config(" + str + ')');
        f63188c = str;
        return kotlin.coroutines.jvm.internal.a.a(true);
    }

    @Override // me.b
    @Nullable
    public Object b(@NotNull rs.c<? super Unit> cVar) {
        Object h10 = AppConfigureUtil.f42209a.h("pam_ad_mediation_android_v1", this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public void c(boolean z10) {
        f63187b = z10;
    }

    @Override // me.b
    public boolean e() {
        return f63187b;
    }

    @Override // me.b
    @NotNull
    /* renamed from: f */
    public String value() {
        return f63188c;
    }
}
