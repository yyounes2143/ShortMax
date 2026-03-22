package bs;

import io.ktor.util.date.Month;
import io.ktor.util.date.WeekDay;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Date.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a implements Comparable<a> {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final C0082a f2810j = new C0082a(null);
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final a f2811k = io.ktor.util.date.a.a(0L);

    /* renamed from: a  reason: collision with root package name */
    private final int f2812a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2813b;

    /* renamed from: c  reason: collision with root package name */
    private final int f2814c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final WeekDay f2815d;

    /* renamed from: e  reason: collision with root package name */
    private final int f2816e;

    /* renamed from: f  reason: collision with root package name */
    private final int f2817f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Month f2818g;

    /* renamed from: h  reason: collision with root package name */
    private final int f2819h;

    /* renamed from: i  reason: collision with root package name */
    private final long f2820i;

    /* compiled from: Date.kt */
    @Metadata
    /* renamed from: bs.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0082a {
        public /* synthetic */ C0082a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0082a() {
        }
    }

    public a(int i10, int i11, int i12, @NotNull WeekDay dayOfWeek, int i13, int i14, @NotNull Month month, int i15, long j10) {
        Intrinsics.checkNotNullParameter(dayOfWeek, "dayOfWeek");
        Intrinsics.checkNotNullParameter(month, "month");
        this.f2812a = i10;
        this.f2813b = i11;
        this.f2814c = i12;
        this.f2815d = dayOfWeek;
        this.f2816e = i13;
        this.f2817f = i14;
        this.f2818g = month;
        this.f2819h = i15;
        this.f2820i = j10;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(@NotNull a other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.compare(this.f2820i, other.f2820i);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f2812a == aVar.f2812a && this.f2813b == aVar.f2813b && this.f2814c == aVar.f2814c && this.f2815d == aVar.f2815d && this.f2816e == aVar.f2816e && this.f2817f == aVar.f2817f && this.f2818g == aVar.f2818g && this.f2819h == aVar.f2819h && this.f2820i == aVar.f2820i) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((Integer.hashCode(this.f2812a) * 31) + Integer.hashCode(this.f2813b)) * 31) + Integer.hashCode(this.f2814c)) * 31) + this.f2815d.hashCode()) * 31) + Integer.hashCode(this.f2816e)) * 31) + Integer.hashCode(this.f2817f)) * 31) + this.f2818g.hashCode()) * 31) + Integer.hashCode(this.f2819h)) * 31) + Long.hashCode(this.f2820i);
    }

    @NotNull
    public String toString() {
        return "GMTDate(seconds=" + this.f2812a + ", minutes=" + this.f2813b + ", hours=" + this.f2814c + ", dayOfWeek=" + this.f2815d + ", dayOfMonth=" + this.f2816e + ", dayOfYear=" + this.f2817f + ", month=" + this.f2818g + ", year=" + this.f2819h + ", timestamp=" + this.f2820i + ')';
    }
}
