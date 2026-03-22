package qo;

import androidx.annotation.Nullable;
import com.google.common.primitives.f;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import zm.t;
/* compiled from: MotionPhotoMetadata.java */
/* loaded from: classes8.dex */
public final class a implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final long f65386a;

    /* renamed from: b  reason: collision with root package name */
    public final long f65387b;

    /* renamed from: c  reason: collision with root package name */
    public final long f65388c;

    /* renamed from: d  reason: collision with root package name */
    public final long f65389d;

    /* renamed from: e  reason: collision with root package name */
    public final long f65390e;

    public a(long j10, long j11, long j12, long j13, long j14) {
        this.f65386a = j10;
        this.f65387b = j11;
        this.f65388c = j12;
        this.f65389d = j13;
        this.f65390e = j14;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f65386a == aVar.f65386a && this.f65387b == aVar.f65387b && this.f65388c == aVar.f65388c && this.f65389d == aVar.f65389d && this.f65390e == aVar.f65390e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + f.a(this.f65386a)) * 31) + f.a(this.f65387b)) * 31) + f.a(this.f65388c)) * 31) + f.a(this.f65389d)) * 31) + f.a(this.f65390e);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f65386a + ", photoSize=" + this.f65387b + ", photoPresentationTimestampUs=" + this.f65388c + ", videoStartPosition=" + this.f65389d + ", videoSize=" + this.f65390e;
    }
}
