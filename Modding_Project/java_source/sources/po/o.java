package po;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
/* compiled from: UrlLinkFrame.java */
/* loaded from: classes8.dex */
public final class o extends i {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f64966b;

    /* renamed from: c  reason: collision with root package name */
    public final String f64967c;

    public o(String str, @Nullable String str2, String str3) {
        super(str);
        this.f64966b = str2;
        this.f64967c = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f64951a.equals(oVar.f64951a) && Objects.equals(this.f64966b, oVar.f64966b) && Objects.equals(this.f64967c, oVar.f64967c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f64951a.hashCode()) * 31;
        String str = this.f64966b;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str2 = this.f64967c;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    @Override // po.i
    public String toString() {
        return this.f64951a + ": url=" + this.f64967c;
    }
}
