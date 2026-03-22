package rq;

import androidx.annotation.FloatRange;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final float f66048a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final g f66049b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final i0 f66050c;

    public f(@FloatRange(from = 0.0d, to = 1.0d) float f10, @Nullable g gVar, @Nullable i0 i0Var) {
        this.f66048a = f10;
        this.f66049b = gVar;
        this.f66050c = i0Var;
    }

    public final float a() {
        return this.f66048a;
    }

    @Nullable
    public final i0 b() {
        return this.f66050c;
    }

    @Nullable
    public final g c() {
        return this.f66049b;
    }

    public /* synthetic */ f(float f10, g gVar, i0 i0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, (i10 & 2) != 0 ? null : gVar, (i10 & 4) != 0 ? null : i0Var);
    }
}
