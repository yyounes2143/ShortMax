package p1;

import android.view.View;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThrottleClick.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final long f64496a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final TimeUnit f64497b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private Function1<? super View, Unit> f64498c;

    /* renamed from: d  reason: collision with root package name */
    private long f64499d;

    public g(long j10, @NotNull TimeUnit unit, @NotNull Function1<? super View, Unit> block) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        Intrinsics.checkNotNullParameter(block, "block");
        this.f64496a = j10;
        this.f64497b = unit;
        this.f64498c = block;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@NotNull View v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f64499d > this.f64497b.toMillis(this.f64496a)) {
            this.f64499d = currentTimeMillis;
            this.f64498c.invoke(v10);
        }
    }
}
