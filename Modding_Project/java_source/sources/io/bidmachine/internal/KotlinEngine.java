package io.bidmachine.internal;

import gt.g;
import gt.g0;
import gt.q0;
import gt.r1;
import io.bidmachine.BidMachine;
import io.bidmachine.core.a;
import kotlin.Metadata;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: KotlinEngine.kt */
@Metadata
/* loaded from: classes7.dex */
public final class KotlinEngine {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final KotlinEngine f54996a = new KotlinEngine();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final g0 f54997b = i.a(r1.b(null, 1, null).plus(q0.a()));

    private KotlinEngine() {
    }

    public static final void a() {
        a.c(BidMachine.NAME, "Init Kt");
        g.d(f54997b, null, null, new KotlinEngine$init$1(null), 3, null);
    }
}
