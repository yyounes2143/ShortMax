package okhttp3;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ts.c;
/* compiled from: MediaType.kt */
@Metadata
/* loaded from: classes8.dex */
public final class MediaType {
    @NotNull

    /* renamed from: e */
    public static final Companion f63480e = new Companion(null);

    /* renamed from: f */
    private static final Pattern f63481f = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: g */
    private static final Pattern f63482g = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
    @NotNull

    /* renamed from: a */
    private final String f63483a;
    @NotNull

    /* renamed from: b */
    private final String f63484b;
    @NotNull

    /* renamed from: c */
    private final String f63485c;
    @NotNull

    /* renamed from: d */
    private final String[] f63486d;

    /* compiled from: MediaType.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMediaType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaType.kt\nokhttp3/MediaType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,181:1\n1#2:182\n37#3,2:183\n*S KotlinDebug\n*F\n+ 1 MediaType.kt\nokhttp3/MediaType$Companion\n*L\n148#1:183,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MediaType a(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Matcher matcher = MediaType.f63481f.matcher(str);
            if (matcher.lookingAt()) {
                String group = matcher.group(1);
                Intrinsics.checkNotNullExpressionValue(group, "typeSubtype.group(1)");
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = group.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                String group2 = matcher.group(2);
                Intrinsics.checkNotNullExpressionValue(group2, "typeSubtype.group(2)");
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase2 = group2.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                ArrayList arrayList = new ArrayList();
                Matcher matcher2 = MediaType.f63482g.matcher(str);
                int end = matcher.end();
                while (end < str.length()) {
                    matcher2.region(end, str.length());
                    if (matcher2.lookingAt()) {
                        String group3 = matcher2.group(1);
                        if (group3 == null) {
                            end = matcher2.end();
                        } else {
                            String group4 = matcher2.group(2);
                            if (group4 == null) {
                                group4 = matcher2.group(3);
                            } else if (StringsKt.V(group4, "'", false, 2, null) && StringsKt.F(group4, "'", false, 2, null) && group4.length() > 2) {
                                group4 = group4.substring(1, group4.length() - 1);
                                Intrinsics.checkNotNullExpressionValue(group4, "this as java.lang.String…ing(startIndex, endIndex)");
                            }
                            arrayList.add(group3);
                            arrayList.add(group4);
                            end = matcher2.end();
                        }
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Parameter is not formatted correctly: \"");
                        String substring = str.substring(end);
                        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                        sb2.append(substring);
                        sb2.append("\" for: \"");
                        sb2.append(str);
                        sb2.append('\"');
                        throw new IllegalArgumentException(sb2.toString().toString());
                    }
                }
                return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]), null);
            }
            throw new IllegalArgumentException(("No subtype found for: \"" + str + '\"').toString());
        }

        @Nullable
        public final MediaType b(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            try {
                return a(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        private Companion() {
        }
    }

    public /* synthetic */ MediaType(String str, String str2, String str3, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, strArr);
    }

    public static /* synthetic */ Charset d(MediaType mediaType, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = null;
        }
        return mediaType.c(charset);
    }

    @NotNull
    public static final MediaType e(@NotNull String str) {
        return f63480e.a(str);
    }

    @Nullable
    public static final MediaType g(@NotNull String str) {
        return f63480e.b(str);
    }

    @Nullable
    public final Charset c(@Nullable Charset charset) {
        String f10 = f("charset");
        if (f10 == null) {
            return charset;
        }
        try {
            return Charset.forName(f10);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).f63483a, this.f63483a)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String f(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        int i10 = 0;
        int b10 = c.b(0, this.f63486d.length - 1, 2);
        if (b10 >= 0) {
            while (!StringsKt.G(this.f63486d[i10], name, true)) {
                if (i10 != b10) {
                    i10 += 2;
                } else {
                    return null;
                }
            }
            return this.f63486d[i10 + 1];
        }
        return null;
    }

    @NotNull
    public final String h() {
        return this.f63484b;
    }

    public int hashCode() {
        return this.f63483a.hashCode();
    }

    @NotNull
    public String toString() {
        return this.f63483a;
    }

    private MediaType(String str, String str2, String str3, String[] strArr) {
        this.f63483a = str;
        this.f63484b = str2;
        this.f63485c = str3;
        this.f63486d = strArr;
    }
}
