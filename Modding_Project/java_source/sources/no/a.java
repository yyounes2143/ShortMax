package no;

import androidx.annotation.Nullable;
import cn.b0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import zm.s;
import zm.t;
import zm.u;
/* compiled from: PictureFrame.java */
/* loaded from: classes8.dex */
public final class a implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final int f62987a;

    /* renamed from: b  reason: collision with root package name */
    public final String f62988b;

    /* renamed from: c  reason: collision with root package name */
    public final String f62989c;

    /* renamed from: d  reason: collision with root package name */
    public final int f62990d;

    /* renamed from: e  reason: collision with root package name */
    public final int f62991e;

    /* renamed from: f  reason: collision with root package name */
    public final int f62992f;

    /* renamed from: g  reason: collision with root package name */
    public final int f62993g;

    /* renamed from: h  reason: collision with root package name */
    public final byte[] f62994h;

    public a(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.f62987a = i10;
        this.f62988b = str;
        this.f62989c = str2;
        this.f62990d = i11;
        this.f62991e = i12;
        this.f62992f = i13;
        this.f62993g = i14;
        this.f62994h = bArr;
    }

    public static a b(b0 b0Var) {
        int q10 = b0Var.q();
        String u10 = u.u(b0Var.F(b0Var.q(), StandardCharsets.US_ASCII));
        String E = b0Var.E(b0Var.q());
        int q11 = b0Var.q();
        int q12 = b0Var.q();
        int q13 = b0Var.q();
        int q14 = b0Var.q();
        int q15 = b0Var.q();
        byte[] bArr = new byte[q15];
        b0Var.l(bArr, 0, q15);
        return new a(q10, u10, E, q11, q12, q13, q14, bArr);
    }

    @Override // zm.t.a
    public void a(s.b bVar) {
        bVar.K(this.f62994h, this.f62987a);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f62987a == aVar.f62987a && this.f62988b.equals(aVar.f62988b) && this.f62989c.equals(aVar.f62989c) && this.f62990d == aVar.f62990d && this.f62991e == aVar.f62991e && this.f62992f == aVar.f62992f && this.f62993g == aVar.f62993g && Arrays.equals(this.f62994h, aVar.f62994h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f62987a) * 31) + this.f62988b.hashCode()) * 31) + this.f62989c.hashCode()) * 31) + this.f62990d) * 31) + this.f62991e) * 31) + this.f62992f) * 31) + this.f62993g) * 31) + Arrays.hashCode(this.f62994h);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f62988b + ", description=" + this.f62989c;
    }
}
