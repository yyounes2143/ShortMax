package kotlin.random;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: XorWowRandom.kt */
@Metadata
@SourceDebugExtension({"SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"})
/* loaded from: classes8.dex */
public final class XorWowRandom extends Random implements Serializable {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final a f61068i = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private int f61069c;

    /* renamed from: d  reason: collision with root package name */
    private int f61070d;

    /* renamed from: e  reason: collision with root package name */
    private int f61071e;

    /* renamed from: f  reason: collision with root package name */
    private int f61072f;

    /* renamed from: g  reason: collision with root package name */
    private int f61073g;

    /* renamed from: h  reason: collision with root package name */
    private int f61074h;

    /* compiled from: XorWowRandom.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public XorWowRandom(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f61069c = i10;
        this.f61070d = i11;
        this.f61071e = i12;
        this.f61072f = i13;
        this.f61073g = i14;
        this.f61074h = i15;
        if ((i10 | i11 | i12 | i13 | i14) == 0) {
            throw new IllegalArgumentException("Initial state must have at least one non-zero element.");
        }
        for (int i16 = 0; i16 < 64; i16++) {
            f();
        }
    }

    @Override // kotlin.random.Random
    public int d(int i10) {
        return d.g(f(), i10);
    }

    @Override // kotlin.random.Random
    public int f() {
        int i10 = this.f61069c;
        int i11 = i10 ^ (i10 >>> 2);
        this.f61069c = this.f61070d;
        this.f61070d = this.f61071e;
        this.f61071e = this.f61072f;
        int i12 = this.f61073g;
        this.f61072f = i12;
        int i13 = ((i11 ^ (i11 << 1)) ^ i12) ^ (i12 << 4);
        this.f61073g = i13;
        int i14 = this.f61074h + 362437;
        this.f61074h = i14;
        return i13 + i14;
    }

    public XorWowRandom(int i10, int i11) {
        this(i10, i11, 0, 0, ~i10, (i10 << 10) ^ (i11 >>> 4));
    }
}
