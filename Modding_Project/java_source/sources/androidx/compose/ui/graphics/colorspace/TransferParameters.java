package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TransferParameters.kt */
@Metadata
/* loaded from: classes.dex */
public final class TransferParameters {

    /* renamed from: a  reason: collision with root package name */
    private final double f1243a;

    /* renamed from: b  reason: collision with root package name */
    private final double f1244b;

    /* renamed from: c  reason: collision with root package name */
    private final double f1245c;

    /* renamed from: d  reason: collision with root package name */
    private final double f1246d;

    /* renamed from: e  reason: collision with root package name */
    private final double f1247e;

    /* renamed from: f  reason: collision with root package name */
    private final double f1248f;
    private final double gamma;

    public TransferParameters(double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        this.gamma = d10;
        this.f1243a = d11;
        this.f1244b = d12;
        this.f1245c = d13;
        this.f1246d = d14;
        this.f1247e = d15;
        this.f1248f = d16;
        if (Double.isNaN(d11) || Double.isNaN(d12) || Double.isNaN(d13) || Double.isNaN(d14) || Double.isNaN(d15) || Double.isNaN(d16) || Double.isNaN(d10)) {
            throw new IllegalArgumentException("Parameters cannot be NaN");
        }
        if (d14 < 0.0d || d14 > 1.0d) {
            throw new IllegalArgumentException("Parameter d must be in the range [0..1], was " + d14);
        } else if (d14 == 0.0d && (d11 == 0.0d || d10 == 0.0d)) {
            throw new IllegalArgumentException("Parameter a or g is zero, the transfer function is constant");
        } else {
            if (d14 >= 1.0d && d13 == 0.0d) {
                throw new IllegalArgumentException("Parameter c is zero, the transfer function is constant");
            }
            if ((d11 == 0.0d || d10 == 0.0d) && d13 == 0.0d) {
                throw new IllegalArgumentException("Parameter a or g is zero, and c is zero, the transfer function is constant");
            }
            if (d13 < 0.0d) {
                throw new IllegalArgumentException("The transfer function must be increasing");
            }
            if (d11 < 0.0d || d10 < 0.0d) {
                throw new IllegalArgumentException("The transfer function must be positive or increasing");
            }
        }
    }

    public static /* synthetic */ TransferParameters copy$default(TransferParameters transferParameters, double d10, double d11, double d12, double d13, double d14, double d15, double d16, int i10, Object obj) {
        double d17;
        double d18;
        double d19;
        double d20;
        double d21;
        double d22;
        double d23;
        if ((i10 & 1) != 0) {
            d17 = transferParameters.gamma;
        } else {
            d17 = d10;
        }
        if ((i10 & 2) != 0) {
            d18 = transferParameters.f1243a;
        } else {
            d18 = d11;
        }
        if ((i10 & 4) != 0) {
            d19 = transferParameters.f1244b;
        } else {
            d19 = d12;
        }
        if ((i10 & 8) != 0) {
            d20 = transferParameters.f1245c;
        } else {
            d20 = d13;
        }
        if ((i10 & 16) != 0) {
            d21 = transferParameters.f1246d;
        } else {
            d21 = d14;
        }
        if ((i10 & 32) != 0) {
            d22 = transferParameters.f1247e;
        } else {
            d22 = d15;
        }
        if ((i10 & 64) != 0) {
            d23 = transferParameters.f1248f;
        } else {
            d23 = d16;
        }
        return transferParameters.copy(d17, d18, d19, d20, d21, d22, d23);
    }

    public final double component1() {
        return this.gamma;
    }

    public final double component2() {
        return this.f1243a;
    }

    public final double component3() {
        return this.f1244b;
    }

    public final double component4() {
        return this.f1245c;
    }

    public final double component5() {
        return this.f1246d;
    }

    public final double component6() {
        return this.f1247e;
    }

    public final double component7() {
        return this.f1248f;
    }

    @NotNull
    public final TransferParameters copy(double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        return new TransferParameters(d10, d11, d12, d13, d14, d15, d16);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransferParameters)) {
            return false;
        }
        TransferParameters transferParameters = (TransferParameters) obj;
        if (Intrinsics.areEqual((Object) Double.valueOf(this.gamma), (Object) Double.valueOf(transferParameters.gamma)) && Intrinsics.areEqual((Object) Double.valueOf(this.f1243a), (Object) Double.valueOf(transferParameters.f1243a)) && Intrinsics.areEqual((Object) Double.valueOf(this.f1244b), (Object) Double.valueOf(transferParameters.f1244b)) && Intrinsics.areEqual((Object) Double.valueOf(this.f1245c), (Object) Double.valueOf(transferParameters.f1245c)) && Intrinsics.areEqual((Object) Double.valueOf(this.f1246d), (Object) Double.valueOf(transferParameters.f1246d)) && Intrinsics.areEqual((Object) Double.valueOf(this.f1247e), (Object) Double.valueOf(transferParameters.f1247e)) && Intrinsics.areEqual((Object) Double.valueOf(this.f1248f), (Object) Double.valueOf(transferParameters.f1248f))) {
            return true;
        }
        return false;
    }

    public final double getA() {
        return this.f1243a;
    }

    public final double getB() {
        return this.f1244b;
    }

    public final double getC() {
        return this.f1245c;
    }

    public final double getD() {
        return this.f1246d;
    }

    public final double getE() {
        return this.f1247e;
    }

    public final double getF() {
        return this.f1248f;
    }

    public final double getGamma() {
        return this.gamma;
    }

    public int hashCode() {
        return (((((((((((Double.hashCode(this.gamma) * 31) + Double.hashCode(this.f1243a)) * 31) + Double.hashCode(this.f1244b)) * 31) + Double.hashCode(this.f1245c)) * 31) + Double.hashCode(this.f1246d)) * 31) + Double.hashCode(this.f1247e)) * 31) + Double.hashCode(this.f1248f);
    }

    @NotNull
    public String toString() {
        return "TransferParameters(gamma=" + this.gamma + ", a=" + this.f1243a + ", b=" + this.f1244b + ", c=" + this.f1245c + ", d=" + this.f1246d + ", e=" + this.f1247e + ", f=" + this.f1248f + ')';
    }

    public /* synthetic */ TransferParameters(double d10, double d11, double d12, double d13, double d14, double d15, double d16, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(d10, d11, d12, d13, d14, (i10 & 32) != 0 ? 0.0d : d15, (i10 & 64) != 0 ? 0.0d : d16);
    }
}
