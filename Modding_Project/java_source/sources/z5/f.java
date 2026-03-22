package z5;

import androidx.collection.SieveCacheKt;
import b7.g0;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import t5.l;
/* compiled from: Sniffer.java */
/* loaded from: classes4.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private final g0 f71317a = new g0(8);

    /* renamed from: b  reason: collision with root package name */
    private int f71318b;

    private long a(l lVar) throws IOException {
        int i10 = 0;
        lVar.peekFully(this.f71317a.d(), 0, 1);
        int i11 = this.f71317a.d()[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (~i12);
        lVar.peekFully(this.f71317a.d(), 1, i13);
        while (i10 < i13) {
            i10++;
            i14 = (this.f71317a.d()[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) + (i14 << 8);
        }
        this.f71318b += i13 + 1;
        return i14;
    }

    public boolean b(l lVar) throws IOException {
        long a10;
        int i10;
        long length = lVar.getLength();
        int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j10 = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (i11 != 0 && length <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            j10 = length;
        }
        int i12 = (int) j10;
        lVar.peekFully(this.f71317a.d(), 0, 4);
        long F = this.f71317a.F();
        this.f71318b = 4;
        while (F != 440786851) {
            int i13 = this.f71318b + 1;
            this.f71318b = i13;
            if (i13 == i12) {
                return false;
            }
            lVar.peekFully(this.f71317a.d(), 0, 1);
            F = ((F << 8) & (-256)) | (this.f71317a.d()[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        }
        long a11 = a(lVar);
        long j11 = this.f71318b;
        if (a11 == Long.MIN_VALUE) {
            return false;
        }
        if (i11 != 0 && j11 + a11 >= length) {
            return false;
        }
        while (true) {
            int i14 = this.f71318b;
            long j12 = j11 + a11;
            if (i14 < j12) {
                if (a(lVar) != Long.MIN_VALUE && (a(lVar)) >= 0 && a10 <= SieveCacheKt.NodeLinkMask) {
                    if (i10 != 0) {
                        int i15 = (int) a10;
                        lVar.advancePeekPosition(i15);
                        this.f71318b += i15;
                    }
                }
            } else if (i14 != j12) {
                return false;
            } else {
                return true;
            }
        }
    }
}
