package com.applovin.shadow.okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ForwardingTimeout.kt */
@Metadata
/* loaded from: classes2.dex */
public class ForwardingTimeout extends Timeout {
    @NotNull
    private Timeout delegate;

    public ForwardingTimeout(@NotNull Timeout delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // com.applovin.shadow.okio.Timeout
    @NotNull
    public Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    @Override // com.applovin.shadow.okio.Timeout
    @NotNull
    public Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    @Override // com.applovin.shadow.okio.Timeout
    public long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    @NotNull
    public final Timeout delegate() {
        return this.delegate;
    }

    @Override // com.applovin.shadow.okio.Timeout
    public boolean hasDeadline() {
        return this.delegate.hasDeadline();
    }

    /* renamed from: setDelegate  reason: collision with other method in class */
    public final /* synthetic */ void m4620setDelegate(Timeout timeout) {
        Intrinsics.checkNotNullParameter(timeout, "<set-?>");
        this.delegate = timeout;
    }

    @Override // com.applovin.shadow.okio.Timeout
    public void throwIfReached() throws IOException {
        this.delegate.throwIfReached();
    }

    @Override // com.applovin.shadow.okio.Timeout
    @NotNull
    public Timeout timeout(long j10, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return this.delegate.timeout(j10, unit);
    }

    @Override // com.applovin.shadow.okio.Timeout
    public long timeoutNanos() {
        return this.delegate.timeoutNanos();
    }

    @Override // com.applovin.shadow.okio.Timeout
    @NotNull
    public Timeout deadlineNanoTime(long j10) {
        return this.delegate.deadlineNanoTime(j10);
    }

    @NotNull
    public final ForwardingTimeout setDelegate(@NotNull Timeout delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        return this;
    }
}
