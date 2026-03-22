package b2;

import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: MTensor.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final C0075a f2164d = new C0075a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private int[] f2165a;

    /* renamed from: b  reason: collision with root package name */
    private int f2166b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private float[] f2167c;

    /* compiled from: MTensor.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMTensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MTensor.kt\ncom/facebook/appevents/ml/MTensor$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,40:1\n19339#2,7:41\n*S KotlinDebug\n*F\n+ 1 MTensor.kt\ncom/facebook/appevents/ml/MTensor$Companion\n*L\n37#1:41,7\n*E\n"})
    /* renamed from: b2.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0075a {
        public /* synthetic */ C0075a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int b(int[] iArr) {
            if (iArr.length != 0) {
                int i10 = iArr[0];
                m0 it = new IntRange(1, n.p0(iArr)).iterator();
                while (it.hasNext()) {
                    i10 *= iArr[it.nextInt()];
                }
                return i10;
            }
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }

        private C0075a() {
        }
    }

    public a(@NotNull int[] shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.f2165a = shape;
        int b10 = f2164d.b(shape);
        this.f2166b = b10;
        this.f2167c = new float[b10];
    }

    @NotNull
    public final float[] a() {
        return this.f2167c;
    }

    public final int b(int i10) {
        return this.f2165a[i10];
    }

    public final int c() {
        return this.f2165a.length;
    }

    public final void d(@NotNull int[] shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.f2165a = shape;
        int b10 = f2164d.b(shape);
        float[] fArr = new float[b10];
        System.arraycopy(this.f2167c, 0, fArr, 0, Math.min(this.f2166b, b10));
        this.f2167c = fArr;
        this.f2166b = b10;
    }
}
