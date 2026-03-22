package ln;

import android.os.Build;
import java.util.UUID;
/* compiled from: FrameworkCryptoConfig.java */
/* loaded from: classes8.dex */
public final class l implements fn.b {

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f62283d;

    /* renamed from: a  reason: collision with root package name */
    public final UUID f62284a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f62285b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public final boolean f62286c;

    static {
        boolean z10;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
                f62283d = z10;
            }
        }
        z10 = false;
        f62283d = z10;
    }

    public l(UUID uuid, byte[] bArr) {
        this(uuid, bArr, false);
    }

    @Deprecated
    public l(UUID uuid, byte[] bArr, boolean z10) {
        this.f62284a = uuid;
        this.f62285b = bArr;
        this.f62286c = z10;
    }
}
