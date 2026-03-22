package b6;

import androidx.annotation.Nullable;
import b7.g0;
import java.nio.ByteBuffer;
import java.util.UUID;
/* compiled from: PsshAtomUtil.java */
/* loaded from: classes4.dex */
public final class l {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PsshAtomUtil.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final UUID f2380a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2381b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f2382c;

        public a(UUID uuid, int i10, byte[] bArr) {
            this.f2380a = uuid;
            this.f2381b = i10;
            this.f2382c = bArr;
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
    private static a d(byte[] bArr) {
        g0 g0Var = new g0(bArr);
        if (g0Var.f() < 32) {
            return null;
        }
        g0Var.P(0);
        if (g0Var.n() != g0Var.a() + 4 || g0Var.n() != 1886614376) {
            return null;
        }
        int c10 = b6.a.c(g0Var.n());
        if (c10 > 1) {
            b7.q.i("PsshAtomUtil", "Unsupported pssh version: " + c10);
            return null;
        }
        UUID uuid = new UUID(g0Var.w(), g0Var.w());
        if (c10 == 1) {
            g0Var.Q(g0Var.H() * 16);
        }
        int H = g0Var.H();
        if (H != g0Var.a()) {
            return null;
        }
        byte[] bArr2 = new byte[H];
        g0Var.j(bArr2, 0, H);
        return new a(uuid, c10, bArr2);
    }

    @Nullable
    public static byte[] e(byte[] bArr, UUID uuid) {
        a d10 = d(bArr);
        if (d10 == null) {
            return null;
        }
        if (uuid.equals(d10.f2380a)) {
            return d10.f2382c;
        }
        b7.q.i("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + d10.f2380a + ".");
        return null;
    }

    @Nullable
    public static UUID f(byte[] bArr) {
        a d10 = d(bArr);
        if (d10 != null) {
            return d10.f2380a;
        }
        return null;
    }

    public static int g(byte[] bArr) {
        a d10 = d(bArr);
        if (d10 != null) {
            return d10.f2381b;
        }
        return -1;
    }
}
