package io.ktor.websocket;

import gt.w;
import io.ktor.util.internal.a;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: FrameTooBigException.kt */
@Metadata
/* loaded from: classes8.dex */
public final class FrameTooBigException extends Exception implements w<FrameTooBigException> {

    /* renamed from: a  reason: collision with root package name */
    private final long f59645a;

    public FrameTooBigException(long j10) {
        this.f59645a = j10;
    }

    @Override // gt.w
    @NotNull
    /* renamed from: d */
    public FrameTooBigException b() {
        FrameTooBigException frameTooBigException = new FrameTooBigException(this.f59645a);
        a.a(frameTooBigException, this);
        return frameTooBigException;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return "Frame is too big: " + this.f59645a;
    }
}
