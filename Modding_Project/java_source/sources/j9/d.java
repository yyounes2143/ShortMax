package j9;

import com.google.firebase.sessions.DataCollectionState;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionEvent.kt */
@Metadata
/* loaded from: classes5.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final DataCollectionState f60291a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final DataCollectionState f60292b;

    /* renamed from: c  reason: collision with root package name */
    private final double f60293c;

    public d() {
        this(null, null, 0.0d, 7, null);
    }

    @NotNull
    public final DataCollectionState a() {
        return this.f60292b;
    }

    @NotNull
    public final DataCollectionState b() {
        return this.f60291a;
    }

    public final double c() {
        return this.f60293c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f60291a == dVar.f60291a && this.f60292b == dVar.f60292b && Double.compare(this.f60293c, dVar.f60293c) == 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f60291a.hashCode() * 31) + this.f60292b.hashCode()) * 31) + Double.hashCode(this.f60293c);
    }

    @NotNull
    public String toString() {
        return "DataCollectionStatus(performance=" + this.f60291a + ", crashlytics=" + this.f60292b + ", sessionSamplingRate=" + this.f60293c + ')';
    }

    public d(@NotNull DataCollectionState performance, @NotNull DataCollectionState crashlytics, double d10) {
        Intrinsics.checkNotNullParameter(performance, "performance");
        Intrinsics.checkNotNullParameter(crashlytics, "crashlytics");
        this.f60291a = performance;
        this.f60292b = crashlytics;
        this.f60293c = d10;
    }

    public /* synthetic */ d(DataCollectionState dataCollectionState, DataCollectionState dataCollectionState2, double d10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? DataCollectionState.COLLECTION_SDK_NOT_INSTALLED : dataCollectionState, (i10 & 2) != 0 ? DataCollectionState.COLLECTION_SDK_NOT_INSTALLED : dataCollectionState2, (i10 & 4) != 0 ? 1.0d : d10);
    }
}
