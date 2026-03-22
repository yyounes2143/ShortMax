package kotlin.ranges;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ranges.kt */
@Metadata
/* loaded from: classes8.dex */
final class c implements dt.b<Float> {

    /* renamed from: a  reason: collision with root package name */
    private final float f61084a;

    /* renamed from: b  reason: collision with root package name */
    private final float f61085b;

    public c(float f10, float f11) {
        this.f61084a = f10;
        this.f61085b = f11;
    }

    @Override // dt.b
    public /* bridge */ /* synthetic */ boolean a(Float f10, Float f11) {
        return e(f10.floatValue(), f11.floatValue());
    }

    public boolean b(float f10) {
        if (f10 >= this.f61084a && f10 <= this.f61085b) {
            return true;
        }
        return false;
    }

    @Override // dt.c
    @NotNull
    /* renamed from: c */
    public Float getEndInclusive() {
        return Float.valueOf(this.f61085b);
    }

    @Override // dt.b
    public /* bridge */ /* synthetic */ boolean contains(Float f10) {
        return b(f10.floatValue());
    }

    @Override // dt.c
    @NotNull
    /* renamed from: d */
    public Float getStart() {
        return Float.valueOf(this.f61084a);
    }

    public boolean e(float f10, float f11) {
        if (f10 <= f11) {
            return true;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (this.f61084a != cVar.f61084a || this.f61085b != cVar.f61085b) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Float.hashCode(this.f61084a) * 31) + Float.hashCode(this.f61085b);
    }

    @Override // dt.b, dt.c
    public boolean isEmpty() {
        if (this.f61084a > this.f61085b) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return this.f61084a + ".." + this.f61085b;
    }
}
