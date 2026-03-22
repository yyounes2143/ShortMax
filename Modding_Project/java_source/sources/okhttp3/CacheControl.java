package okhttp3;

import androidx.collection.SieveCacheKt;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CacheControl.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CacheControl {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final Companion f63283n = new Companion(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final CacheControl f63284o = new Builder().d().a();
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final CacheControl f63285p = new Builder().f().c(Integer.MAX_VALUE, TimeUnit.SECONDS).a();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f63286a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f63287b;

    /* renamed from: c  reason: collision with root package name */
    private final int f63288c;

    /* renamed from: d  reason: collision with root package name */
    private final int f63289d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f63290e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f63291f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f63292g;

    /* renamed from: h  reason: collision with root package name */
    private final int f63293h;

    /* renamed from: i  reason: collision with root package name */
    private final int f63294i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f63295j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f63296k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f63297l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private String f63298m;

    /* compiled from: CacheControl.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCacheControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheControl.kt\nokhttp3/CacheControl$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n1#2:417\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private boolean f63299a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f63300b;

        /* renamed from: c  reason: collision with root package name */
        private int f63301c = -1;

        /* renamed from: d  reason: collision with root package name */
        private int f63302d = -1;

        /* renamed from: e  reason: collision with root package name */
        private int f63303e = -1;

        /* renamed from: f  reason: collision with root package name */
        private boolean f63304f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f63305g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f63306h;

        private final int b(long j10) {
            if (j10 > SieveCacheKt.NodeLinkMask) {
                return Integer.MAX_VALUE;
            }
            return (int) j10;
        }

        @NotNull
        public final CacheControl a() {
            return new CacheControl(this.f63299a, this.f63300b, this.f63301c, -1, false, false, false, this.f63302d, this.f63303e, this.f63304f, this.f63305g, this.f63306h, null, null);
        }

        @NotNull
        public final Builder c(int i10, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            if (i10 >= 0) {
                this.f63302d = b(timeUnit.toSeconds(i10));
                return this;
            }
            throw new IllegalArgumentException(("maxStale < 0: " + i10).toString());
        }

        @NotNull
        public final Builder d() {
            this.f63299a = true;
            return this;
        }

        @NotNull
        public final Builder e() {
            this.f63300b = true;
            return this;
        }

        @NotNull
        public final Builder f() {
            this.f63304f = true;
            return this;
        }
    }

    /* compiled from: CacheControl.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int a(String str, String str2, int i10) {
            int length = str.length();
            while (i10 < length) {
                if (StringsKt.a0(str2, str.charAt(i10), false, 2, null)) {
                    return i10;
                }
                i10++;
            }
            return str.length();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d8  */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.CacheControl b(@org.jetbrains.annotations.NotNull okhttp3.Headers r31) {
            /*
                Method dump skipped, instructions count: 403
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CacheControl.Companion.b(okhttp3.Headers):okhttp3.CacheControl");
        }

        private Companion() {
        }
    }

    public /* synthetic */ CacheControl(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11, i10, i11, z12, z13, z14, i12, i13, z15, z16, z17, str);
    }

    public final boolean a() {
        return this.f63290e;
    }

    public final boolean b() {
        return this.f63291f;
    }

    public final int c() {
        return this.f63288c;
    }

    public final int d() {
        return this.f63293h;
    }

    public final int e() {
        return this.f63294i;
    }

    public final boolean f() {
        return this.f63292g;
    }

    public final boolean g() {
        return this.f63286a;
    }

    public final boolean h() {
        return this.f63287b;
    }

    public final boolean i() {
        return this.f63295j;
    }

    @NotNull
    public String toString() {
        String str = this.f63298m;
        if (str == null) {
            StringBuilder sb2 = new StringBuilder();
            if (this.f63286a) {
                sb2.append("no-cache, ");
            }
            if (this.f63287b) {
                sb2.append("no-store, ");
            }
            if (this.f63288c != -1) {
                sb2.append("max-age=");
                sb2.append(this.f63288c);
                sb2.append(", ");
            }
            if (this.f63289d != -1) {
                sb2.append("s-maxage=");
                sb2.append(this.f63289d);
                sb2.append(", ");
            }
            if (this.f63290e) {
                sb2.append("private, ");
            }
            if (this.f63291f) {
                sb2.append("public, ");
            }
            if (this.f63292g) {
                sb2.append("must-revalidate, ");
            }
            if (this.f63293h != -1) {
                sb2.append("max-stale=");
                sb2.append(this.f63293h);
                sb2.append(", ");
            }
            if (this.f63294i != -1) {
                sb2.append("min-fresh=");
                sb2.append(this.f63294i);
                sb2.append(", ");
            }
            if (this.f63295j) {
                sb2.append("only-if-cached, ");
            }
            if (this.f63296k) {
                sb2.append("no-transform, ");
            }
            if (this.f63297l) {
                sb2.append("immutable, ");
            }
            if (sb2.length() == 0) {
                return "";
            }
            sb2.delete(sb2.length() - 2, sb2.length());
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
            this.f63298m = sb3;
            return sb3;
        }
        return str;
    }

    private CacheControl(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str) {
        this.f63286a = z10;
        this.f63287b = z11;
        this.f63288c = i10;
        this.f63289d = i11;
        this.f63290e = z12;
        this.f63291f = z13;
        this.f63292g = z14;
        this.f63293h = i12;
        this.f63294i = i13;
        this.f63295j = z15;
        this.f63296k = z16;
        this.f63297l = z17;
        this.f63298m = str;
    }
}
