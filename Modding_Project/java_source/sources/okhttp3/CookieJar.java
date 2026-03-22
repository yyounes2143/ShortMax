package okhttp3;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CookieJar.kt */
@Metadata
/* loaded from: classes8.dex */
public interface CookieJar {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f63423a = Companion.f63425a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final CookieJar f63424b = new Companion.NoCookies();

    /* compiled from: CookieJar.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ Companion f63425a = new Companion();

        /* compiled from: CookieJar.kt */
        @Metadata
        /* loaded from: classes8.dex */
        private static final class NoCookies implements CookieJar {
            @Override // okhttp3.CookieJar
            @NotNull
            public List<Cookie> a(@NotNull HttpUrl url) {
                Intrinsics.checkNotNullParameter(url, "url");
                return CollectionsKt.n();
            }

            @Override // okhttp3.CookieJar
            public void b(@NotNull HttpUrl url, @NotNull List<Cookie> cookies) {
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(cookies, "cookies");
            }
        }

        private Companion() {
        }
    }

    @NotNull
    List<Cookie> a(@NotNull HttpUrl httpUrl);

    void b(@NotNull HttpUrl httpUrl, @NotNull List<Cookie> list);
}
