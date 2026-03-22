package vt;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: ElementMarker.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e0 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final a f69395e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final long[] f69396f = new long[0];
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f69397a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function2<SerialDescriptor, Integer, Boolean> f69398b;

    /* renamed from: c  reason: collision with root package name */
    private long f69399c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final long[] f69400d;

    /* compiled from: ElementMarker.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e0(@NotNull SerialDescriptor descriptor, @NotNull Function2<? super SerialDescriptor, ? super Integer, Boolean> readIfAbsent) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(readIfAbsent, "readIfAbsent");
        this.f69397a = descriptor;
        this.f69398b = readIfAbsent;
        int e10 = descriptor.e();
        if (e10 <= 64) {
            this.f69399c = e10 != 64 ? (-1) << e10 : 0L;
            this.f69400d = f69396f;
            return;
        }
        this.f69399c = 0L;
        this.f69400d = e(e10);
    }

    private final void b(int i10) {
        int i11 = (i10 >>> 6) - 1;
        long[] jArr = this.f69400d;
        jArr[i11] = jArr[i11] | (1 << (i10 & 63));
    }

    private final int c() {
        int length = this.f69400d.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            int i12 = i11 * 64;
            long j10 = this.f69400d[i10];
            while (j10 != -1) {
                int numberOfTrailingZeros = Long.numberOfTrailingZeros(~j10);
                j10 |= 1 << numberOfTrailingZeros;
                int i13 = numberOfTrailingZeros + i12;
                if (this.f69398b.invoke(this.f69397a, Integer.valueOf(i13)).booleanValue()) {
                    this.f69400d[i10] = j10;
                    return i13;
                }
            }
            this.f69400d[i10] = j10;
            i10 = i11;
        }
        return -1;
    }

    private final long[] e(int i10) {
        long[] jArr = new long[(i10 - 1) >>> 6];
        if ((i10 & 63) != 0) {
            jArr[kotlin.collections.n.q0(jArr)] = (-1) << i10;
        }
        return jArr;
    }

    public final void a(int i10) {
        if (i10 < 64) {
            this.f69399c |= 1 << i10;
        } else {
            b(i10);
        }
    }

    public final int d() {
        int numberOfTrailingZeros;
        int e10 = this.f69397a.e();
        do {
            long j10 = this.f69399c;
            if (j10 != -1) {
                numberOfTrailingZeros = Long.numberOfTrailingZeros(~j10);
                this.f69399c |= 1 << numberOfTrailingZeros;
            } else if (e10 > 64) {
                return c();
            } else {
                return -1;
            }
        } while (!this.f69398b.invoke(this.f69397a, Integer.valueOf(numberOfTrailingZeros)).booleanValue());
        return numberOfTrailingZeros;
    }
}
