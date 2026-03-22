package com.applovin.shadow.okhttp3;

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
/* compiled from: MediaType.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MediaType {
    @NotNull
    private static final String QUOTED = "\"([^\"]*)\"";
    @NotNull
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    @NotNull
    private final String mediaType;
    @NotNull
    private final String[] parameterNamesAndValues;
    @NotNull
    private final String subtype;
    @NotNull
    private final String type;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* compiled from: MediaType.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMediaType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaType.kt\nokhttp3/MediaType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,181:1\n1#2:182\n37#3,2:183\n*S KotlinDebug\n*F\n+ 1 MediaType.kt\nokhttp3/MediaType$Companion\n*L\n148#1:183,2\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @ms.c
        @NotNull
        /* renamed from: -deprecated_get  reason: not valid java name */
        public final MediaType m4544deprecated_get(@NotNull String mediaType) {
            Intrinsics.checkNotNullParameter(mediaType, "mediaType");
            return get(mediaType);
        }

        @ms.c
        @Nullable
        /* renamed from: -deprecated_parse  reason: not valid java name */
        public final MediaType m4545deprecated_parse(@NotNull String mediaType) {
            Intrinsics.checkNotNullParameter(mediaType, "mediaType");
            return parse(mediaType);
        }

        @NotNull
        public final MediaType get(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Matcher matcher = MediaType.TYPE_SUBTYPE.matcher(str);
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
                Matcher matcher2 = MediaType.PARAMETER.matcher(str);
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
        public final MediaType parse(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            try {
                return get(str);
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

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = null;
        }
        return mediaType.charset(charset);
    }

    @NotNull
    public static final MediaType get(@NotNull String str) {
        return Companion.get(str);
    }

    @Nullable
    public static final MediaType parse(@NotNull String str) {
        return Companion.parse(str);
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_subtype  reason: not valid java name */
    public final String m4542deprecated_subtype() {
        return this.subtype;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_type  reason: not valid java name */
    public final String m4543deprecated_type() {
        return this.type;
    }

    @Nullable
    public final Charset charset() {
        return charset$default(this, null, 1, null);
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).mediaType, this.mediaType)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    @Nullable
    public final String parameter(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        int i10 = 0;
        int b10 = ts.c.b(0, this.parameterNamesAndValues.length - 1, 2);
        if (b10 >= 0) {
            while (!StringsKt.G(this.parameterNamesAndValues[i10], name, true)) {
                if (i10 != b10) {
                    i10 += 2;
                } else {
                    return null;
                }
            }
            return this.parameterNamesAndValues[i10 + 1];
        }
        return null;
    }

    @NotNull
    public final String subtype() {
        return this.subtype;
    }

    @NotNull
    public String toString() {
        return this.mediaType;
    }

    @NotNull
    public final String type() {
        return this.type;
    }

    private MediaType(String str, String str2, String str3, String[] strArr) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.parameterNamesAndValues = strArr;
    }

    @Nullable
    public final Charset charset(@Nullable Charset charset) {
        String parameter = parameter("charset");
        if (parameter == null) {
            return charset;
        }
        try {
            return Charset.forName(parameter);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }
}
