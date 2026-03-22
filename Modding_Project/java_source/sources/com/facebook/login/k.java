package com.facebook.login;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginConfiguration.kt */
@Metadata
/* loaded from: classes3.dex */
public final class k {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f16593d = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f16594a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f16595b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f16596c;

    /* compiled from: LoginConfiguration.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ k(java.util.Collection r1, java.lang.String r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 2
            if (r3 == 0) goto L11
            java.util.UUID r2 = java.util.UUID.randomUUID()
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "randomUUID().toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
        L11:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.k.<init>(java.util.Collection, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @NotNull
    public final String a() {
        return this.f16596c;
    }

    @NotNull
    public final String b() {
        return this.f16595b;
    }

    @NotNull
    public final Set<String> c() {
        return this.f16594a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k(@Nullable Collection<String> collection, @NotNull String nonce) {
        this(collection, nonce, u.c());
        Intrinsics.checkNotNullParameter(nonce, "nonce");
    }

    public k(@Nullable Collection<String> collection, @NotNull String nonce, @NotNull String codeVerifier) {
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        if (t.a(nonce) && u.d(codeVerifier)) {
            HashSet hashSet = collection != null ? new HashSet(collection) : new HashSet();
            hashSet.add("openid");
            Set<String> unmodifiableSet = Collections.unmodifiableSet(hashSet);
            Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(permissions)");
            this.f16594a = unmodifiableSet;
            this.f16595b = nonce;
            this.f16596c = codeVerifier;
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }
}
