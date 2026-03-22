package vo;

import androidx.annotation.Nullable;
import cn.b0;
import java.nio.ByteBuffer;
import java.util.UUID;
/* compiled from: PsshAtomUtil.java */
/* loaded from: classes8.dex */
public final class p {

    /* compiled from: PsshAtomUtil.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f69310a;

        /* renamed from: b  reason: collision with root package name */
        public final int f69311b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f69312c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final UUID[] f69313d;

        a(UUID uuid, int i10, byte[] bArr, @Nullable UUID[] uuidArr) {
            this.f69310a = uuid;
            this.f69311b = i10;
            this.f69312c = bArr;
            this.f69313d = uuidArr;
        }
    }

    public static byte[] a(UUID uuid, @Nullable byte[] bArr) {
        return b(uuid, null, bArr);
    }

    public static byte[] b(UUID uuid, @Nullable UUID[] uuidArr, @Nullable byte[] bArr) {
        int i10;
        int i11;
        if (bArr != null) {
            i10 = bArr.length;
        } else {
            i10 = 0;
        }
        int i12 = i10 + 32;
        if (uuidArr != null) {
            i12 += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i12);
        allocate.putInt(i12);
        allocate.putInt(1886614376);
        if (uuidArr != null) {
            i11 = 16777216;
        } else {
            i11 = 0;
        }
        allocate.putInt(i11);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        } else {
            allocate.putInt(0);
        }
        return allocate.array();
    }

    public static boolean c(byte[] bArr) {
        if (d(bArr) != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public static a d(byte[] bArr) {
        UUID[] uuidArr;
        b0 b0Var = new b0(bArr);
        if (b0Var.g() < 32) {
            return null;
        }
        b0Var.W(0);
        int a10 = b0Var.a();
        int q10 = b0Var.q();
        if (q10 != a10) {
            cn.r.h("PsshAtomUtil", "Advertised atom size (" + q10 + ") does not match buffer size: " + a10);
            return null;
        }
        int q11 = b0Var.q();
        if (q11 != 1886614376) {
            cn.r.h("PsshAtomUtil", "Atom type is not pssh: " + q11);
            return null;
        }
        int p10 = b.p(b0Var.q());
        if (p10 > 1) {
            cn.r.h("PsshAtomUtil", "Unsupported pssh version: " + p10);
            return null;
        }
        UUID uuid = new UUID(b0Var.A(), b0Var.A());
        if (p10 == 1) {
            int L = b0Var.L();
            uuidArr = new UUID[L];
            for (int i10 = 0; i10 < L; i10++) {
                uuidArr[i10] = new UUID(b0Var.A(), b0Var.A());
            }
        } else {
            uuidArr = null;
        }
        int L2 = b0Var.L();
        int a11 = b0Var.a();
        if (L2 != a11) {
            cn.r.h("PsshAtomUtil", "Atom data size (" + L2 + ") does not match the bytes left: " + a11);
            return null;
        }
        byte[] bArr2 = new byte[L2];
        b0Var.l(bArr2, 0, L2);
        return new a(uuid, p10, bArr2, uuidArr);
    }

    @Nullable
    public static byte[] e(byte[] bArr, UUID uuid) {
        a d10 = d(bArr);
        if (d10 == null) {
            return null;
        }
        if (!uuid.equals(d10.f69310a)) {
            cn.r.h("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + d10.f69310a + ".");
            return null;
        }
        return d10.f69312c;
    }

    @Nullable
    public static UUID f(byte[] bArr) {
        a d10 = d(bArr);
        if (d10 == null) {
            return null;
        }
        return d10.f69310a;
    }

    public static int g(byte[] bArr) {
        a d10 = d(bArr);
        if (d10 == null) {
            return -1;
        }
        return d10.f69311b;
    }
}
