package po;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterTocFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: ChapterTocFrame.java */
/* loaded from: classes8.dex */
public final class d extends i {

    /* renamed from: b  reason: collision with root package name */
    public final String f64934b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f64935c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f64936d;

    /* renamed from: e  reason: collision with root package name */
    public final String[] f64937e;

    /* renamed from: f  reason: collision with root package name */
    private final i[] f64938f;

    public d(String str, boolean z10, boolean z11, String[] strArr, i[] iVarArr) {
        super(ChapterTocFrame.ID);
        this.f64934b = str;
        this.f64935c = z10;
        this.f64936d = z11;
        this.f64937e = strArr;
        this.f64938f = iVarArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f64935c == dVar.f64935c && this.f64936d == dVar.f64936d && Objects.equals(this.f64934b, dVar.f64934b) && Arrays.equals(this.f64937e, dVar.f64937e) && Arrays.equals(this.f64938f, dVar.f64938f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + (this.f64935c ? 1 : 0)) * 31) + (this.f64936d ? 1 : 0)) * 31;
        String str = this.f64934b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }
}
