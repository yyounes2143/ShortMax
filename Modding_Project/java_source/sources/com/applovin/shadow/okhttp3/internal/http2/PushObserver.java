package com.applovin.shadow.okhttp3.internal.http2;

import com.applovin.shadow.okio.BufferedSource;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PushObserver.kt */
@Metadata
/* loaded from: classes2.dex */
public interface PushObserver {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    @NotNull
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    /* compiled from: PushObserver.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* compiled from: PushObserver.kt */
        @Metadata
        /* loaded from: classes2.dex */
        private static final class PushObserverCancel implements PushObserver {
            @Override // com.applovin.shadow.okhttp3.internal.http2.PushObserver
            public boolean onData(int i10, @NotNull BufferedSource source, int i11, boolean z10) throws IOException {
                Intrinsics.checkNotNullParameter(source, "source");
                source.skip(i11);
                return true;
            }

            @Override // com.applovin.shadow.okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i10, @NotNull List<Header> responseHeaders, boolean z10) {
                Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
                return true;
            }

            @Override // com.applovin.shadow.okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i10, @NotNull List<Header> requestHeaders) {
                Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
                return true;
            }

            @Override // com.applovin.shadow.okhttp3.internal.http2.PushObserver
            public void onReset(int i10, @NotNull ErrorCode errorCode) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            }
        }

        private Companion() {
        }
    }

    boolean onData(int i10, @NotNull BufferedSource bufferedSource, int i11, boolean z10) throws IOException;

    boolean onHeaders(int i10, @NotNull List<Header> list, boolean z10);

    boolean onRequest(int i10, @NotNull List<Header> list);

    void onReset(int i10, @NotNull ErrorCode errorCode);
}
