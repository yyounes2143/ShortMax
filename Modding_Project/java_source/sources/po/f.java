package po;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.GeobFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: GeobFrame.java */
/* loaded from: classes8.dex */
public final class f extends i {

    /* renamed from: b  reason: collision with root package name */
    public final String f64942b;

    /* renamed from: c  reason: collision with root package name */
    public final String f64943c;

    /* renamed from: d  reason: collision with root package name */
    public final String f64944d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f64945e;

    public f(String str, String str2, String str3, byte[] bArr) {
        super(GeobFrame.ID);
        this.f64942b = str;
        this.f64943c = str2;
        this.f64944d = str3;
        this.f64945e = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (Objects.equals(this.f64942b, fVar.f64942b) && Objects.equals(this.f64943c, fVar.f64943c) && Objects.equals(this.f64944d, fVar.f64944d) && Arrays.equals(this.f64945e, fVar.f64945e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f64942b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
        String str2 = this.f64943c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f64944d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return ((i14 + i12) * 31) + Arrays.hashCode(this.f64945e);
    }

    @Override // po.i
    public String toString() {
        return this.f64951a + ": mimeType=" + this.f64942b + ", filename=" + this.f64943c + ", description=" + this.f64944d;
    }
}
