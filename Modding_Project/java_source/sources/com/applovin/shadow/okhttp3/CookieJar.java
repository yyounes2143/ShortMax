package com.applovin.shadow.okhttp3;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CookieJar.kt */
@Metadata
/* loaded from: classes2.dex */
public interface CookieJar {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    @NotNull
    public static final CookieJar NO_COOKIES = new Companion.NoCookies();

    /* compiled from: CookieJar.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* compiled from: CookieJar.kt */
        @Metadata
        /* loaded from: classes2.dex */
        private static final class NoCookies implements CookieJar {
            @Override // com.applovin.shadow.okhttp3.CookieJar
            @NotNull
            public List<Cookie> loadForRequest(@NotNull HttpUrl url) {
                Intrinsics.checkNotNullParameter(url, "url");
                return CollectionsKt.n();
            }

            @Override // com.applovin.shadow.okhttp3.CookieJar
            public void saveFromResponse(@NotNull HttpUrl url, @NotNull List<Cookie> cookies) {
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(cookies, "cookies");
            }
        }

        private Companion() {
        }
    }

    @NotNull
    List<Cookie> loadForRequest(@NotNull HttpUrl httpUrl);

    void saveFromResponse(@NotNull HttpUrl httpUrl, @NotNull List<Cookie> list);
}
