package com.facebook.soloader;

import com.applovin.shadow.okhttp3.internal.ws.WebSocketProtocol;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedByInterruptException;
/* loaded from: classes2.dex */
public final class MinElf {

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class ElfError extends UnsatisfiedLinkError {
        ElfError(String str) {
            super(str);
        }
    }

    public static String[] a(h hVar) throws IOException {
        if (hVar instanceof i) {
            return c((i) hVar);
        }
        return b(hVar);
    }

    private static String[] b(h hVar) throws IOException {
        long g10;
        long d10;
        long f10;
        long j10;
        long j11;
        long d11;
        String str;
        long d12;
        long j12;
        long j13;
        long j14;
        long j15;
        long d13;
        String str2;
        long j16;
        long d14;
        long g11;
        long j17;
        long d15;
        long d16;
        long d17;
        long g12;
        long d18;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (g(hVar, allocate, 0L) == 1179403647) {
            boolean z10 = true;
            if (h(hVar, allocate, 4L) != 1) {
                z10 = false;
            }
            if (h(hVar, allocate, 5L) == 2) {
                allocate.order(ByteOrder.BIG_ENDIAN);
            }
            if (z10) {
                d10 = g(hVar, allocate, 28L);
            } else {
                d10 = d(hVar, allocate, 32L);
            }
            if (z10) {
                f10 = f(hVar, allocate, 44L);
            } else {
                f10 = f(hVar, allocate, 56L);
            }
            if (z10) {
                j10 = 42;
            } else {
                j10 = 54;
            }
            int f11 = f(hVar, allocate, j10);
            if (f10 == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                if (z10) {
                    d18 = g(hVar, allocate, 32L);
                } else {
                    d18 = d(hVar, allocate, 40L);
                }
                if (z10) {
                    f10 = g(hVar, allocate, d18 + 28);
                } else {
                    f10 = g(hVar, allocate, d18 + 44);
                }
            }
            long j18 = d10;
            long j19 = 0;
            while (true) {
                if (j19 < f10) {
                    if (z10) {
                        g12 = g(hVar, allocate, j18);
                    } else {
                        g12 = g(hVar, allocate, j18);
                    }
                    if (g12 == 2) {
                        if (z10) {
                            j11 = g(hVar, allocate, j18 + 4);
                        } else {
                            j11 = d(hVar, allocate, j18 + 8);
                        }
                    } else {
                        j18 += f11;
                        j19++;
                    }
                } else {
                    j11 = 0;
                    break;
                }
            }
            if (j11 != 0) {
                long j20 = j11;
                int i10 = 0;
                long j21 = 0;
                while (true) {
                    if (z10) {
                        d11 = g(hVar, allocate, j20);
                    } else {
                        d11 = d(hVar, allocate, j20);
                    }
                    if (d11 == 1) {
                        if (i10 != Integer.MAX_VALUE) {
                            i10++;
                            str = "malformed DT_NEEDED section";
                        } else {
                            throw new ElfError("malformed DT_NEEDED section");
                        }
                    } else if (d11 == 5) {
                        str = "malformed DT_NEEDED section";
                        if (z10) {
                            d12 = g(hVar, allocate, j20 + 4);
                        } else {
                            d12 = d(hVar, allocate, j20 + 8);
                        }
                        j21 = d12;
                    } else {
                        str = "malformed DT_NEEDED section";
                    }
                    if (z10) {
                        j12 = 8;
                    } else {
                        j12 = 16;
                    }
                    j20 += j12;
                    if (d11 == 0) {
                        if (j21 != 0) {
                            long j22 = d10;
                            int i11 = 0;
                            while (true) {
                                if (i11 < f10) {
                                    if (z10) {
                                        g11 = g(hVar, allocate, j22);
                                    } else {
                                        g11 = g(hVar, allocate, j22);
                                    }
                                    if (g11 == 1) {
                                        if (z10) {
                                            j17 = f10;
                                            d15 = g(hVar, allocate, j22 + 8);
                                        } else {
                                            j17 = f10;
                                            d15 = d(hVar, allocate, j22 + 16);
                                        }
                                        if (z10) {
                                            j13 = j11;
                                            d16 = g(hVar, allocate, j22 + 20);
                                        } else {
                                            j13 = j11;
                                            d16 = d(hVar, allocate, j22 + 40);
                                        }
                                        if (d15 <= j21 && j21 < d16 + d15) {
                                            if (z10) {
                                                d17 = g(hVar, allocate, j22 + 4);
                                            } else {
                                                d17 = d(hVar, allocate, j22 + 8);
                                            }
                                            j15 = d17 + (j21 - d15);
                                            j14 = 0;
                                        }
                                    } else {
                                        j17 = f10;
                                        j13 = j11;
                                    }
                                    j22 += f11;
                                    i11++;
                                    f10 = j17;
                                    j11 = j13;
                                } else {
                                    j13 = j11;
                                    j14 = 0;
                                    j15 = 0;
                                    break;
                                }
                            }
                            if (j15 != j14) {
                                String[] strArr = new String[i10];
                                long j23 = j13;
                                int i12 = 0;
                                while (true) {
                                    if (z10) {
                                        d13 = g(hVar, allocate, j23);
                                    } else {
                                        d13 = d(hVar, allocate, j23);
                                    }
                                    if (d13 == 1) {
                                        if (z10) {
                                            d14 = g(hVar, allocate, j23 + 4);
                                        } else {
                                            d14 = d(hVar, allocate, j23 + 8);
                                        }
                                        strArr[i12] = e(hVar, allocate, d14 + j15);
                                        if (i12 != Integer.MAX_VALUE) {
                                            i12++;
                                            str2 = str;
                                        } else {
                                            throw new ElfError(str);
                                        }
                                    } else {
                                        str2 = str;
                                    }
                                    if (z10) {
                                        j16 = 8;
                                    } else {
                                        j16 = 16;
                                    }
                                    j23 += j16;
                                    if (d13 == 0) {
                                        if (i12 == i10) {
                                            return strArr;
                                        }
                                        throw new ElfError(str2);
                                    }
                                    str = str2;
                                }
                            } else {
                                throw new ElfError("did not find file offset of DT_STRTAB table");
                            }
                        } else {
                            throw new ElfError("Dynamic section string-table not found");
                        }
                    }
                }
            } else {
                throw new ElfError("ELF file does not contain dynamic linking information");
            }
        } else {
            throw new ElfError("file is not ELF: magic is 0x" + Long.toHexString(g10) + ", it should be " + Long.toHexString(1179403647L));
        }
    }

    private static String[] c(i iVar) throws IOException {
        int i10 = 0;
        while (true) {
            try {
                return b(iVar);
            } catch (ClosedByInterruptException e10) {
                i10++;
                if (i10 <= 4) {
                    Thread.interrupted();
                    o.c("MinElf", "retrying extract_DT_NEEDED due to ClosedByInterruptException", e10);
                    iVar.d();
                } else {
                    throw e10;
                }
            }
        }
    }

    private static long d(h hVar, ByteBuffer byteBuffer, long j10) throws IOException {
        i(hVar, byteBuffer, 8, j10);
        return byteBuffer.getLong();
    }

    private static String e(h hVar, ByteBuffer byteBuffer, long j10) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            long j11 = 1 + j10;
            short h10 = h(hVar, byteBuffer, j10);
            if (h10 != 0) {
                sb2.append((char) h10);
                j10 = j11;
            } else {
                return sb2.toString();
            }
        }
    }

    private static int f(h hVar, ByteBuffer byteBuffer, long j10) throws IOException {
        i(hVar, byteBuffer, 2, j10);
        return byteBuffer.getShort() & 65535;
    }

    private static long g(h hVar, ByteBuffer byteBuffer, long j10) throws IOException {
        i(hVar, byteBuffer, 4, j10);
        return byteBuffer.getInt() & 4294967295L;
    }

    private static short h(h hVar, ByteBuffer byteBuffer, long j10) throws IOException {
        i(hVar, byteBuffer, 1, j10);
        return (short) (byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
    }

    private static void i(h hVar, ByteBuffer byteBuffer, int i10, long j10) throws IOException {
        int h10;
        byteBuffer.position(0);
        byteBuffer.limit(i10);
        while (byteBuffer.remaining() > 0 && (h10 = hVar.h(byteBuffer, j10)) != -1) {
            j10 += h10;
        }
        if (byteBuffer.remaining() <= 0) {
            byteBuffer.position(0);
            return;
        }
        throw new ElfError("ELF file truncated");
    }
}
