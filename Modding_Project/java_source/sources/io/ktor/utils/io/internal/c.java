package io.ktor.utils.io.internal;

import io.ktor.utils.io.ByteBufferChannel;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: ByteBufferChannelInternals.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59545c = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_closeWaitJob");
    @NotNull
    private volatile /* synthetic */ Object _closeWaitJob;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ByteBufferChannel f59546a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f59547b;
    @NotNull
    private volatile /* synthetic */ int closed;

    public final void a() {
        this.closed = 1;
        r rVar = (r) f59545c.getAndSet(this, null);
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
    }

    public final boolean b() {
        return this.f59547b;
    }

    @NotNull
    public final ByteBufferChannel c() {
        return this.f59546a;
    }
}
