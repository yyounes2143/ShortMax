package cd;

import android.os.SystemClock;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ElapsedTime.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private long f3466a;

    /* renamed from: b  reason: collision with root package name */
    private long f3467b;

    public final long a() {
        long j10 = this.f3466a;
        if (j10 != 0) {
            long j11 = this.f3467b;
            if (j11 != 0) {
                return j11 - j10;
            }
        }
        return 0L;
    }

    public final long b() {
        if (this.f3467b == 0) {
            this.f3467b = SystemClock.elapsedRealtime();
            return a();
        }
        throw new IllegalAccessException("end() has been called before");
    }

    public final boolean c() {
        if (this.f3467b != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final f d() {
        this.f3466a = SystemClock.elapsedRealtime();
        this.f3467b = 0L;
        return this;
    }
}
