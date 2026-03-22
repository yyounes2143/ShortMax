package po;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ApicFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
import zm.s;
/* compiled from: ApicFrame.java */
/* loaded from: classes8.dex */
public final class a extends i {

    /* renamed from: b  reason: collision with root package name */
    public final String f64923b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f64924c;

    /* renamed from: d  reason: collision with root package name */
    public final int f64925d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f64926e;

    public a(String str, @Nullable String str2, int i10, byte[] bArr) {
        super(ApicFrame.ID);
        this.f64923b = str;
        this.f64924c = str2;
        this.f64925d = i10;
        this.f64926e = bArr;
    }

    @Override // zm.t.a
    public void a(s.b bVar) {
        bVar.K(this.f64926e, this.f64925d);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f64925d == aVar.f64925d && Objects.equals(this.f64923b, aVar.f64923b) && Objects.equals(this.f64924c, aVar.f64924c) && Arrays.equals(this.f64926e, aVar.f64926e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f64925d) * 31;
        String str = this.f64923b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (i11 + i10) * 31;
        String str2 = this.f64924c;
        if (str2 != null) {
            i12 = str2.hashCode();
        }
        return ((i13 + i12) * 31) + Arrays.hashCode(this.f64926e);
    }

    @Override // po.i
    public String toString() {
        return this.f64951a + ": mimeType=" + this.f64923b + ", description=" + this.f64924c;
    }
}
