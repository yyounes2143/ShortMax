package qa;

import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.SecretKey;
/* loaded from: classes5.dex */
public class g implements pa.d {

    /* renamed from: a  reason: collision with root package name */
    private SecretKey f65267a;

    /* renamed from: b  reason: collision with root package name */
    private final e f65268b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f65269c = false;

    public g(e eVar) {
        this.f65268b = eVar;
    }

    private void b() {
        try {
            this.f65267a = k.a(this.f65268b);
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException unused) {
            Log.e("AGC_LocalResource", "Exception when reading the 'K&I' for 'Config'.");
            this.f65267a = null;
        }
        this.f65269c = true;
    }

    @Override // pa.d
    public String a(String str, String str2) {
        if (!this.f65269c) {
            b();
        }
        if (this.f65267a != null && !TextUtils.isEmpty(str)) {
            try {
                return new String(k.b(this.f65267a, a.b(str)), "UTF-8");
            } catch (UnsupportedEncodingException | IllegalArgumentException | GeneralSecurityException e10) {
                Log.e("AGC_LocalResource", "decrypt exception:" + e10.getMessage());
            }
        }
        return str2;
    }
}
