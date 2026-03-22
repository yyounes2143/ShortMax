package oo;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
import zm.s;
import zm.t;
/* compiled from: IcyHeaders.java */
/* loaded from: classes8.dex */
public final class b implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final int f64330a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f64331b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f64332c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f64333d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f64334e;

    /* renamed from: f  reason: collision with root package name */
    public final int f64335f;

    public b(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z10, int i11) {
        boolean z11;
        if (i11 != -1 && i11 <= 0) {
            z11 = false;
        } else {
            z11 = true;
        }
        cn.a.a(z11);
        this.f64330a = i10;
        this.f64331b = str;
        this.f64332c = str2;
        this.f64333d = str3;
        this.f64334e = z10;
        this.f64335f = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static oo.b b(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r13) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: oo.b.b(java.util.Map):oo.b");
    }

    @Override // zm.t.a
    public void a(s.b bVar) {
        String str = this.f64332c;
        if (str != null) {
            bVar.m0(str);
        }
        String str2 = this.f64331b;
        if (str2 != null) {
            bVar.c0(str2);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f64330a == bVar.f64330a && Objects.equals(this.f64331b, bVar.f64331b) && Objects.equals(this.f64332c, bVar.f64332c) && Objects.equals(this.f64333d, bVar.f64333d) && this.f64334e == bVar.f64334e && this.f64335f == bVar.f64335f) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f64330a) * 31;
        String str = this.f64331b;
        int i13 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = (i12 + i10) * 31;
        String str2 = this.f64332c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        String str3 = this.f64333d;
        if (str3 != null) {
            i13 = str3.hashCode();
        }
        return ((((i15 + i13) * 31) + (this.f64334e ? 1 : 0)) * 31) + this.f64335f;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f64332c + "\", genre=\"" + this.f64331b + "\", bitrate=" + this.f64330a + ", metadataInterval=" + this.f64335f;
    }
}
