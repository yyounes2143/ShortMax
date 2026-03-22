package r5;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: DecoderReuseEvaluation.java */
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f65587a;

    /* renamed from: b  reason: collision with root package name */
    public final v0 f65588b;

    /* renamed from: c  reason: collision with root package name */
    public final v0 f65589c;

    /* renamed from: d  reason: collision with root package name */
    public final int f65590d;

    /* renamed from: e  reason: collision with root package name */
    public final int f65591e;

    public g(String str, v0 v0Var, v0 v0Var2, int i10, int i11) {
        boolean z10;
        if (i10 != 0 && i11 != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        b7.a.a(z10);
        this.f65587a = b7.a.d(str);
        this.f65588b = (v0) b7.a.e(v0Var);
        this.f65589c = (v0) b7.a.e(v0Var2);
        this.f65590d = i10;
        this.f65591e = i11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f65590d == gVar.f65590d && this.f65591e == gVar.f65591e && this.f65587a.equals(gVar.f65587a) && this.f65588b.equals(gVar.f65588b) && this.f65589c.equals(gVar.f65589c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f65590d) * 31) + this.f65591e) * 31) + this.f65587a.hashCode()) * 31) + this.f65588b.hashCode()) * 31) + this.f65589c.hashCode();
    }
}
