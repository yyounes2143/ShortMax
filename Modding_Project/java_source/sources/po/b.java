package po;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* compiled from: BinaryFrame.java */
/* loaded from: classes8.dex */
public final class b extends i {

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f64927b;

    public b(String str, byte[] bArr) {
        super(str);
        this.f64927b = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f64951a.equals(bVar.f64951a) && Arrays.equals(this.f64927b, bVar.f64927b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f64951a.hashCode()) * 31) + Arrays.hashCode(this.f64927b);
    }
}
