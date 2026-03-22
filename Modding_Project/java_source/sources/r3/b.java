package r3;

import com.facebook.common.time.RealtimeSinceBootClock;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapMemoryCacheKey.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b implements f2.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f65481a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final s3.f f65482b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final s3.g f65483c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final s3.d f65484d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final f2.a f65485e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f65486f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Object f65487g;

    /* renamed from: h  reason: collision with root package name */
    private final int f65488h;

    /* renamed from: i  reason: collision with root package name */
    private final long f65489i;

    public b(@NotNull String sourceString, @Nullable s3.f fVar, @NotNull s3.g rotationOptions, @NotNull s3.d imageDecodeOptions, @Nullable f2.a aVar, @Nullable String str) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(sourceString, "sourceString");
        Intrinsics.checkNotNullParameter(rotationOptions, "rotationOptions");
        Intrinsics.checkNotNullParameter(imageDecodeOptions, "imageDecodeOptions");
        this.f65481a = sourceString;
        this.f65482b = fVar;
        this.f65483c = rotationOptions;
        this.f65484d = imageDecodeOptions;
        this.f65485e = aVar;
        this.f65486f = str;
        int hashCode = sourceString.hashCode() * 31;
        if (fVar != null) {
            i10 = fVar.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode2 = (((((hashCode + i10) * 31) + rotationOptions.hashCode()) * 31) + imageDecodeOptions.hashCode()) * 31;
        if (aVar != null) {
            i11 = aVar.hashCode();
        } else {
            i11 = 0;
        }
        this.f65488h = ((hashCode2 + i11) * 31) + (str != null ? str.hashCode() : 0);
        this.f65489i = RealtimeSinceBootClock.get().now();
    }

    public final void a(@Nullable Object obj) {
        this.f65487g = obj;
    }

    @Override // f2.a
    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(b.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.imagepipeline.cache.BitmapMemoryCacheKey");
        b bVar = (b) obj;
        if (Intrinsics.areEqual(this.f65481a, bVar.f65481a) && Intrinsics.areEqual(this.f65482b, bVar.f65482b) && Intrinsics.areEqual(this.f65483c, bVar.f65483c) && Intrinsics.areEqual(this.f65484d, bVar.f65484d) && Intrinsics.areEqual(this.f65485e, bVar.f65485e) && Intrinsics.areEqual(this.f65486f, bVar.f65486f)) {
            return true;
        }
        return false;
    }

    @Override // f2.a
    @NotNull
    public String getUriString() {
        return this.f65481a;
    }

    @Override // f2.a
    public int hashCode() {
        return this.f65488h;
    }

    @Override // f2.a
    public boolean isResourceIdForDebugging() {
        return false;
    }

    @NotNull
    public String toString() {
        String str = this.f65481a;
        s3.f fVar = this.f65482b;
        s3.g gVar = this.f65483c;
        s3.d dVar = this.f65484d;
        f2.a aVar = this.f65485e;
        String str2 = this.f65486f;
        return "BitmapMemoryCacheKey(sourceString=" + str + ", resizeOptions=" + fVar + ", rotationOptions=" + gVar + ", imageDecodeOptions=" + dVar + ", postprocessorCacheKey=" + aVar + ", postprocessorName=" + str2 + ")";
    }
}
