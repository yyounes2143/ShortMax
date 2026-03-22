package po;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: ChapterFrame.java */
/* loaded from: classes8.dex */
public final class c extends i {

    /* renamed from: b  reason: collision with root package name */
    public final String f64928b;

    /* renamed from: c  reason: collision with root package name */
    public final int f64929c;

    /* renamed from: d  reason: collision with root package name */
    public final int f64930d;

    /* renamed from: e  reason: collision with root package name */
    public final long f64931e;

    /* renamed from: f  reason: collision with root package name */
    public final long f64932f;

    /* renamed from: g  reason: collision with root package name */
    private final i[] f64933g;

    public c(String str, int i10, int i11, long j10, long j11, i[] iVarArr) {
        super(ChapterFrame.ID);
        this.f64928b = str;
        this.f64929c = i10;
        this.f64930d = i11;
        this.f64931e = j10;
        this.f64932f = j11;
        this.f64933g = iVarArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f64929c == cVar.f64929c && this.f64930d == cVar.f64930d && this.f64931e == cVar.f64931e && this.f64932f == cVar.f64932f && Objects.equals(this.f64928b, cVar.f64928b) && Arrays.equals(this.f64933g, cVar.f64933g)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f64929c) * 31) + this.f64930d) * 31) + ((int) this.f64931e)) * 31) + ((int) this.f64932f)) * 31;
        String str = this.f64928b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }
}
