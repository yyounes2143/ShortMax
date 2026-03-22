package fk;

import com.inmobi.commons.core.configs.AdConfig;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StunHelper.kt */
@Metadata
/* loaded from: classes7.dex */
public final class e0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e0 f51729a = new e0();

    private e0() {
    }

    private final Pair<String, Integer> b(byte[] bArr, int i10, byte[] bArr2) {
        byte[] bArr3;
        if (bArr.length < 8) {
            return null;
        }
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN);
        order.get();
        int i11 = order.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        if (i11 != 1 && i11 != 2) {
            return null;
        }
        int i12 = (order.getShort() & 65535) ^ (i10 >>> 16);
        if (i11 == 1) {
            bArr3 = new byte[4];
            order.get(bArr3);
            f51729a.c(bArr3, i10);
        } else {
            byte[] bArr4 = new byte[16];
            order.get(bArr4);
            f51729a.d(bArr4, i10, bArr2);
            bArr3 = bArr4;
        }
        try {
            return new Pair<>(InetAddress.getByAddress(bArr3).getHostAddress(), Integer.valueOf(i12));
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    private final void c(byte[] bArr, int i10) {
        bArr[0] = (byte) (bArr[0] ^ ((byte) ((i10 >>> 24) & 255)));
        bArr[1] = (byte) (bArr[1] ^ ((byte) ((i10 >>> 16) & 255)));
        bArr[2] = (byte) (bArr[2] ^ ((byte) ((i10 >>> 8) & 255)));
        bArr[3] = (byte) (((byte) (i10 & 255)) ^ bArr[3]);
    }

    private final void d(byte[] bArr, int i10, byte[] bArr2) {
        byte[] array = ByteBuffer.allocate(16).putInt(i10).put(bArr2, 0, 12).order(ByteOrder.BIG_ENDIAN).array();
        for (int i11 = 0; i11 < 16; i11++) {
            bArr[i11] = (byte) (bArr[i11] ^ array[i11]);
        }
    }

    @NotNull
    public final List<Pair<String, Integer>> a(@NotNull byte[] data) {
        int i10;
        Intrinsics.checkNotNullParameter(data, "data");
        ArrayList arrayList = new ArrayList();
        ByteBuffer order = ByteBuffer.wrap(data).order(ByteOrder.BIG_ENDIAN);
        short s10 = order.getShort();
        order.getShort();
        int i11 = order.getInt();
        byte[] bArr = new byte[12];
        order.get(bArr);
        if (s10 == 257 && i11 == 554869826) {
            int i12 = 20;
            while (true) {
                if (i12 >= data.length || (i10 = i12 + 4) > data.length) {
                    break;
                }
                short s11 = (short) ((data[i12] << 8) | (data[i12 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
                int i13 = (data[i12 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((data[i12 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
                if (s11 == 32) {
                    Pair<String, Integer> b10 = b(kotlin.collections.n.w(data, i10, i13 + i10), i11, bArr);
                    if (b10 != null) {
                        arrayList.add(b10);
                    }
                } else {
                    i12 = ((4 - (i13 % 4)) % 4) + i10 + i13;
                }
            }
        }
        return arrayList;
    }
}
