package com.unity3d.services.core.network.core;

import androidx.annotation.VisibleForTesting;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.log.DeviceLog;
import gt.g;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnityAdsUrlRequestCallback.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class UnityAdsUrlRequestCallback extends UrlRequest.Callback {
    private static final int BYTE_BUFFER_CAPACITY_BYTES = 16384;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final ByteArrayOutputStream bytesReceived;
    @NotNull
    private final ISDKDispatchers dispatchers;
    private final long readTimeout;
    private final WritableByteChannel receiveChannel;
    @Nullable
    private r task;

    /* compiled from: UnityAdsUrlRequestCallback.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public UnityAdsUrlRequestCallback(@NotNull ISDKDispatchers dispatchers, long j10) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        this.dispatchers = dispatchers;
        this.readTimeout = j10;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.bytesReceived = byteArrayOutputStream;
        this.receiveChannel = Channels.newChannel(byteArrayOutputStream);
    }

    private final void cancelTimer() {
        r rVar = this.task;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.task = null;
    }

    public final long getReadTimeout() {
        return this.readTimeout;
    }

    @Nullable
    public final r getTask() {
        return this.task;
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onCanceled(@Nullable UrlRequest urlRequest, @Nullable UrlResponseInfo urlResponseInfo) {
        super.onCanceled(urlRequest, urlResponseInfo);
        cancelTimer();
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onFailed(@Nullable UrlRequest urlRequest, @Nullable UrlResponseInfo urlResponseInfo, @Nullable CronetException cronetException) {
        cancelTimer();
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onReadCompleted(@NotNull UrlRequest request, @NotNull UrlResponseInfo info, @NotNull ByteBuffer byteBuffer) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(byteBuffer, "byteBuffer");
        cancelTimer();
        byteBuffer.flip();
        try {
            this.receiveChannel.write(byteBuffer);
        } catch (IOException e10) {
            DeviceLog.info("IOException during ByteBuffer read. Details: ", e10);
        }
        byteBuffer.clear();
        startTimer(request);
        request.read(byteBuffer);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onRedirectReceived(@NotNull UrlRequest request, @Nullable UrlResponseInfo urlResponseInfo, @Nullable String str) {
        Intrinsics.checkNotNullParameter(request, "request");
        request.followRedirect();
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onResponseStarted(@NotNull UrlRequest request, @NotNull UrlResponseInfo info) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(info, "info");
        startTimer(request);
        request.read(ByteBuffer.allocateDirect(16384));
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onSucceeded(@NotNull UrlRequest request, @NotNull UrlResponseInfo info) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(info, "info");
        cancelTimer();
        byte[] bodyBytes = this.bytesReceived.toByteArray();
        Intrinsics.checkNotNullExpressionValue(bodyBytes, "bodyBytes");
        onSucceeded(request, info, bodyBytes);
    }

    public abstract void onSucceeded(@NotNull UrlRequest urlRequest, @NotNull UrlResponseInfo urlResponseInfo, @NotNull byte[] bArr);

    public final void setTask(@Nullable r rVar) {
        this.task = rVar;
    }

    public final void startTimer(@NotNull UrlRequest request) {
        r d10;
        Intrinsics.checkNotNullParameter(request, "request");
        cancelTimer();
        d10 = g.d(i.a(this.dispatchers.getIo()), null, null, new UnityAdsUrlRequestCallback$startTimer$1(this, request, null), 3, null);
        this.task = d10;
    }

    @VisibleForTesting
    public static /* synthetic */ void getTask$annotations() {
    }
}
