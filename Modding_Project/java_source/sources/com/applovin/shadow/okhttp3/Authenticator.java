package com.applovin.shadow.okhttp3;

import com.applovin.shadow.okhttp3.internal.authenticator.JavaNetAuthenticator;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Authenticator.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Authenticator {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    @NotNull
    public static final Authenticator NONE = new Companion.AuthenticatorNone();
    @NotNull
    public static final Authenticator JAVA_NET_AUTHENTICATOR = new JavaNetAuthenticator(null, 1, null);

    /* compiled from: Authenticator.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* compiled from: Authenticator.kt */
        @Metadata
        /* loaded from: classes2.dex */
        private static final class AuthenticatorNone implements Authenticator {
            @Override // com.applovin.shadow.okhttp3.Authenticator
            @Nullable
            public Request authenticate(@Nullable Route route, @NotNull Response response) {
                Intrinsics.checkNotNullParameter(response, "response");
                return null;
            }
        }

        private Companion() {
        }
    }

    @Nullable
    Request authenticate(@Nullable Route route, @NotNull Response response) throws IOException;
}
