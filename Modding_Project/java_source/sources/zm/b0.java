package zm;

import androidx.annotation.Nullable;
import cn.m0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* compiled from: TrackGroup.java */
/* loaded from: classes8.dex */
public final class b0 {

    /* renamed from: f  reason: collision with root package name */
    private static final String f71807f = m0.C0(0);

    /* renamed from: g  reason: collision with root package name */
    private static final String f71808g = m0.C0(1);

    /* renamed from: a  reason: collision with root package name */
    public final int f71809a;

    /* renamed from: b  reason: collision with root package name */
    public final String f71810b;

    /* renamed from: c  reason: collision with root package name */
    public final int f71811c;

    /* renamed from: d  reason: collision with root package name */
    private final io.bidmachine.media3.common.a[] f71812d;

    /* renamed from: e  reason: collision with root package name */
    private int f71813e;

    public b0(io.bidmachine.media3.common.a... aVarArr) {
        this("", aVarArr);
    }

    private static void c(String str, @Nullable String str2, @Nullable String str3, int i10) {
        cn.r.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    private static String d(@Nullable String str) {
        if (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) {
            return "";
        }
        return str;
    }

    private static int e(int i10) {
        return i10 | 16384;
    }

    private void f() {
        String d10 = d(this.f71812d[0].f55163d);
        int e10 = e(this.f71812d[0].f55165f);
        int i10 = 1;
        while (true) {
            io.bidmachine.media3.common.a[] aVarArr = this.f71812d;
            if (i10 < aVarArr.length) {
                if (!d10.equals(d(aVarArr[i10].f55163d))) {
                    io.bidmachine.media3.common.a[] aVarArr2 = this.f71812d;
                    c("languages", aVarArr2[0].f55163d, aVarArr2[i10].f55163d, i10);
                    return;
                } else if (e10 != e(this.f71812d[i10].f55165f)) {
                    c("role flags", Integer.toBinaryString(this.f71812d[0].f55165f), Integer.toBinaryString(this.f71812d[i10].f55165f), i10);
                    return;
                } else {
                    i10++;
                }
            } else {
                return;
            }
        }
    }

    public io.bidmachine.media3.common.a a(int i10) {
        return this.f71812d[i10];
    }

    public int b(io.bidmachine.media3.common.a aVar) {
        int i10 = 0;
        while (true) {
            io.bidmachine.media3.common.a[] aVarArr = this.f71812d;
            if (i10 < aVarArr.length) {
                if (aVar == aVarArr[i10]) {
                    return i10;
                }
                i10++;
            } else {
                return -1;
            }
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        b0 b0Var = (b0) obj;
        if (this.f71810b.equals(b0Var.f71810b) && Arrays.equals(this.f71812d, b0Var.f71812d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f71813e == 0) {
            this.f71813e = ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f71810b.hashCode()) * 31) + Arrays.hashCode(this.f71812d);
        }
        return this.f71813e;
    }

    public String toString() {
        return this.f71810b + ": " + Arrays.toString(this.f71812d);
    }

    public b0(String str, io.bidmachine.media3.common.a... aVarArr) {
        cn.a.a(aVarArr.length > 0);
        this.f71810b = str;
        this.f71812d = aVarArr;
        this.f71809a = aVarArr.length;
        int k10 = u.k(aVarArr[0].f55174o);
        this.f71811c = k10 == -1 ? u.k(aVarArr[0].f55173n) : k10;
        f();
    }
}
