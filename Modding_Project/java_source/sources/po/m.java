package po;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.PrivFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: PrivFrame.java */
/* loaded from: classes8.dex */
public final class m extends i {

    /* renamed from: b  reason: collision with root package name */
    public final String f64961b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f64962c;

    public m(String str, byte[] bArr) {
        super(PrivFrame.ID);
        this.f64961b = str;
        this.f64962c = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (Objects.equals(this.f64961b, mVar.f64961b) && Arrays.equals(this.f64962c, mVar.f64962c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f64961b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31) + Arrays.hashCode(this.f64962c);
    }

    @Override // po.i
    public String toString() {
        return this.f64951a + ": owner=" + this.f64961b;
    }
}
