package qa;

import android.content.Context;
import android.util.Log;
/* loaded from: classes5.dex */
public class h implements pa.b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f65270a;

    /* renamed from: b  reason: collision with root package name */
    private final String f65271b;

    /* renamed from: c  reason: collision with root package name */
    private pa.d f65272c;

    public h(Context context, String str) {
        Log.d("AGC_FixedDecrypt", "init");
        this.f65270a = context;
        this.f65271b = str;
    }

    @Override // pa.b
    public String a(String str, String str2) {
        if (this.f65272c == null) {
            this.f65272c = b();
        }
        return this.f65272c.a(m.b(this.f65270a, this.f65271b, "agc_", str), str2);
    }

    public pa.d b() {
        return new g(new e(m.b(this.f65270a, this.f65271b, "agc_", "/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138"), m.b(this.f65270a, this.f65271b, "agc_", "/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C"), m.b(this.f65270a, this.f65271b, "agc_", "/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B"), m.b(this.f65270a, this.f65271b, "agc_", "/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD"), "PBKDF2WithHmacSHA1", 5000));
    }
}
