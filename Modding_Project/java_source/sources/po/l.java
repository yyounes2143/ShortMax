package po;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* compiled from: MlltFrame.java */
/* loaded from: classes8.dex */
public final class l extends i {

    /* renamed from: b  reason: collision with root package name */
    public final int f64956b;

    /* renamed from: c  reason: collision with root package name */
    public final int f64957c;

    /* renamed from: d  reason: collision with root package name */
    public final int f64958d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f64959e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f64960f;

    public l(int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f64956b = i10;
        this.f64957c = i11;
        this.f64958d = i12;
        this.f64959e = iArr;
        this.f64960f = iArr2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f64956b == lVar.f64956b && this.f64957c == lVar.f64957c && this.f64958d == lVar.f64958d && Arrays.equals(this.f64959e, lVar.f64959e) && Arrays.equals(this.f64960f, lVar.f64960f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f64956b) * 31) + this.f64957c) * 31) + this.f64958d) * 31) + Arrays.hashCode(this.f64959e)) * 31) + Arrays.hashCode(this.f64960f);
    }
}
