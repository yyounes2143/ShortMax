package kotlin.text;

import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
/* compiled from: Regex.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,397:1\n1797#2,3:398\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt\n*L\n19#1:398,3\n*E\n"})
/* loaded from: classes8.dex */
public final class k {
    public static final MatchResult e(Matcher matcher, int i10, CharSequence charSequence) {
        if (!matcher.find(i10)) {
            return null;
        }
        return new h(matcher, charSequence);
    }

    public static final MatchResult f(Matcher matcher, CharSequence charSequence) {
        if (!matcher.matches()) {
            return null;
        }
        return new h(matcher, charSequence);
    }

    public static final IntRange g(java.util.regex.MatchResult matchResult) {
        return kotlin.ranges.e.v(matchResult.start(), matchResult.end());
    }

    public static final IntRange h(java.util.regex.MatchResult matchResult, int i10) {
        return kotlin.ranges.e.v(matchResult.start(i10), matchResult.end(i10));
    }
}
