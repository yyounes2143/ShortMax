package kotlin.text;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Regex.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n+ 2 Regex.kt\nkotlin/text/RegexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,397:1\n22#2,3:398\n1#3:401\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n*L\n103#1:398,3\n*E\n"})
/* loaded from: classes8.dex */
public final class Regex implements Serializable {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f61167b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f61168a;

    /* compiled from: Regex.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class Serialized implements Serializable {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f61169c = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f61170a;

        /* renamed from: b  reason: collision with root package name */
        private final int f61171b;

        /* compiled from: Regex.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public Serialized(@NotNull String pattern, int i10) {
            Intrinsics.checkNotNullParameter(pattern, "pattern");
            this.f61170a = pattern;
            this.f61171b = i10;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.f61170a, this.f61171b);
            Intrinsics.checkNotNullExpressionValue(compile, "compile(...)");
            return new Regex(compile);
        }
    }

    /* compiled from: Regex.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public Regex(@NotNull Pattern nativePattern) {
        Intrinsics.checkNotNullParameter(nativePattern, "nativePattern");
        this.f61168a = nativePattern;
    }

    public static /* synthetic */ MatchResult f(Regex regex, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return regex.e(charSequence, i10);
    }

    public static /* synthetic */ Sequence h(Regex regex, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return regex.g(charSequence, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MatchResult i(Regex regex, CharSequence charSequence, int i10) {
        return regex.e(charSequence, i10);
    }

    private final Object writeReplace() {
        String pattern = this.f61168a.pattern();
        Intrinsics.checkNotNullExpressionValue(pattern, "pattern(...)");
        return new Serialized(pattern, this.f61168a.flags());
    }

    public final boolean d(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return this.f61168a.matcher(input).find();
    }

    @Nullable
    public final MatchResult e(@NotNull CharSequence input, int i10) {
        Intrinsics.checkNotNullParameter(input, "input");
        Matcher matcher = this.f61168a.matcher(input);
        Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
        return k.a(matcher, i10, input);
    }

    @NotNull
    public final Sequence<MatchResult> g(@NotNull final CharSequence input, final int i10) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (i10 >= 0 && i10 <= input.length()) {
            return kotlin.sequences.j.j(new Function0() { // from class: kotlin.text.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    MatchResult i11;
                    i11 = Regex.i(Regex.this, input, i10);
                    return i11;
                }
            }, Regex$findAll$2.f61172a);
        }
        throw new IndexOutOfBoundsException("Start index out of bounds: " + i10 + ", input length: " + input.length());
    }

    @Nullable
    public final MatchResult j(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        Matcher matcher = this.f61168a.matcher(input);
        Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
        return k.b(matcher, input);
    }

    public final boolean k(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return this.f61168a.matcher(input).matches();
    }

    @NotNull
    public final String n(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        String replaceFirst = this.f61168a.matcher(input).replaceFirst(replacement);
        Intrinsics.checkNotNullExpressionValue(replaceFirst, "replaceFirst(...)");
        return replaceFirst;
    }

    @NotNull
    public final List<String> q(@NotNull CharSequence input, int i10) {
        Intrinsics.checkNotNullParameter(input, "input");
        StringsKt__StringsKt.U0(i10);
        Matcher matcher = this.f61168a.matcher(input);
        if (i10 != 1 && matcher.find()) {
            int i11 = 10;
            if (i10 > 0) {
                i11 = kotlin.ranges.e.j(i10, 10);
            }
            ArrayList arrayList = new ArrayList(i11);
            int i12 = i10 - 1;
            int i13 = 0;
            do {
                arrayList.add(input.subSequence(i13, matcher.start()).toString());
                i13 = matcher.end();
                if (i12 >= 0 && arrayList.size() == i12) {
                    break;
                }
            } while (matcher.find());
            arrayList.add(input.subSequence(i13, input.length()).toString());
            return arrayList;
        }
        return CollectionsKt.e(input.toString());
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        String replaceAll = this.f61168a.matcher(input).replaceAll(replacement);
        Intrinsics.checkNotNullExpressionValue(replaceAll, "replaceAll(...)");
        return replaceAll;
    }

    @NotNull
    public String toString() {
        String pattern = this.f61168a.toString();
        Intrinsics.checkNotNullExpressionValue(pattern, "toString(...)");
        return pattern;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(@org.jetbrains.annotations.NotNull java.lang.String r2) {
        /*
            r1 = this;
            java.lang.String r0 = "pattern"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)
            java.lang.String r0 = "compile(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String):void");
    }
}
