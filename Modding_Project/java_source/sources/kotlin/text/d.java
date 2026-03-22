package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HexFormat.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final b f61191d = new b(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final d f61192e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final d f61193f;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f61194a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final a f61195b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final c f61196c;

    /* compiled from: HexFormat.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        public static final C0853a f61197j = new C0853a(null);
        @NotNull

        /* renamed from: k  reason: collision with root package name */
        private static final a f61198k = new a(Integer.MAX_VALUE, Integer.MAX_VALUE, "  ", "", "", "");

        /* renamed from: a  reason: collision with root package name */
        private final int f61199a;

        /* renamed from: b  reason: collision with root package name */
        private final int f61200b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f61201c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final String f61202d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final String f61203e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final String f61204f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f61205g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f61206h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f61207i;

        /* compiled from: HexFormat.kt */
        @Metadata
        /* renamed from: kotlin.text.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class C0853a {
            public /* synthetic */ C0853a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final a a() {
                return a.f61198k;
            }

            private C0853a() {
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
            if (r4 != false) goto L23;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(int r4, int r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull java.lang.String r9) {
            /*
                r3 = this;
                java.lang.String r0 = "groupSeparator"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                java.lang.String r0 = "byteSeparator"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                java.lang.String r0 = "bytePrefix"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                java.lang.String r0 = "byteSuffix"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
                r3.<init>()
                r3.f61199a = r4
                r3.f61200b = r5
                r3.f61201c = r6
                r3.f61202d = r7
                r3.f61203e = r8
                r3.f61204f = r9
                r0 = 0
                r1 = 1
                r2 = 2147483647(0x7fffffff, float:NaN)
                if (r4 != r2) goto L2e
                if (r5 != r2) goto L2e
                r4 = r1
                goto L2f
            L2e:
                r4 = r0
            L2f:
                r3.f61205g = r4
                int r4 = r8.length()
                if (r4 != 0) goto L45
                int r4 = r9.length()
                if (r4 != 0) goto L45
                int r4 = r7.length()
                if (r4 > r1) goto L45
                r4 = r1
                goto L46
            L45:
                r4 = r0
            L46:
                r3.f61206h = r4
                boolean r4 = kotlin.text.e.a(r6)
                if (r4 != 0) goto L60
                boolean r4 = kotlin.text.e.a(r7)
                if (r4 != 0) goto L60
                boolean r4 = kotlin.text.e.a(r8)
                if (r4 != 0) goto L60
                boolean r4 = kotlin.text.e.a(r9)
                if (r4 == 0) goto L61
            L60:
                r0 = r1
            L61:
                r3.f61207i = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.d.a.<init>(int, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
        }

        @NotNull
        public final StringBuilder b(@NotNull StringBuilder sb2, @NotNull String indent) {
            Intrinsics.checkNotNullParameter(sb2, "sb");
            Intrinsics.checkNotNullParameter(indent, "indent");
            sb2.append(indent);
            sb2.append("bytesPerLine = ");
            sb2.append(this.f61199a);
            sb2.append(",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("bytesPerGroup = ");
            sb2.append(this.f61200b);
            sb2.append(",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("groupSeparator = \"");
            sb2.append(this.f61201c);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("byteSeparator = \"");
            sb2.append(this.f61202d);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("bytePrefix = \"");
            sb2.append(this.f61203e);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("byteSuffix = \"");
            sb2.append(this.f61204f);
            sb2.append("\"");
            return sb2;
        }

        @NotNull
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("BytesHexFormat(");
            sb2.append('\n');
            b(sb2, "    ").append('\n');
            sb2.append(")");
            return sb2.toString();
        }
    }

    /* compiled from: HexFormat.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final d a() {
            return d.f61192e;
        }

        private b() {
        }
    }

    /* compiled from: HexFormat.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c {
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        public static final a f61208h = new a(null);
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private static final c f61209i = new c("", "", false, 1);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f61210a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f61211b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f61212c;

        /* renamed from: d  reason: collision with root package name */
        private final int f61213d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f61214e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f61215f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f61216g;

        /* compiled from: HexFormat.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final c a() {
                return c.f61209i;
            }

            private a() {
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
            if (r3 != false) goto L17;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public c(@org.jetbrains.annotations.NotNull java.lang.String r3, @org.jetbrains.annotations.NotNull java.lang.String r4, boolean r5, int r6) {
            /*
                r2 = this;
                java.lang.String r0 = "prefix"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                java.lang.String r0 = "suffix"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                r2.<init>()
                r2.f61210a = r3
                r2.f61211b = r4
                r2.f61212c = r5
                r2.f61213d = r6
                int r5 = r3.length()
                r0 = 0
                r1 = 1
                if (r5 != 0) goto L25
                int r5 = r4.length()
                if (r5 != 0) goto L25
                r5 = r1
                goto L26
            L25:
                r5 = r0
            L26:
                r2.f61214e = r5
                if (r5 == 0) goto L2e
                if (r6 != r1) goto L2e
                r5 = r1
                goto L2f
            L2e:
                r5 = r0
            L2f:
                r2.f61215f = r5
                boolean r3 = kotlin.text.e.a(r3)
                if (r3 != 0) goto L3d
                boolean r3 = kotlin.text.e.a(r4)
                if (r3 == 0) goto L3e
            L3d:
                r0 = r1
            L3e:
                r2.f61216g = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.d.c.<init>(java.lang.String, java.lang.String, boolean, int):void");
        }

        @NotNull
        public final StringBuilder b(@NotNull StringBuilder sb2, @NotNull String indent) {
            Intrinsics.checkNotNullParameter(sb2, "sb");
            Intrinsics.checkNotNullParameter(indent, "indent");
            sb2.append(indent);
            sb2.append("prefix = \"");
            sb2.append(this.f61210a);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("suffix = \"");
            sb2.append(this.f61211b);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("removeLeadingZeros = ");
            sb2.append(this.f61212c);
            sb2.append(',');
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("minLength = ");
            sb2.append(this.f61213d);
            return sb2;
        }

        public final boolean c() {
            return this.f61216g;
        }

        @NotNull
        public final String d() {
            return this.f61210a;
        }

        @NotNull
        public final String e() {
            return this.f61211b;
        }

        public final boolean f() {
            return this.f61214e;
        }

        @NotNull
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("NumberHexFormat(");
            sb2.append('\n');
            b(sb2, "    ").append('\n');
            sb2.append(")");
            return sb2.toString();
        }
    }

    static {
        a.C0853a c0853a = a.f61197j;
        a a10 = c0853a.a();
        c.a aVar = c.f61208h;
        f61192e = new d(false, a10, aVar.a());
        f61193f = new d(true, c0853a.a(), aVar.a());
    }

    public d(boolean z10, @NotNull a bytes, @NotNull c number) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(number, "number");
        this.f61194a = z10;
        this.f61195b = bytes;
        this.f61196c = number;
    }

    @NotNull
    public final c b() {
        return this.f61196c;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HexFormat(");
        sb2.append('\n');
        sb2.append("    upperCase = ");
        sb2.append(this.f61194a);
        sb2.append(",");
        sb2.append('\n');
        sb2.append("    bytes = BytesHexFormat(");
        sb2.append('\n');
        this.f61195b.b(sb2, "        ").append('\n');
        sb2.append("    ),");
        sb2.append('\n');
        sb2.append("    number = NumberHexFormat(");
        sb2.append('\n');
        this.f61196c.b(sb2, "        ").append('\n');
        sb2.append("    )");
        sb2.append('\n');
        sb2.append(")");
        return sb2.toString();
    }
}
