package okhttp3.internal.ws;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebSocketProtocol.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebSocketProtocol.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketProtocol.kt\nokhttp3/internal/ws/WebSocketProtocol\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"})
/* loaded from: classes8.dex */
public final class WebSocketProtocol {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final WebSocketProtocol f64230a = new WebSocketProtocol();

    private WebSocketProtocol() {
    }

    @Nullable
    public final String a(int i10) {
        if (i10 >= 1000 && i10 < 5000) {
            if ((1004 <= i10 && i10 < 1007) || (1015 <= i10 && i10 < 3000)) {
                return "Code " + i10 + " is reserved and may not be used.";
            }
            return null;
        }
        return "Code must be in range [1000,5000): " + i10;
    }

    public final void b(@NotNull Buffer.UnsafeCursor cursor, @NotNull byte[] key) {
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Intrinsics.checkNotNullParameter(key, "key");
        int length = key.length;
        int i10 = 0;
        do {
            byte[] bArr = cursor.data;
            int i11 = cursor.start;
            int i12 = cursor.end;
            if (bArr != null) {
                while (i11 < i12) {
                    int i13 = i10 % length;
                    bArr[i11] = (byte) (bArr[i11] ^ key[i13]);
                    i11++;
                    i10 = i13 + 1;
                }
            }
        } while (cursor.next() != -1);
    }

    public final void c(int i10) {
        String a10 = a(i10);
        if (a10 == null) {
            return;
        }
        Intrinsics.checkNotNull(a10);
        throw new IllegalArgumentException(a10.toString());
    }
}
