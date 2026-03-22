package com.facebook.appevents;

import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.internal.u0;
import java.io.ObjectStreamException;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccessTokenAppIdPair.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class AccessTokenAppIdPair implements Serializable {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f14923c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f14924a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f14925b;

    /* compiled from: AccessTokenAppIdPair.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class SerializationProxyV1 implements Serializable {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f14926c = new a(null);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f14927a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f14928b;

        /* compiled from: AccessTokenAppIdPair.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public SerializationProxyV1(@Nullable String str, @NotNull String appId) {
            Intrinsics.checkNotNullParameter(appId, "appId");
            this.f14927a = str;
            this.f14928b = appId;
        }

        private final Object readResolve() throws ObjectStreamException {
            return new AccessTokenAppIdPair(this.f14927a, this.f14928b);
        }
    }

    /* compiled from: AccessTokenAppIdPair.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public AccessTokenAppIdPair(@Nullable String str, @NotNull String applicationId) {
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        this.f14924a = applicationId;
        this.f14925b = u0.d0(str) ? null : str;
    }

    private final Object writeReplace() throws ObjectStreamException {
        return new SerializationProxyV1(this.f14925b, this.f14924a);
    }

    @Nullable
    public final String b() {
        return this.f14925b;
    }

    @NotNull
    public final String d() {
        return this.f14924a;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof AccessTokenAppIdPair)) {
            return false;
        }
        AccessTokenAppIdPair accessTokenAppIdPair = (AccessTokenAppIdPair) obj;
        if (!u0.e(accessTokenAppIdPair.f14925b, this.f14925b) || !u0.e(accessTokenAppIdPair.f14924a, this.f14924a)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10;
        String str = this.f14925b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return i10 ^ this.f14924a.hashCode();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AccessTokenAppIdPair(@NotNull AccessToken accessToken) {
        this(accessToken.m(), com.facebook.v.m());
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
    }
}
