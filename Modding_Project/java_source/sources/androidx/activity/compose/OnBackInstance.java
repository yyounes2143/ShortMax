package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import gt.g0;
import java.util.concurrent.CancellationException;
import jt.d;
import jt.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.h;
import kotlinx.coroutines.r;
import kt.b;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: PredictiveBackHandler.kt */
@Metadata
/* loaded from: classes.dex */
final class OnBackInstance {
    @NotNull
    private final d<BackEventCompat> channel = g.b(-2, BufferOverflow.SUSPEND, null, 4, null);
    private final boolean isPredictiveBack;
    @NotNull
    private final r job;

    public OnBackInstance(@NotNull g0 g0Var, boolean z10, @NotNull Function2<? super b<BackEventCompat>, ? super c<? super Unit>, ? extends Object> function2) {
        r d10;
        this.isPredictiveBack = z10;
        d10 = gt.g.d(g0Var, null, null, new OnBackInstance$job$1(function2, this, null), 3, null);
        this.job = d10;
    }

    public final void cancel() {
        this.channel.cancel(new CancellationException("onBack cancelled"));
        r.a.b(this.job, null, 1, null);
    }

    public final boolean close() {
        return h.a.a(this.channel, null, 1, null);
    }

    @NotNull
    public final d<BackEventCompat> getChannel() {
        return this.channel;
    }

    @NotNull
    public final r getJob() {
        return this.job;
    }

    public final boolean isPredictiveBack() {
        return this.isPredictiveBack;
    }

    @NotNull
    /* renamed from: send-JP2dKIU  reason: not valid java name */
    public final Object m12sendJP2dKIU(@NotNull BackEventCompat backEventCompat) {
        return this.channel.h(backEventCompat);
    }
}
