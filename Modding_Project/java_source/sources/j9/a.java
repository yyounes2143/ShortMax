package j9;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApplicationInfo.kt */
@Metadata
/* loaded from: classes5.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f60237a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f60238b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f60239c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f60240d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final y f60241e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<y> f60242f;

    public a(@NotNull String packageName, @NotNull String versionName, @NotNull String appBuildVersion, @NotNull String deviceManufacturer, @NotNull y currentProcessDetails, @NotNull List<y> appProcessDetails) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(versionName, "versionName");
        Intrinsics.checkNotNullParameter(appBuildVersion, "appBuildVersion");
        Intrinsics.checkNotNullParameter(deviceManufacturer, "deviceManufacturer");
        Intrinsics.checkNotNullParameter(currentProcessDetails, "currentProcessDetails");
        Intrinsics.checkNotNullParameter(appProcessDetails, "appProcessDetails");
        this.f60237a = packageName;
        this.f60238b = versionName;
        this.f60239c = appBuildVersion;
        this.f60240d = deviceManufacturer;
        this.f60241e = currentProcessDetails;
        this.f60242f = appProcessDetails;
    }

    @NotNull
    public final String a() {
        return this.f60239c;
    }

    @NotNull
    public final List<y> b() {
        return this.f60242f;
    }

    @NotNull
    public final y c() {
        return this.f60241e;
    }

    @NotNull
    public final String d() {
        return this.f60240d;
    }

    @NotNull
    public final String e() {
        return this.f60237a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f60237a, aVar.f60237a) && Intrinsics.areEqual(this.f60238b, aVar.f60238b) && Intrinsics.areEqual(this.f60239c, aVar.f60239c) && Intrinsics.areEqual(this.f60240d, aVar.f60240d) && Intrinsics.areEqual(this.f60241e, aVar.f60241e) && Intrinsics.areEqual(this.f60242f, aVar.f60242f)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String f() {
        return this.f60238b;
    }

    public int hashCode() {
        return (((((((((this.f60237a.hashCode() * 31) + this.f60238b.hashCode()) * 31) + this.f60239c.hashCode()) * 31) + this.f60240d.hashCode()) * 31) + this.f60241e.hashCode()) * 31) + this.f60242f.hashCode();
    }

    @NotNull
    public String toString() {
        return "AndroidApplicationInfo(packageName=" + this.f60237a + ", versionName=" + this.f60238b + ", appBuildVersion=" + this.f60239c + ", deviceManufacturer=" + this.f60240d + ", currentProcessDetails=" + this.f60241e + ", appProcessDetails=" + this.f60242f + ')';
    }
}
