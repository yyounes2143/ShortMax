package m1;

import android.os.SystemClock;
import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnDebounceClickListener.kt */
@Metadata
/* loaded from: classes3.dex */
final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final long f62443a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super View, Unit> f62444b;

    /* renamed from: c  reason: collision with root package name */
    private long f62445c;

    public c(long j10, @NotNull Function1<? super View, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.f62443a = j10;
        this.f62444b = block;
    }

    private final long a() {
        o1.a aVar = o1.a.f63070a;
        if (aVar.b()) {
            return aVar.c();
        }
        return this.f62445c;
    }

    private final void b(long j10) {
        o1.a aVar = o1.a.f63070a;
        if (aVar.b()) {
            aVar.e(j10);
        } else {
            this.f62445c = j10;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@NotNull View v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - a() > this.f62443a) {
            b(elapsedRealtime);
            this.f62444b.invoke(v10);
        }
    }
}
