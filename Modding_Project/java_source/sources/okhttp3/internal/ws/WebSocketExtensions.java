package okhttp3.internal.ws;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebSocketExtensions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class WebSocketExtensions {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final Companion f64223g = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    public final boolean f64224a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f64225b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f64226c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Integer f64227d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f64228e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f64229f;

    /* compiled from: WebSocketExtensions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final WebSocketExtensions a(@NotNull Headers responseHeaders) throws IOException {
            String str;
            Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            boolean z10 = false;
            Integer num = null;
            boolean z11 = false;
            Integer num2 = null;
            boolean z12 = false;
            boolean z13 = false;
            for (int i10 = 0; i10 < size; i10++) {
                if (StringsKt.G(responseHeaders.d(i10), "Sec-WebSocket-Extensions", true)) {
                    String i11 = responseHeaders.i(i10);
                    int i12 = 0;
                    while (i12 < i11.length()) {
                        int r10 = Util.r(i11, ',', i12, 0, 4, null);
                        int p10 = Util.p(i11, ';', i12, r10);
                        String Z = Util.Z(i11, i12, p10);
                        int i13 = p10 + 1;
                        if (StringsKt.G(Z, "permessage-deflate", true)) {
                            if (z10) {
                                z13 = true;
                            }
                            i12 = i13;
                            while (i12 < r10) {
                                int p11 = Util.p(i11, ';', i12, r10);
                                int p12 = Util.p(i11, '=', i12, p11);
                                String Z2 = Util.Z(i11, i12, p12);
                                if (p12 < p11) {
                                    str = StringsKt.R0(Util.Z(i11, p12 + 1, p11), "\"");
                                } else {
                                    str = null;
                                }
                                i12 = p11 + 1;
                                if (StringsKt.G(Z2, "client_max_window_bits", true)) {
                                    if (num != null) {
                                        z13 = true;
                                    }
                                    if (str != null) {
                                        num = StringsKt.toIntOrNull(str);
                                    } else {
                                        num = null;
                                    }
                                    if (num == null) {
                                        z13 = true;
                                    }
                                } else if (StringsKt.G(Z2, "client_no_context_takeover", true)) {
                                    if (z11) {
                                        z13 = true;
                                    }
                                    if (str != null) {
                                        z13 = true;
                                    }
                                    z11 = true;
                                } else if (StringsKt.G(Z2, "server_max_window_bits", true)) {
                                    if (num2 != null) {
                                        z13 = true;
                                    }
                                    if (str != null) {
                                        num2 = StringsKt.toIntOrNull(str);
                                    } else {
                                        num2 = null;
                                    }
                                    if (num2 == null) {
                                        z13 = true;
                                    }
                                } else if (!StringsKt.G(Z2, "server_no_context_takeover", true)) {
                                    z13 = true;
                                } else {
                                    if (z12) {
                                        z13 = true;
                                    }
                                    if (str != null) {
                                        z13 = true;
                                    }
                                    z12 = true;
                                }
                            }
                            z10 = true;
                        } else {
                            i12 = i13;
                            z13 = true;
                        }
                    }
                }
            }
            return new WebSocketExtensions(z10, num, z11, num2, z12, z13);
        }

        private Companion() {
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public final boolean a(boolean z10) {
        if (z10) {
            return this.f64226c;
        }
        return this.f64228e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        if (this.f64224a == webSocketExtensions.f64224a && Intrinsics.areEqual(this.f64225b, webSocketExtensions.f64225b) && this.f64226c == webSocketExtensions.f64226c && Intrinsics.areEqual(this.f64227d, webSocketExtensions.f64227d) && this.f64228e == webSocketExtensions.f64228e && this.f64229f == webSocketExtensions.f64229f) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        int hashCode;
        boolean z10 = this.f64224a;
        int i10 = 1;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i11 = r02 * 31;
        Integer num = this.f64225b;
        int i12 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i13 = (i11 + hashCode) * 31;
        ?? r22 = this.f64226c;
        int i14 = r22;
        if (r22 != 0) {
            i14 = 1;
        }
        int i15 = (i13 + i14) * 31;
        Integer num2 = this.f64227d;
        if (num2 != null) {
            i12 = num2.hashCode();
        }
        int i16 = (i15 + i12) * 31;
        ?? r23 = this.f64228e;
        int i17 = r23;
        if (r23 != 0) {
            i17 = 1;
        }
        int i18 = (i16 + i17) * 31;
        boolean z11 = this.f64229f;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        return i18 + i10;
    }

    @NotNull
    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.f64224a + ", clientMaxWindowBits=" + this.f64225b + ", clientNoContextTakeover=" + this.f64226c + ", serverMaxWindowBits=" + this.f64227d + ", serverNoContextTakeover=" + this.f64228e + ", unknownValues=" + this.f64229f + ')';
    }

    public WebSocketExtensions(boolean z10, @Nullable Integer num, boolean z11, @Nullable Integer num2, boolean z12, boolean z13) {
        this.f64224a = z10;
        this.f64225b = num;
        this.f64226c = z11;
        this.f64227d = num2;
        this.f64228e = z12;
        this.f64229f = z13;
    }

    public /* synthetic */ WebSocketExtensions(boolean z10, Integer num, boolean z11, Integer num2, boolean z12, boolean z13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? false : z11, (i10 & 8) == 0 ? num2 : null, (i10 & 16) != 0 ? false : z12, (i10 & 32) != 0 ? false : z13);
    }
}
