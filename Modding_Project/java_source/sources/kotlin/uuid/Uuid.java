package kotlin.uuid;

import java.io.Serializable;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.c;
import kotlin.uuid.Uuid;
import ms.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Uuid.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Uuid implements Serializable {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f61259c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Uuid f61260d = new Uuid(0, 0);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Comparator<Uuid> f61261e = new Comparator() { // from class: ft.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int d10;
            d10 = Uuid.d((Uuid) obj, (Uuid) obj2);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final long f61262a;

    /* renamed from: b  reason: collision with root package name */
    private final long f61263b;

    /* compiled from: Uuid.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/Uuid$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,452:1\n1#2:453\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Uuid a(long j10, long j11) {
            if (j10 == 0 && j11 == 0) {
                return b();
            }
            return new Uuid(j10, j11);
        }

        @NotNull
        public final Uuid b() {
            return Uuid.f61260d;
        }

        @NotNull
        public final Uuid c(@NotNull String uuidString) {
            Intrinsics.checkNotNullParameter(uuidString, "uuidString");
            if (uuidString.length() == 36) {
                long f10 = c.f(uuidString, 0, 8, null, 4, null);
                b.b(uuidString, 8);
                long f11 = c.f(uuidString, 9, 13, null, 4, null);
                b.b(uuidString, 13);
                long f12 = c.f(uuidString, 14, 18, null, 4, null);
                b.b(uuidString, 18);
                long f13 = c.f(uuidString, 19, 23, null, 4, null);
                b.b(uuidString, 23);
                return a((f10 << 32) | (f11 << 16) | f12, c.f(uuidString, 24, 36, null, 4, null) | (f13 << 48));
            }
            throw new IllegalArgumentException("Expected a 36-char string in the standard uuid format.");
        }

        private a() {
        }
    }

    public Uuid(long j10, long j11) {
        this.f61262a = j10;
        this.f61263b = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int d(Uuid a10, Uuid b10) {
        int compare;
        int compare2;
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        long j10 = a10.f61262a;
        if (j10 != b10.f61262a) {
            compare2 = Long.compare(p.b(j10) ^ Long.MIN_VALUE, p.b(b10.f61262a) ^ Long.MIN_VALUE);
            return compare2;
        }
        compare = Long.compare(p.b(a10.f61263b) ^ Long.MIN_VALUE, p.b(b10.f61263b) ^ Long.MIN_VALUE);
        return compare;
    }

    private final Object writeReplace() {
        return kotlin.uuid.a.a(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) obj;
        if (this.f61262a == uuid.f61262a && this.f61263b == uuid.f61263b) {
            return true;
        }
        return false;
    }

    public final long f() {
        return this.f61263b;
    }

    public final long g() {
        return this.f61262a;
    }

    public int hashCode() {
        long j10 = this.f61262a ^ this.f61263b;
        return ((int) j10) ^ ((int) (j10 >> 32));
    }

    @NotNull
    public String toString() {
        byte[] bArr = new byte[36];
        b.c(this.f61263b, bArr, 24, 6);
        bArr[23] = 45;
        b.c(this.f61263b >>> 48, bArr, 19, 2);
        bArr[18] = 45;
        b.c(this.f61262a, bArr, 14, 2);
        bArr[13] = 45;
        b.c(this.f61262a >>> 16, bArr, 9, 2);
        bArr[8] = 45;
        b.c(this.f61262a >>> 32, bArr, 0, 4);
        return StringsKt.C(bArr);
    }
}
