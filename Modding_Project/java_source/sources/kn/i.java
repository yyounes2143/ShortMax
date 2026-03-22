package kn;

import android.net.Uri;
import androidx.annotation.Nullable;
import cn.j0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: RangedUri.java */
/* loaded from: classes8.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final long f60851a;

    /* renamed from: b  reason: collision with root package name */
    public final long f60852b;

    /* renamed from: c  reason: collision with root package name */
    private final String f60853c;

    /* renamed from: d  reason: collision with root package name */
    private int f60854d;

    public i(@Nullable String str, long j10, long j11) {
        this.f60853c = str == null ? "" : str;
        this.f60851a = j10;
        this.f60852b = j11;
    }

    @Nullable
    public i a(@Nullable i iVar, String str) {
        String c10 = c(str);
        if (iVar != null && c10.equals(iVar.c(str))) {
            long j10 = this.f60852b;
            long j11 = -1;
            if (j10 != -1) {
                long j12 = this.f60851a;
                if (j12 + j10 == iVar.f60851a) {
                    long j13 = iVar.f60852b;
                    if (j13 != -1) {
                        j11 = j10 + j13;
                    }
                    return new i(c10, j12, j11);
                }
            }
            long j14 = iVar.f60852b;
            if (j14 != -1) {
                long j15 = iVar.f60851a;
                if (j15 + j14 == this.f60851a) {
                    if (j10 != -1) {
                        j11 = j14 + j10;
                    }
                    return new i(c10, j15, j11);
                }
            }
        }
        return null;
    }

    public Uri b(String str) {
        return j0.f(str, this.f60853c);
    }

    public String c(String str) {
        return j0.e(str, this.f60853c);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f60851a == iVar.f60851a && this.f60852b == iVar.f60852b && this.f60853c.equals(iVar.f60853c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f60854d == 0) {
            this.f60854d = ((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + ((int) this.f60851a)) * 31) + ((int) this.f60852b)) * 31) + this.f60853c.hashCode();
        }
        return this.f60854d;
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.f60853c + ", start=" + this.f60851a + ", length=" + this.f60852b + ")";
    }
}
