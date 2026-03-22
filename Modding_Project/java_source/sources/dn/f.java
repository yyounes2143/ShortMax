package dn;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import zm.t;
/* compiled from: Mp4TimestampData.java */
/* loaded from: classes8.dex */
public final class f implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final long f50459a;

    /* renamed from: b  reason: collision with root package name */
    public final long f50460b;

    /* renamed from: c  reason: collision with root package name */
    public final long f50461c;

    public f(long j10, long j11, long j12) {
        this.f50459a = j10;
        this.f50460b = j11;
        this.f50461c = j12;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f50459a == fVar.f50459a && this.f50460b == fVar.f50460b && this.f50461c == fVar.f50461c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + com.google.common.primitives.f.a(this.f50459a)) * 31) + com.google.common.primitives.f.a(this.f50460b)) * 31) + com.google.common.primitives.f.a(this.f50461c);
    }

    public String toString() {
        return "Mp4Timestamp: creation time=" + this.f50459a + ", modification time=" + this.f50460b + ", timescale=" + this.f50461c;
    }
}
