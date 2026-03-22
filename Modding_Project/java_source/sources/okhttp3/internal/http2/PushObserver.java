package okhttp3.internal.http2;

import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
/* compiled from: PushObserver.kt */
@Metadata
/* loaded from: classes8.dex */
public interface PushObserver {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f64088a = Companion.f64090a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final PushObserver f64089b = new Companion.PushObserverCancel();

    /* compiled from: PushObserver.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ Companion f64090a = new Companion();

        /* compiled from: PushObserver.kt */
        @Metadata
        /* loaded from: classes8.dex */
        private static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean a(int i10, @NotNull BufferedSource source, int i11, boolean z10) throws IOException {
                Intrinsics.checkNotNullParameter(source, "source");
                source.skip(i11);
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void b(int i10, @NotNull ErrorCode errorCode) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i10, @NotNull List<Header> responseHeaders, boolean z10) {
                Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i10, @NotNull List<Header> requestHeaders) {
                Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
                return true;
            }
        }

        private Companion() {
        }
    }

    boolean a(int i10, @NotNull BufferedSource bufferedSource, int i11, boolean z10) throws IOException;

    void b(int i10, @NotNull ErrorCode errorCode);

    boolean onHeaders(int i10, @NotNull List<Header> list, boolean z10);

    boolean onRequest(int i10, @NotNull List<Header> list);
}
