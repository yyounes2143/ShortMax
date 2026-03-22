package r0;

import coil.decode.ExifOrientationPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageLoaderOptions.kt */
@Metadata
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f65459a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f65460b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f65461c;

    /* renamed from: d  reason: collision with root package name */
    private final int f65462d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ExifOrientationPolicy f65463e;

    public n(boolean z10, boolean z11, boolean z12, int i10, @NotNull ExifOrientationPolicy exifOrientationPolicy) {
        this.f65459a = z10;
        this.f65460b = z11;
        this.f65461c = z12;
        this.f65462d = i10;
        this.f65463e = exifOrientationPolicy;
    }

    public final boolean a() {
        return this.f65459a;
    }

    @NotNull
    public final ExifOrientationPolicy b() {
        return this.f65463e;
    }

    public final int c() {
        return this.f65462d;
    }

    public final boolean d() {
        return this.f65460b;
    }

    public final boolean e() {
        return this.f65461c;
    }

    public /* synthetic */ n(boolean z10, boolean z11, boolean z12, int i10, ExifOrientationPolicy exifOrientationPolicy, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? true : z10, (i11 & 2) != 0 ? true : z11, (i11 & 4) == 0 ? z12 : true, (i11 & 8) != 0 ? 4 : i10, (i11 & 16) != 0 ? ExifOrientationPolicy.RESPECT_PERFORMANCE : exifOrientationPolicy);
    }
}
