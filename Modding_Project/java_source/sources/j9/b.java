package j9;

import com.google.firebase.sessions.LogEnvironment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApplicationInfo.kt */
@Metadata
/* loaded from: classes5.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f60244a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f60245b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f60246c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f60247d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final LogEnvironment f60248e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final a f60249f;

    public b(@NotNull String appId, @NotNull String deviceModel, @NotNull String sessionSdkVersion, @NotNull String osVersion, @NotNull LogEnvironment logEnvironment, @NotNull a androidAppInfo) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        Intrinsics.checkNotNullParameter(sessionSdkVersion, "sessionSdkVersion");
        Intrinsics.checkNotNullParameter(osVersion, "osVersion");
        Intrinsics.checkNotNullParameter(logEnvironment, "logEnvironment");
        Intrinsics.checkNotNullParameter(androidAppInfo, "androidAppInfo");
        this.f60244a = appId;
        this.f60245b = deviceModel;
        this.f60246c = sessionSdkVersion;
        this.f60247d = osVersion;
        this.f60248e = logEnvironment;
        this.f60249f = androidAppInfo;
    }

    @NotNull
    public final a a() {
        return this.f60249f;
    }

    @NotNull
    public final String b() {
        return this.f60244a;
    }

    @NotNull
    public final String c() {
        return this.f60245b;
    }

    @NotNull
    public final LogEnvironment d() {
        return this.f60248e;
    }

    @NotNull
    public final String e() {
        return this.f60247d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (Intrinsics.areEqual(this.f60244a, bVar.f60244a) && Intrinsics.areEqual(this.f60245b, bVar.f60245b) && Intrinsics.areEqual(this.f60246c, bVar.f60246c) && Intrinsics.areEqual(this.f60247d, bVar.f60247d) && this.f60248e == bVar.f60248e && Intrinsics.areEqual(this.f60249f, bVar.f60249f)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String f() {
        return this.f60246c;
    }

    public int hashCode() {
        return (((((((((this.f60244a.hashCode() * 31) + this.f60245b.hashCode()) * 31) + this.f60246c.hashCode()) * 31) + this.f60247d.hashCode()) * 31) + this.f60248e.hashCode()) * 31) + this.f60249f.hashCode();
    }

    @NotNull
    public String toString() {
        return "ApplicationInfo(appId=" + this.f60244a + ", deviceModel=" + this.f60245b + ", sessionSdkVersion=" + this.f60246c + ", osVersion=" + this.f60247d + ", logEnvironment=" + this.f60248e + ", androidAppInfo=" + this.f60249f + ')';
    }
}
