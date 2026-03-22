package jk;

import android.text.BidiFormatter;
import android.text.Html;
import android.text.Spanned;
import android.text.TextDirectionHeuristics;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class v {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static String f60413a = "StringExt";

    @NotNull
    public static final String a(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (fk.v.f51778a.b()) {
            String unicodeWrap = BidiFormatter.getInstance(new Locale("ar")).unicodeWrap(str, TextDirectionHeuristics.ANYRTL_LTR);
            Intrinsics.checkNotNull(unicodeWrap);
            return unicodeWrap;
        }
        return str;
    }

    @NotNull
    public static final String b(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            Intrinsics.checkNotNull(encode);
            return encode;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            String str2 = f60413a;
            logger.e(str2, "URLEncoder exception -> " + e10.getMessage() + ' ');
            return "";
        }
    }

    @NotNull
    public static final <T> Object c(@Nullable String str) {
        Result.a aVar = Result.f60901b;
        return Result.d(kotlin.f.a(new Throwable(str)));
    }

    @NotNull
    public static final String d(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!StringsKt.Z(str, "fb", true) && !StringsKt.Z(str, "facebook", true)) {
            if (!StringsKt.Z(str, "gg", true) && !StringsKt.Z(str, "google", true)) {
                if (StringsKt.Z(str, "channel-tt", true)) {
                    return "TT";
                }
                return "";
            }
            return "GG";
        }
        return "FB";
    }

    public static final long e(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            String substring = str.substring(StringsKt.q0(str, "auth_key=", 0, false, 6, null) + 9, StringsKt.q0(str, "-0-0", 0, false, 6, null));
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return Long.parseLong(substring);
        } catch (Exception unused) {
            return (DeviceUtil.f48146a.K() + 3600000) / 1000;
        }
    }

    public static final boolean f(@Nullable String str) {
        if (str == null) {
            return false;
        }
        if (StringsKt.b0(str, "?", false, 2, null)) {
            return StringsKt.E(StringsKt.p1(str, "?", null, 2, null), ".gif", true);
        }
        return StringsKt.E(str, ".gif", true);
    }

    public static final boolean g(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!StringsKt.V(str, "http://", false, 2, null) && !StringsKt.V(str, "https://", false, 2, null)) {
            return false;
        }
        return true;
    }

    public static final boolean h(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() != 0 && !Intrinsics.areEqual(str, "0000-0000") && !Intrinsics.areEqual(str, "00000000-0000-0000-0000-000000000000")) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final String i(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return new Regex("\\s").replace(str, "");
    }

    @NotNull
    public static final String j(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            if (StringsKt.b0(str, "&x-oss", false, 2, null)) {
                str = StringsKt.P0(str, StringsKt.q0(str, "auth_key=", 0, false, 6, null), StringsKt.q0(str, "&x-oss", 0, false, 6, null) + 1).toString();
            } else {
                str = StringsKt.P0(str, StringsKt.q0(str, "auth_key=", 0, false, 6, null), StringsKt.k0(str) + 1).toString();
            }
        } catch (Exception unused) {
        }
        return str;
    }

    @NotNull
    public static final String k(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return StringsKt.P0(str, StringsKt.q0(str, "auth_key=", 0, false, 6, null), StringsKt.k0(str) + 1).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    @NotNull
    public static final String l(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return w(j(str));
        } catch (Exception unused) {
            return str;
        }
    }

    @NotNull
    public static final String m(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return w(k(str));
        } catch (Exception unused) {
            return str;
        }
    }

    @NotNull
    public static final String n(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.P(StringsKt.P(str, "https://", "", false, 4, null), "http://", "", false, 4, null);
    }

    @Nullable
    public static final String o(@Nullable String str) {
        if (str != null && str.length() != 0) {
            return StringsKt.P(str, "{gaid}", ud.a.f68411a.m(), false, 4, null);
        }
        return str;
    }

    @NotNull
    public static final String p(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return new Regex("[^\\x20-\\x7E]").replace(str, "");
    }

    @Nullable
    public static final Pair<String, String> q(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (Character.isDigit(str.charAt(i10))) {
                String substring = str.substring(0, i10);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                String substring2 = str.substring(i10);
                Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                return new Pair<>(substring, substring2);
            }
        }
        return null;
    }

    @NotNull
    public static final List<String> r(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.split$default(StringsKt.S0(str, "[", "]"), new String[]{","}, false, 0, 6, null);
    }

    @NotNull
    public static final String s(@Nullable List<Long> list) {
        List<Long> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            return CollectionsKt.A0(list, ",", null, null, 0, null, null, 62, null);
        }
        return "";
    }

    @NotNull
    public static final String t(@NotNull String str, @NotNull String color) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(color, "color");
        Regex regex = new Regex("<em>(.*?)</em>");
        return regex.replace(str, "<font color=\"" + color + "\">$1</font>");
    }

    @NotNull
    public static final Spanned u(@NotNull String str, @NotNull String color) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(color, "color");
        Spanned fromHtml = Html.fromHtml(t(str, color), 63);
        Intrinsics.checkNotNullExpressionValue(fromHtml, "fromHtml(...)");
        return fromHtml;
    }

    public static /* synthetic */ Spanned v(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "#F6610F";
        }
        return u(str, str2);
    }

    @NotNull
    public static final String w(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            String substring = str.substring(StringsKt.q0(str, DomExceptionUtils.SEPARATOR, StringsKt.q0(str, "://", 0, false, 6, null) + 3, false, 4, null));
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        } catch (Exception unused) {
            return str;
        }
    }
}
