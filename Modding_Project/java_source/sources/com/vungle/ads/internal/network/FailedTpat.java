package com.vungle.ads.internal.network;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.a1;
import vt.c2;
import vt.r2;
import vt.w2;
/* compiled from: TpatSender.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class FailedTpat {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final String body;
    @Nullable
    private final Map<String, String> headers;
    @NotNull
    private final HttpMethod method;
    private int retryAttempt;
    private int retryCount;
    @Nullable
    private String tpatKey;

    /* compiled from: TpatSender.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<FailedTpat> serializer() {
            return FailedTpat$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    @c
    public /* synthetic */ FailedTpat(int i10, HttpMethod httpMethod, Map map, String str, int i11, int i12, String str2, r2 r2Var) {
        if (16 != (i10 & 16)) {
            c2.a(i10, 16, FailedTpat$$serializer.INSTANCE.getDescriptor());
        }
        this.method = (i10 & 1) == 0 ? HttpMethod.GET : httpMethod;
        if ((i10 & 2) == 0) {
            this.headers = null;
        } else {
            this.headers = map;
        }
        if ((i10 & 4) == 0) {
            this.body = null;
        } else {
            this.body = str;
        }
        if ((i10 & 8) == 0) {
            this.retryAttempt = 0;
        } else {
            this.retryAttempt = i11;
        }
        this.retryCount = i12;
        if ((i10 & 32) == 0) {
            this.tpatKey = null;
        } else {
            this.tpatKey = str2;
        }
    }

    public static /* synthetic */ FailedTpat copy$default(FailedTpat failedTpat, HttpMethod httpMethod, Map map, String str, int i10, int i11, String str2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            httpMethod = failedTpat.method;
        }
        Map<String, String> map2 = map;
        if ((i12 & 2) != 0) {
            map2 = failedTpat.headers;
        }
        Map map3 = map2;
        if ((i12 & 4) != 0) {
            str = failedTpat.body;
        }
        String str3 = str;
        if ((i12 & 8) != 0) {
            i10 = failedTpat.retryAttempt;
        }
        int i13 = i10;
        if ((i12 & 16) != 0) {
            i11 = failedTpat.retryCount;
        }
        int i14 = i11;
        if ((i12 & 32) != 0) {
            str2 = failedTpat.tpatKey;
        }
        return failedTpat.copy(httpMethod, map3, str3, i13, i14, str2);
    }

    public static final void write$Self(@NotNull FailedTpat self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.method != HttpMethod.GET) {
            output.encodeSerializableElement(serialDesc, 0, HttpMethod$$serializer.INSTANCE, self.method);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.headers != null) {
            w2 w2Var = w2.f69539a;
            output.encodeNullableSerializableElement(serialDesc, 1, new a1(w2Var, w2Var), self.headers);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.body != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, w2.f69539a, self.body);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.retryAttempt != 0) {
            output.encodeIntElement(serialDesc, 3, self.retryAttempt);
        }
        output.encodeIntElement(serialDesc, 4, self.retryCount);
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.tpatKey != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, w2.f69539a, self.tpatKey);
        }
    }

    @NotNull
    public final HttpMethod component1() {
        return this.method;
    }

    @Nullable
    public final Map<String, String> component2() {
        return this.headers;
    }

    @Nullable
    public final String component3() {
        return this.body;
    }

    public final int component4() {
        return this.retryAttempt;
    }

    public final int component5() {
        return this.retryCount;
    }

    @Nullable
    public final String component6() {
        return this.tpatKey;
    }

    @NotNull
    public final FailedTpat copy(@NotNull HttpMethod method, @Nullable Map<String, String> map, @Nullable String str, int i10, int i11, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(method, "method");
        return new FailedTpat(method, map, str, i10, i11, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FailedTpat)) {
            return false;
        }
        FailedTpat failedTpat = (FailedTpat) obj;
        if (this.method == failedTpat.method && Intrinsics.areEqual(this.headers, failedTpat.headers) && Intrinsics.areEqual(this.body, failedTpat.body) && this.retryAttempt == failedTpat.retryAttempt && this.retryCount == failedTpat.retryCount && Intrinsics.areEqual(this.tpatKey, failedTpat.tpatKey)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getBody() {
        return this.body;
    }

    @Nullable
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    @NotNull
    public final HttpMethod getMethod() {
        return this.method;
    }

    public final int getRetryAttempt() {
        return this.retryAttempt;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    @Nullable
    public final String getTpatKey() {
        return this.tpatKey;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.method.hashCode() * 31;
        Map<String, String> map = this.headers;
        int i10 = 0;
        if (map == null) {
            hashCode = 0;
        } else {
            hashCode = map.hashCode();
        }
        int i11 = (hashCode3 + hashCode) * 31;
        String str = this.body;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int hashCode4 = (((((i11 + hashCode2) * 31) + Integer.hashCode(this.retryAttempt)) * 31) + Integer.hashCode(this.retryCount)) * 31;
        String str2 = this.tpatKey;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return hashCode4 + i10;
    }

    public final void setRetryAttempt(int i10) {
        this.retryAttempt = i10;
    }

    public final void setRetryCount(int i10) {
        this.retryCount = i10;
    }

    public final void setTpatKey(@Nullable String str) {
        this.tpatKey = str;
    }

    @NotNull
    public String toString() {
        return "FailedTpat(method=" + this.method + ", headers=" + this.headers + ", body=" + this.body + ", retryAttempt=" + this.retryAttempt + ", retryCount=" + this.retryCount + ", tpatKey=" + this.tpatKey + ')';
    }

    public FailedTpat(@NotNull HttpMethod method, @Nullable Map<String, String> map, @Nullable String str, int i10, int i11, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(method, "method");
        this.method = method;
        this.headers = map;
        this.body = str;
        this.retryAttempt = i10;
        this.retryCount = i11;
        this.tpatKey = str2;
    }

    public /* synthetic */ FailedTpat(HttpMethod httpMethod, Map map, String str, int i10, int i11, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? HttpMethod.GET : httpMethod, (i12 & 2) != 0 ? null : map, (i12 & 4) != 0 ? null : str, (i12 & 8) != 0 ? 0 : i10, i11, (i12 & 32) != 0 ? null : str2);
    }
}
