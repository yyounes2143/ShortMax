package s5;

import b7.s0;
import java.util.UUID;
/* compiled from: FrameworkCryptoConfig.java */
/* loaded from: classes4.dex */
public final class l implements r5.b {

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f66322d;

    /* renamed from: a  reason: collision with root package name */
    public final UUID f66323a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f66324b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f66325c;

    static {
        boolean z10;
        if ("Amazon".equals(s0.f2508c)) {
            String str = s0.f2509d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
                f66322d = z10;
            }
        }
        z10 = false;
        f66322d = z10;
    }

    public l(UUID uuid, byte[] bArr, boolean z10) {
        this.f66323a = uuid;
        this.f66324b = bArr;
        this.f66325c = z10;
    }
}
