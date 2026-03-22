package zm;

import androidx.annotation.CheckResult;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import cn.m0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: PlaybackParameters.java */
/* loaded from: classes8.dex */
public final class v {

    /* renamed from: d  reason: collision with root package name */
    public static final v f72205d = new v(1.0f);

    /* renamed from: e  reason: collision with root package name */
    private static final String f72206e = m0.C0(0);

    /* renamed from: f  reason: collision with root package name */
    private static final String f72207f = m0.C0(1);

    /* renamed from: a  reason: collision with root package name */
    public final float f72208a;

    /* renamed from: b  reason: collision with root package name */
    public final float f72209b;

    /* renamed from: c  reason: collision with root package name */
    private final int f72210c;

    public v(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        this(f10, 1.0f);
    }

    public long a(long j10) {
        return j10 * this.f72210c;
    }

    @CheckResult
    public v b(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        return new v(f10, this.f72209b);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v.class != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        if (this.f72208a == vVar.f72208a && this.f72209b == vVar.f72209b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + Float.floatToRawIntBits(this.f72208a)) * 31) + Float.floatToRawIntBits(this.f72209b);
    }

    public String toString() {
        return m0.G("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f72208a), Float.valueOf(this.f72209b));
    }

    public v(@FloatRange(from = 0.0d, fromInclusive = false) float f10, @FloatRange(from = 0.0d, fromInclusive = false) float f11) {
        cn.a.a(f10 > 0.0f);
        cn.a.a(f11 > 0.0f);
        this.f72208a = f10;
        this.f72209b = f11;
        this.f72210c = Math.round(f10 * 1000.0f);
    }
}
