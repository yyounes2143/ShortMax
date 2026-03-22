package s3;

import java.util.Arrays;
import java.util.regex.Pattern;
import k2.h;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BytesRange.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f66261c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final i<Pattern> f66262d = kotlin.c.b(new Function0() { // from class: s3.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Pattern e10;
            e10 = b.e();
            return e10;
        }
    });

    /* renamed from: a  reason: collision with root package name */
    public final int f66263a;

    /* renamed from: b  reason: collision with root package name */
    public final int f66264b;

    /* compiled from: BytesRange.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Pattern d() {
            Object value = b.f66262d.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            return (Pattern) value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String f(int i10) {
            if (i10 == Integer.MAX_VALUE) {
                return "";
            }
            return String.valueOf(i10);
        }

        @NotNull
        public final b b(int i10) {
            boolean z10;
            if (i10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            h.b(Boolean.valueOf(z10));
            return new b(i10, Integer.MAX_VALUE);
        }

        @Nullable
        public final b c(@Nullable String str) throws IllegalArgumentException {
            boolean z10;
            boolean z11;
            if (str == null) {
                return null;
            }
            try {
                String[] split = d().split(str);
                boolean z12 = false;
                if (split.length == 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                h.b(Boolean.valueOf(z10));
                h.b(Boolean.valueOf(Intrinsics.areEqual(split[0], "bytes")));
                String str2 = split[1];
                Intrinsics.checkNotNullExpressionValue(str2, "get(...)");
                int parseInt = Integer.parseInt(str2);
                String str3 = split[2];
                Intrinsics.checkNotNullExpressionValue(str3, "get(...)");
                int parseInt2 = Integer.parseInt(str3);
                String str4 = split[3];
                Intrinsics.checkNotNullExpressionValue(str4, "get(...)");
                int parseInt3 = Integer.parseInt(str4);
                if (parseInt2 > parseInt) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                h.b(Boolean.valueOf(z11));
                if (parseInt3 > parseInt2) {
                    z12 = true;
                }
                h.b(Boolean.valueOf(z12));
                if (parseInt2 < parseInt3 - 1) {
                    return new b(parseInt, parseInt2);
                }
                return new b(parseInt, Integer.MAX_VALUE);
            } catch (IllegalArgumentException e10) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(null, "Invalid Content-Range header value: \"%s\"", Arrays.copyOf(new Object[]{str}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                throw new IllegalArgumentException(format, e10);
            }
        }

        @NotNull
        public final b e(int i10) {
            boolean z10;
            if (i10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            h.b(Boolean.valueOf(z10));
            return new b(0, i10);
        }

        private a() {
        }
    }

    public b(int i10, int i11) {
        this.f66263a = i10;
        this.f66264b = i11;
    }

    @NotNull
    public static final b d(int i10) {
        return f66261c.b(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pattern e() {
        return Pattern.compile("[-/ ]");
    }

    @NotNull
    public static final b g(int i10) {
        return f66261c.e(i10);
    }

    public final boolean c(@Nullable b bVar) {
        if (bVar == null || this.f66263a > bVar.f66263a || bVar.f66264b > this.f66264b) {
            return false;
        }
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(b.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.imagepipeline.common.BytesRange");
        b bVar = (b) obj;
        if (this.f66263a == bVar.f66263a && this.f66264b == bVar.f66264b) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String f() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        a aVar = f66261c;
        String format = String.format(null, "bytes=%s-%s", Arrays.copyOf(new Object[]{aVar.f(this.f66263a), aVar.f(this.f66264b)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public int hashCode() {
        return (this.f66263a * 31) + this.f66264b;
    }

    @NotNull
    public String toString() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        a aVar = f66261c;
        String format = String.format(null, "%s-%s", Arrays.copyOf(new Object[]{aVar.f(this.f66263a), aVar.f(this.f66264b)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
