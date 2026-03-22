package in;

import cn.m0;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: PcmAudioUtil.java */
/* loaded from: classes8.dex */
public final class r {
    public static ByteBuffer a(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13) {
        ByteBuffer order = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
        int position = byteBuffer.position();
        while (byteBuffer.hasRemaining() && i12 < i13) {
            c(order, (int) ((b(byteBuffer, i10) * i12) / i13), i10);
            if (byteBuffer.position() == position + i11) {
                i12++;
                position = byteBuffer.position();
            }
        }
        order.put(byteBuffer);
        order.flip();
        return order;
    }

    public static int b(ByteBuffer byteBuffer, int i10) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 21) {
                        if (i10 != 22) {
                            if (i10 != 268435456) {
                                if (i10 != 1342177280) {
                                    if (i10 == 1610612736) {
                                        return (byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
                                    }
                                    throw new IllegalStateException();
                                }
                                return ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
                            }
                            return ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
                        }
                        return ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
                    }
                    return ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
                }
                float o10 = m0.o(byteBuffer.getFloat(), -1.0f, 1.0f);
                if (o10 < 0.0f) {
                    return (int) ((-o10) * (-2.14748365E9f));
                }
                return (int) (o10 * 2.14748365E9f);
            }
            return (byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24;
        }
        return ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((byteBuffer.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    public static void c(ByteBuffer byteBuffer, int i10, int i11) {
        if (i11 != 2) {
            if (i11 != 3) {
                if (i11 != 4) {
                    if (i11 != 21) {
                        if (i11 != 22) {
                            if (i11 != 268435456) {
                                if (i11 != 1342177280) {
                                    if (i11 == 1610612736) {
                                        byteBuffer.put((byte) (i10 >> 24));
                                        byteBuffer.put((byte) (i10 >> 16));
                                        byteBuffer.put((byte) (i10 >> 8));
                                        byteBuffer.put((byte) i10);
                                        return;
                                    }
                                    throw new IllegalStateException();
                                }
                                byteBuffer.put((byte) (i10 >> 24));
                                byteBuffer.put((byte) (i10 >> 16));
                                byteBuffer.put((byte) (i10 >> 8));
                                return;
                            }
                            byteBuffer.put((byte) (i10 >> 24));
                            byteBuffer.put((byte) (i10 >> 16));
                            return;
                        }
                        byteBuffer.put((byte) i10);
                        byteBuffer.put((byte) (i10 >> 8));
                        byteBuffer.put((byte) (i10 >> 16));
                        byteBuffer.put((byte) (i10 >> 24));
                        return;
                    }
                    byteBuffer.put((byte) (i10 >> 8));
                    byteBuffer.put((byte) (i10 >> 16));
                    byteBuffer.put((byte) (i10 >> 24));
                    return;
                } else if (i10 < 0) {
                    byteBuffer.putFloat((-i10) / (-2.14748365E9f));
                    return;
                } else {
                    byteBuffer.putFloat(i10 / 2.14748365E9f);
                    return;
                }
            }
            byteBuffer.put((byte) (i10 >> 24));
            return;
        }
        byteBuffer.put((byte) (i10 >> 16));
        byteBuffer.put((byte) (i10 >> 24));
    }
}
