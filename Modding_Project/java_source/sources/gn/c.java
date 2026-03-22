package gn;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: DecoderReuseEvaluation.java */
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f52434a;

    /* renamed from: b  reason: collision with root package name */
    public final io.bidmachine.media3.common.a f52435b;

    /* renamed from: c  reason: collision with root package name */
    public final io.bidmachine.media3.common.a f52436c;

    /* renamed from: d  reason: collision with root package name */
    public final int f52437d;

    /* renamed from: e  reason: collision with root package name */
    public final int f52438e;

    public c(String str, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a aVar2, int i10, int i11) {
        boolean z10;
        if (i10 != 0 && i11 != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.a(z10);
        this.f52434a = cn.a.d(str);
        this.f52435b = (io.bidmachine.media3.common.a) cn.a.e(aVar);
        this.f52436c = (io.bidmachine.media3.common.a) cn.a.e(aVar2);
        this.f52437d = i10;
        this.f52438e = i11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f52437d == cVar.f52437d && this.f52438e == cVar.f52438e && this.f52434a.equals(cVar.f52434a) && this.f52435b.equals(cVar.f52435b) && this.f52436c.equals(cVar.f52436c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f52437d) * 31) + this.f52438e) * 31) + this.f52434a.hashCode()) * 31) + this.f52435b.hashCode()) * 31) + this.f52436c.hashCode();
    }
}
