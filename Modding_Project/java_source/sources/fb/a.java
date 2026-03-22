package fb;

import android.content.Context;
import android.content.res.AssetManager;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.huawei.hms.framework.network.grs.GrsApp;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import nb.c;
import nb.e;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final HostnameVerifier f51694a = new ob.a();

    public static HostnameVerifier a() {
        return f51694a;
    }

    public static SSLSocketFactory b(Context context) {
        try {
            AssetManager assets = context.getAssets();
            return new c(new e(assets.open(GrsApp.getInstance().getBrand(DomExceptionUtils.SEPARATOR) + "grs_sp.bks"), ""));
        } catch (IOException | KeyManagementException | NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }
}
