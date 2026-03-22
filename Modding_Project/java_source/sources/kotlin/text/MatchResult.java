package kotlin.text;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MatchResult.kt */
@Metadata
/* loaded from: classes8.dex */
public interface MatchResult {

    /* compiled from: MatchResult.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull
        public static b a(@NotNull MatchResult matchResult) {
            return new b(matchResult);
        }
    }

    /* compiled from: MatchResult.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final MatchResult f61166a;

        public b(@NotNull MatchResult match) {
            Intrinsics.checkNotNullParameter(match, "match");
            this.f61166a = match;
        }

        @NotNull
        public final MatchResult a() {
            return this.f61166a;
        }
    }

    @NotNull
    b a();

    @NotNull
    g b();

    @NotNull
    List<String> c();

    @NotNull
    IntRange d();

    @Nullable
    MatchResult next();
}
