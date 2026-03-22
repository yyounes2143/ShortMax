package com.pgl.ssdk;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes6.dex */
public class d {

    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final long f36737a;

        /* renamed from: b  reason: collision with root package name */
        private final q f36738b;

        public a(long j10, q qVar) {
            this.f36737a = j10;
            this.f36738b = qVar;
        }

        public q a() {
            return this.f36738b;
        }

        public long b() {
            return this.f36737a;
        }
    }

    public static t a(q qVar) throws IOException, s {
        o<ByteBuffer, Long> a10 = p.a(qVar);
        if (a10 != null) {
            ByteBuffer a11 = a10.a();
            long longValue = a10.b().longValue();
            a11.order(ByteOrder.LITTLE_ENDIAN);
            long c10 = p.c(a11);
            if (c10 <= longValue) {
                long d10 = p.d(a11);
                long j10 = c10 + d10;
                if (j10 <= longValue) {
                    return new t(c10, d10, p.e(a11), longValue, a11);
                }
                throw new s("ZIP Central Directory overlaps with End of Central Directory. CD end: " + j10 + ", EoCD start: " + longValue);
            }
            throw new s("ZIP Central Directory start offset out of range: " + c10 + ". ZIP End of Central Directory offset: " + longValue);
        }
        throw new s("ZIP End of Central Directory record not found");
    }

    public static a a(q qVar, t tVar) throws IOException, b {
        long a10 = tVar.a();
        long c10 = tVar.c() + a10;
        long e10 = tVar.e();
        if (c10 != e10) {
            throw new b("ZIP Central Directory is not immediately followed by End of Central Directory. CD end: " + c10 + ", EoCD start: " + e10);
        } else if (a10 >= 32) {
            ByteBuffer a11 = qVar.a(a10 - 24, 24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            a11.order(byteOrder);
            if (a11.getLong(8) == 2334950737559900225L && a11.getLong(16) == 3617552046287187010L) {
                long j10 = a11.getLong(0);
                if (j10 < a11.capacity() || j10 > 2147483639) {
                    throw new b("APK Signing Block size out of range: ".concat(String.valueOf(j10)));
                }
                long j11 = (int) (8 + j10);
                long j12 = a10 - j11;
                if (j12 >= 0) {
                    ByteBuffer a12 = qVar.a(j12, 8);
                    a12.order(byteOrder);
                    long j13 = a12.getLong(0);
                    if (j13 == j10) {
                        return new a(j12, qVar.a(j12, j11));
                    }
                    throw new b("APK Signing Block sizes in header and footer do not match: " + j13 + " vs " + j10);
                }
                throw new b("APK Signing Block offset out of range: ".concat(String.valueOf(j12)));
            }
            throw new b("No APK Signing Block before ZIP Central Directory");
        } else {
            throw new b("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(a10)));
        }
    }
}
