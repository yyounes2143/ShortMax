package m0;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageResult.kt */
@Metadata
/* loaded from: classes2.dex */
public final class d extends g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f62348a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final f f62349b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Throwable f62350c;

    public d(@Nullable Drawable drawable, @NotNull f fVar, @NotNull Throwable th2) {
        super(null);
        this.f62348a = drawable;
        this.f62349b = fVar;
        this.f62350c = th2;
    }

    @Override // m0.g
    @Nullable
    public Drawable a() {
        return this.f62348a;
    }

    @Override // m0.g
    @NotNull
    public f b() {
        return this.f62349b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (Intrinsics.areEqual(a(), dVar.a()) && Intrinsics.areEqual(b(), dVar.b()) && Intrinsics.areEqual(this.f62350c, dVar.f62350c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10;
        Drawable a10 = a();
        if (a10 != null) {
            i10 = a10.hashCode();
        } else {
            i10 = 0;
        }
        return (((i10 * 31) + b().hashCode()) * 31) + this.f62350c.hashCode();
    }
}
