package p9;
/* compiled from: Encoder.java */
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f64826a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private static int[] a(q9.a aVar, int i10, int i11) {
        int i12;
        int[] iArr = new int[i11];
        int i13 = aVar.i() / i10;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = 0;
            for (int i16 = 0; i16 < i10; i16++) {
                if (aVar.g((i14 * i10) + i16)) {
                    i12 = 1 << ((i10 - i16) - 1);
                } else {
                    i12 = 0;
                }
                i15 |= i12;
            }
            iArr[i14] = i15;
        }
        return iArr;
    }

    private static void b(q9.b bVar, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12 += 2) {
            int i13 = i10 - i12;
            int i14 = i13;
            while (true) {
                int i15 = i10 + i12;
                if (i14 <= i15) {
                    bVar.h(i14, i13);
                    bVar.h(i14, i15);
                    bVar.h(i13, i14);
                    bVar.h(i15, i14);
                    i14++;
                }
            }
        }
        int i16 = i10 - i11;
        bVar.h(i16, i16);
        int i17 = i16 + 1;
        bVar.h(i17, i16);
        bVar.h(i16, i17);
        int i18 = i10 + i11;
        bVar.h(i18, i16);
        bVar.h(i18, i17);
        bVar.h(i18, i18 - 1);
    }

    private static void c(q9.b bVar, boolean z10, int i10, q9.a aVar) {
        int i11 = i10 / 2;
        int i12 = 0;
        if (z10) {
            while (i12 < 7) {
                int i13 = (i11 - 3) + i12;
                if (aVar.g(i12)) {
                    bVar.h(i13, i11 - 5);
                }
                if (aVar.g(i12 + 7)) {
                    bVar.h(i11 + 5, i13);
                }
                if (aVar.g(20 - i12)) {
                    bVar.h(i13, i11 + 5);
                }
                if (aVar.g(27 - i12)) {
                    bVar.h(i11 - 5, i13);
                }
                i12++;
            }
            return;
        }
        while (i12 < 10) {
            int i14 = (i11 - 5) + i12 + (i12 / 5);
            if (aVar.g(i12)) {
                bVar.h(i14, i11 - 7);
            }
            if (aVar.g(i12 + 10)) {
                bVar.h(i11 + 7, i14);
            }
            if (aVar.g(29 - i12)) {
                bVar.h(i14, i11 + 7);
            }
            if (aVar.g(39 - i12)) {
                bVar.h(i11 - 7, i14);
            }
            i12++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static a d(byte[] bArr, int i10, int i11) {
        boolean z10;
        int i12;
        q9.a aVar;
        int i13;
        boolean z11;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        q9.a a10 = new d(bArr).a();
        int i19 = 11;
        int i20 = ((a10.i() * i10) / 100) + 11;
        int i21 = a10.i() + i20;
        int i22 = 32;
        int i23 = 1;
        if (i11 != 0) {
            if (i11 < 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            i14 = Math.abs(i11);
            if (z11) {
                i22 = 4;
            }
            if (i14 <= i22) {
                i15 = i(i14, z11);
                i13 = f64826a[i14];
                int i24 = i15 - (i15 % i13);
                aVar = h(a10, i13);
                if (aVar.i() + i20 <= i24) {
                    if (z11 && aVar.i() > (i13 << 6)) {
                        throw new IllegalArgumentException("Data to large for user specified layer");
                    }
                } else {
                    throw new IllegalArgumentException("Data to large for user specified layer");
                }
            } else {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i11)));
            }
        } else {
            q9.a aVar2 = null;
            int i25 = 0;
            int i26 = 0;
            while (i25 <= 32) {
                if (i25 <= 3) {
                    z10 = i23;
                } else {
                    z10 = false;
                }
                if (z10) {
                    i12 = i25 + 1;
                } else {
                    i12 = i25;
                }
                int i27 = i(i12, z10);
                if (i21 <= i27) {
                    if (aVar2 == null || i26 != f64826a[i12]) {
                        int i28 = f64826a[i12];
                        i26 = i28;
                        aVar2 = h(a10, i28);
                    }
                    int i29 = i27 - (i27 % i26);
                    if ((!z10 || aVar2.i() <= (i26 << 6)) && aVar2.i() + i20 <= i29) {
                        aVar = aVar2;
                        i13 = i26;
                        z11 = z10;
                        i14 = i12;
                        i15 = i27;
                    }
                }
                i25++;
                i23 = i23;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        q9.a e10 = e(aVar, i15, i13);
        int i30 = aVar.i() / i13;
        q9.a f10 = f(z11, i14, i30);
        if (!z11) {
            i19 = 14;
        }
        int i31 = i19 + (i14 << 2);
        int[] iArr = new int[i31];
        int i32 = 2;
        if (z11) {
            for (int i33 = 0; i33 < i31; i33++) {
                iArr[i33] = i33;
            }
            i16 = i31;
        } else {
            int i34 = i31 / 2;
            i16 = i31 + 1 + (((i34 - 1) / 15) * 2);
            int i35 = i16 / 2;
            for (int i36 = 0; i36 < i34; i36++) {
                iArr[(i34 - i36) - i23] = (i35 - i17) - 1;
                iArr[i34 + i36] = (i36 / 15) + i36 + i35 + i23;
            }
        }
        q9.b bVar = new q9.b(i16);
        int i37 = 0;
        int i38 = 0;
        while (i37 < i14) {
            int i39 = (i14 - i37) << i32;
            if (z11) {
                i18 = 9;
            } else {
                i18 = 12;
            }
            int i40 = i39 + i18;
            int i41 = 0;
            while (i41 < i40) {
                int i42 = i41 << 1;
                int i43 = 0;
                while (i43 < i32) {
                    if (e10.g(i38 + i42 + i43)) {
                        int i44 = i37 << 1;
                        bVar.h(iArr[i44 + i43], iArr[i44 + i41]);
                    }
                    if (e10.g((i40 << 1) + i38 + i42 + i43)) {
                        int i45 = i37 << 1;
                        bVar.h(iArr[i45 + i41], iArr[((i31 - 1) - i45) - i43]);
                    }
                    if (e10.g((i40 << 2) + i38 + i42 + i43)) {
                        int i46 = (i31 - 1) - (i37 << 1);
                        bVar.h(iArr[i46 - i43], iArr[i46 - i41]);
                    }
                    if (e10.g((i40 * 6) + i38 + i42 + i43)) {
                        int i47 = i37 << 1;
                        bVar.h(iArr[((i31 - 1) - i47) - i41], iArr[i47 + i43]);
                    }
                    i43++;
                    i32 = 2;
                }
                i41++;
                i32 = 2;
            }
            i38 += i40 << 3;
            i37++;
            i32 = 2;
        }
        c(bVar, z11, i16, f10);
        if (z11) {
            b(bVar, i16 / 2, 5);
        } else {
            int i48 = i16 / 2;
            b(bVar, i48, 7);
            int i49 = 0;
            int i50 = 0;
            while (i50 < (i31 / 2) - 1) {
                for (int i51 = i48 & 1; i51 < i16; i51 += 2) {
                    int i52 = i48 - i49;
                    bVar.h(i52, i51);
                    int i53 = i48 + i49;
                    bVar.h(i53, i51);
                    bVar.h(i51, i52);
                    bVar.h(i51, i53);
                }
                i50 += 15;
                i49 += 16;
            }
        }
        a aVar3 = new a();
        aVar3.c(z11);
        aVar3.f(i16);
        aVar3.d(i14);
        aVar3.b(i30);
        aVar3.e(bVar);
        return aVar3;
    }

    private static q9.a e(q9.a aVar, int i10, int i11) {
        r9.c cVar = new r9.c(g(i11));
        int i12 = i10 / i11;
        int[] a10 = a(aVar, i11, i12);
        cVar.b(a10, i12 - (aVar.i() / i11));
        q9.a aVar2 = new q9.a();
        aVar2.c(0, i10 % i11);
        for (int i13 : a10) {
            aVar2.c(i13, i11);
        }
        return aVar2;
    }

    static q9.a f(boolean z10, int i10, int i11) {
        q9.a aVar = new q9.a();
        if (z10) {
            aVar.c(i10 - 1, 2);
            aVar.c(i11 - 1, 6);
            return e(aVar, 28, 4);
        }
        aVar.c(i10 - 1, 5);
        aVar.c(i11 - 1, 11);
        return e(aVar, 40, 4);
    }

    private static r9.a g(int i10) {
        if (i10 != 4) {
            if (i10 != 6) {
                if (i10 != 8) {
                    if (i10 != 10) {
                        if (i10 == 12) {
                            return r9.a.f65690h;
                        }
                        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i10)));
                    }
                    return r9.a.f65691i;
                }
                return r9.a.f65696n;
            }
            return r9.a.f65692j;
        }
        return r9.a.f65693k;
    }

    static q9.a h(q9.a aVar, int i10) {
        q9.a aVar2 = new q9.a();
        int i11 = aVar.i();
        int i12 = (1 << i10) - 2;
        int i13 = 0;
        while (i13 < i11) {
            int i14 = 0;
            for (int i15 = 0; i15 < i10; i15++) {
                int i16 = i13 + i15;
                if (i16 >= i11 || aVar.g(i16)) {
                    i14 |= 1 << ((i10 - 1) - i15);
                }
            }
            int i17 = i14 & i12;
            if (i17 == i12) {
                aVar2.c(i17, i10);
            } else if (i17 == 0) {
                aVar2.c(i14 | 1, i10);
            } else {
                aVar2.c(i14, i10);
                i13 += i10;
            }
            i13--;
            i13 += i10;
        }
        return aVar2;
    }

    private static int i(int i10, boolean z10) {
        int i11;
        if (z10) {
            i11 = 88;
        } else {
            i11 = 112;
        }
        return (i11 + (i10 << 4)) * i10;
    }
}
