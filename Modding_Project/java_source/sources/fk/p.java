package fk;

import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ElapsedTime.kt */
@Metadata
/* loaded from: classes7.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private long f51743a;

    /* renamed from: b  reason: collision with root package name */
    private long f51744b;

    public final long a() {
        long j10 = this.f51743a;
        if (j10 != 0) {
            long j11 = this.f51744b;
            if (j11 != 0) {
                return j11 - j10;
            }
        }
        return 0L;
    }

    public final long b() {
        if (this.f51744b == 0) {
            this.f51744b = DeviceUtil.f48146a.L();
            return a();
        }
        throw new IllegalAccessException("end() has been called before");
    }

    public final boolean c() {
        if (this.f51744b != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final p d() {
        this.f51743a = DeviceUtil.f48146a.L();
        this.f51744b = 0L;
        return this;
    }
}
