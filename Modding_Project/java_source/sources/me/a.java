package me;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import rs.c;
/* compiled from: ConfigureInUse.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final C0871a f62503c = new C0871a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private String f62504a = "";
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f62505b;

    /* compiled from: ConfigureInUse.kt */
    @Metadata
    /* renamed from: me.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0871a {
        public /* synthetic */ C0871a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0871a() {
        }
    }

    public static /* synthetic */ void d(a aVar, JSONObject jSONObject, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        aVar.c(jSONObject, z10);
    }

    @NotNull
    public final String a() {
        return this.f62504a;
    }

    public final void b(@Nullable String str) {
        if (str != null && str.length() != 0) {
            this.f62504a = str;
        } else {
            Logger.f41511a.h("ConfigureInUse", "onInitSucceed -> configure is null or empty");
        }
    }

    public final void c(@NotNull JSONObject newJson, boolean z10) {
        String str;
        Intrinsics.checkNotNullParameter(newJson, "newJson");
        if (!Intrinsics.areEqual(String.valueOf(this.f62505b), newJson.toString())) {
            JSONObject jSONObject = this.f62505b;
            String str2 = (jSONObject == null || (str2 = Long.valueOf(AppConfigureUtil.f42209a.b(jSONObject)).toString()) == null) ? "" : "";
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onTargetJsonChange ");
            if (this.f62505b == null) {
                str = "init ";
            } else {
                str = "change from maxActiveTime=" + str2 + ",json=" + this.f62505b + "  to ";
            }
            sb2.append(str);
            String sb3 = sb2.toString();
            this.f62505b = newJson;
            String str3 = sb3 + "maxActiveTime=" + AppConfigureUtil.f42209a.b(newJson) + ",json=" + newJson + '.';
            if (z10) {
                Logger.f41511a.h("ConfigureInUse", str3);
            }
        }
    }

    @Nullable
    public final Object e(@NotNull b<?> bVar, @NotNull c<? super Unit> cVar) {
        if (this.f62504a.length() == 0) {
            Logger.f41511a.e("ConfigureInUse", "reParse failed -> mConfigure is null or empty");
            return Unit.f60915a;
        }
        Object a10 = bVar.a(this.f62504a, cVar);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Unit.f60915a;
    }
}
