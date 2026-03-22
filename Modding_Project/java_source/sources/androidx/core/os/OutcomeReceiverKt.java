package androidx.core.os;

import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: OutcomeReceiver.kt */
@RequiresApi(31)
@Metadata
/* loaded from: classes.dex */
public final class OutcomeReceiverKt {
    @RequiresApi(31)
    @NotNull
    public static final <R, E extends Throwable> OutcomeReceiver asOutcomeReceiver(@NotNull c<? super R> cVar) {
        return b.a(new ContinuationOutcomeReceiver(cVar));
    }
}
