package po;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.InternalFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
/* compiled from: InternalFrame.java */
/* loaded from: classes8.dex */
public final class k extends i {

    /* renamed from: b  reason: collision with root package name */
    public final String f64953b;

    /* renamed from: c  reason: collision with root package name */
    public final String f64954c;

    /* renamed from: d  reason: collision with root package name */
    public final String f64955d;

    public k(String str, String str2, String str3) {
        super(InternalFrame.ID);
        this.f64953b = str;
        this.f64954c = str2;
        this.f64955d = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        if (Objects.equals(this.f64954c, kVar.f64954c) && Objects.equals(this.f64953b, kVar.f64953b) && Objects.equals(this.f64955d, kVar.f64955d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f64953b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
        String str2 = this.f64954c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f64955d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return i14 + i12;
    }

    @Override // po.i
    public String toString() {
        return this.f64951a + ": domain=" + this.f64953b + ", description=" + this.f64954c;
    }
}
