package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Header.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Header {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final Companion f63915d = new Companion(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final ByteString f63916e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final ByteString f63917f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final ByteString f63918g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final ByteString f63919h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final ByteString f63920i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final ByteString f63921j;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final ByteString f63922a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final ByteString f63923b;

    /* renamed from: c  reason: collision with root package name */
    public final int f63924c;

    /* compiled from: Header.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        ByteString.Companion companion = ByteString.Companion;
        f63916e = companion.encodeUtf8(":");
        f63917f = companion.encodeUtf8(com.applovin.shadow.okhttp3.internal.http2.Header.RESPONSE_STATUS_UTF8);
        f63918g = companion.encodeUtf8(com.applovin.shadow.okhttp3.internal.http2.Header.TARGET_METHOD_UTF8);
        f63919h = companion.encodeUtf8(com.applovin.shadow.okhttp3.internal.http2.Header.TARGET_PATH_UTF8);
        f63920i = companion.encodeUtf8(com.applovin.shadow.okhttp3.internal.http2.Header.TARGET_SCHEME_UTF8);
        f63921j = companion.encodeUtf8(com.applovin.shadow.okhttp3.internal.http2.Header.TARGET_AUTHORITY_UTF8);
    }

    public Header(@NotNull ByteString name, @NotNull ByteString value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f63922a = name;
        this.f63923b = value;
        this.f63924c = name.size() + 32 + value.size();
    }

    @NotNull
    public final ByteString a() {
        return this.f63922a;
    }

    @NotNull
    public final ByteString b() {
        return this.f63923b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        if (Intrinsics.areEqual(this.f63922a, header.f63922a) && Intrinsics.areEqual(this.f63923b, header.f63923b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f63922a.hashCode() * 31) + this.f63923b.hashCode();
    }

    @NotNull
    public String toString() {
        return this.f63922a.utf8() + ": " + this.f63923b.utf8();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Header(@org.jetbrains.annotations.NotNull java.lang.String r2, @org.jetbrains.annotations.NotNull java.lang.String r3) {
        /*
            r1 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            okio.ByteString$Companion r0 = okio.ByteString.Companion
            okio.ByteString r2 = r0.encodeUtf8(r2)
            okio.ByteString r3 = r0.encodeUtf8(r3)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Header.<init>(java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(@NotNull ByteString name, @NotNull String value) {
        this(name, ByteString.Companion.encodeUtf8(value));
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
    }
}
