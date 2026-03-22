package po;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.CommentFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
/* compiled from: CommentFrame.java */
/* loaded from: classes8.dex */
public final class e extends i {

    /* renamed from: b  reason: collision with root package name */
    public final String f64939b;

    /* renamed from: c  reason: collision with root package name */
    public final String f64940c;

    /* renamed from: d  reason: collision with root package name */
    public final String f64941d;

    public e(String str, String str2, String str3) {
        super(CommentFrame.ID);
        this.f64939b = str;
        this.f64940c = str2;
        this.f64941d = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (Objects.equals(this.f64940c, eVar.f64940c) && Objects.equals(this.f64939b, eVar.f64939b) && Objects.equals(this.f64941d, eVar.f64941d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f64939b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
        String str2 = this.f64940c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f64941d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return i14 + i12;
    }

    @Override // po.i
    public String toString() {
        return this.f64951a + ": language=" + this.f64939b + ", description=" + this.f64940c + ", text=" + this.f64941d;
    }
}
