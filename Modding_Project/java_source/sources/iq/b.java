package iq;

import io.bidmachine.rendering.model.BrokenCreativeAlgorithmType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import rq.k;
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f60069a = new b();

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f60070a;

        static {
            int[] iArr = new int[BrokenCreativeAlgorithmType.values().length];
            try {
                iArr[BrokenCreativeAlgorithmType.ColorHistogram.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BrokenCreativeAlgorithmType.BrightnessVariance.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BrokenCreativeAlgorithmType.EdgeDetection.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f60070a = iArr;
        }
    }

    private b() {
    }

    @NotNull
    public final iq.a a(@NotNull k algorithmParams) {
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
        int i10 = a.f60070a[algorithmParams.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return new e(algorithmParams);
                }
                throw new NoWhenBranchMatchedException();
            }
            return new c(algorithmParams);
        }
        return new d(algorithmParams);
    }
}
