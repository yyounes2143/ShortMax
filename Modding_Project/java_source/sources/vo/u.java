package vo;

import androidx.annotation.Nullable;
import ao.o0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
/* compiled from: TrackEncryptionBox.java */
/* loaded from: classes8.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f69335a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f69336b;

    /* renamed from: c  reason: collision with root package name */
    public final o0.a f69337c;

    /* renamed from: d  reason: collision with root package name */
    public final int f69338d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f69339e;

    public u(boolean z10, @Nullable String str, int i10, byte[] bArr, int i11, int i12, @Nullable byte[] bArr2) {
        boolean z11;
        if (i10 == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        cn.a.a((bArr2 == null) ^ z11);
        this.f69335a = z10;
        this.f69336b = str;
        this.f69338d = i10;
        this.f69339e = bArr2;
        this.f69337c = new o0.a(a(str), bArr, i11, i12);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(@Nullable String str) {
        if (str == null) {
            return 1;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C.CENC_TYPE_cbc1)) {
                    c10 = 0;
                    break;
                }
                break;
            case 3046671:
                if (str.equals(C.CENC_TYPE_cbcs)) {
                    c10 = 1;
                    break;
                }
                break;
            case 3049879:
                if (str.equals(C.CENC_TYPE_cenc)) {
                    c10 = 2;
                    break;
                }
                break;
            case 3049895:
                if (str.equals(C.CENC_TYPE_cens)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 2;
            case 2:
            case 3:
                break;
            default:
                cn.r.h("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                break;
        }
        return 1;
    }
}
