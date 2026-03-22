package io.ktor.client.content;

import at.n;
import gt.e1;
import io.ktor.client.utils.ByteChannelUtilsKt;
import io.ktor.http.a;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.CoroutinesKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import wr.f;
import xr.b;
/* compiled from: ObservableContent.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ObservableContent extends b.c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b f58806a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f58807b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final n<Long, Long, c<? super Unit>, Object> f58808c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ByteReadChannel f58809d;

    /* JADX WARN: Multi-variable type inference failed */
    public ObservableContent(@NotNull b delegate, @NotNull CoroutineContext callContext, @NotNull n<? super Long, ? super Long, ? super c<? super Unit>, ? extends Object> listener) {
        ByteReadChannel channel;
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(callContext, "callContext");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f58806a = delegate;
        this.f58807b = callContext;
        this.f58808c = listener;
        if (delegate instanceof b.a) {
            channel = io.ktor.utils.io.c.a(((b.a) delegate).d());
        } else if (delegate instanceof b.AbstractC0972b) {
            channel = ByteReadChannel.f59475a.a();
        } else if (delegate instanceof b.c) {
            channel = ((b.c) delegate).d();
        } else if (delegate instanceof b.d) {
            channel = CoroutinesKt.d(e1.f52533a, callContext, true, new ObservableContent$content$1(this, null)).getChannel();
        } else {
            throw new NoWhenBranchMatchedException();
        }
        this.f58809d = channel;
    }

    @Override // xr.b
    @Nullable
    public Long a() {
        return this.f58806a.a();
    }

    @Override // xr.b
    @Nullable
    public a b() {
        return this.f58806a.b();
    }

    @Override // xr.b
    @NotNull
    public f c() {
        return this.f58806a.c();
    }

    @Override // xr.b.c
    @NotNull
    public ByteReadChannel d() {
        return ByteChannelUtilsKt.a(this.f58809d, this.f58807b, a(), this.f58808c);
    }
}
