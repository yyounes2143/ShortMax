package io.bidmachine.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import en.g;
import io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager;
import java.util.List;
import java.util.Map;
/* compiled from: DrmUtil.java */
/* loaded from: classes8.dex */
public final class j {

    /* compiled from: DrmUtil.java */
    @RequiresApi(23)
    /* loaded from: classes8.dex */
    private static final class a {
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof MediaDrmResetException;
        }
    }

    public static byte[] a(en.d dVar, String str, @Nullable byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        en.n nVar = new en.n(dVar);
        en.g a10 = new g.b().j(str).e(map).d(2).c(bArr).b(1).a();
        int i10 = 0;
        en.g gVar = a10;
        while (true) {
            try {
                en.e eVar = new en.e(nVar, gVar);
                try {
                    byte[] b10 = i7.a.b(eVar);
                    m0.m(eVar);
                    return b10;
                } catch (HttpDataSource$InvalidResponseCodeException e10) {
                    String c10 = c(e10, i10);
                    if (c10 != null) {
                        i10++;
                        gVar = gVar.a().j(c10).a();
                        m0.m(eVar);
                    } else {
                        throw e10;
                    }
                }
            } catch (Exception e11) {
                throw new MediaDrmCallbackException(a10, nVar.e(), nVar.getResponseHeaders(), nVar.d(), e11);
            }
        }
    }

    public static int b(Throwable th2, int i10) {
        if (th2 instanceof MediaDrm.MediaDrmStateException) {
            return m0.b0(m0.c0(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo()));
        }
        if (m0.f3614a >= 23 && a.a(th2)) {
            return AuthCode.StatusCode.PERMISSION_EXPIRED;
        }
        if ((th2 instanceof NotProvisionedException) || d(th2)) {
            return 6002;
        }
        if (th2 instanceof DeniedByServerException) {
            return 6007;
        }
        if (th2 instanceof UnsupportedDrmException) {
            return 6001;
        }
        if (th2 instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return 6003;
        }
        if (th2 instanceof KeysExpiredException) {
            return 6008;
        }
        if (i10 == 1) {
            return AuthCode.StatusCode.PERMISSION_EXPIRED;
        }
        if (i10 == 2) {
            return AuthCode.StatusCode.PERMISSION_NOT_EXIST;
        }
        if (i10 == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }

    @Nullable
    private static String c(HttpDataSource$InvalidResponseCodeException httpDataSource$InvalidResponseCodeException, int i10) {
        Map<String, List<String>> map;
        List<String> list;
        int i11 = httpDataSource$InvalidResponseCodeException.f55324d;
        if ((i11 != 307 && i11 != 308) || i10 >= 5 || (map = httpDataSource$InvalidResponseCodeException.f55326f) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static boolean d(@Nullable Throwable th2) {
        if (m0.f3614a == 34 && (th2 instanceof NoSuchMethodError) && th2.getMessage() != null && th2.getMessage().contains("Landroid/media/NotProvisionedException;.<init>(")) {
            return true;
        }
        return false;
    }

    public static boolean e(@Nullable Throwable th2) {
        if (m0.f3614a == 34 && (th2 instanceof NoSuchMethodError) && th2.getMessage() != null && th2.getMessage().contains("Landroid/media/ResourceBusyException;.<init>(")) {
            return true;
        }
        return false;
    }
}
