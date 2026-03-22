package to;

import androidx.collection.SieveCacheKt;
import ao.q;
import cn.b0;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: Sniffer.java */
/* loaded from: classes8.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f67595a = new b0(8);

    /* renamed from: b  reason: collision with root package name */
    private int f67596b;

    private long a(q qVar) throws IOException {
        int i10 = 0;
        qVar.peekFully(this.f67595a.e(), 0, 1);
        int i11 = this.f67595a.e()[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
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
        qVar.peekFully(this.f67595a.e(), 1, i13);
        while (i10 < i13) {
            i10++;
            i14 = (this.f67595a.e()[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) + (i14 << 8);
        }
        this.f67596b += i13 + 1;
        return i14;
    }

    public boolean b(q qVar) throws IOException {
        long a10;
        int i10;
        long length = qVar.getLength();
        int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j10 = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (i11 != 0 && length <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            j10 = length;
        }
        int i12 = (int) j10;
        qVar.peekFully(this.f67595a.e(), 0, 4);
        long J = this.f67595a.J();
        this.f67596b = 4;
        while (J != 440786851) {
            int i13 = this.f67596b + 1;
            this.f67596b = i13;
            if (i13 == i12) {
                return false;
            }
            qVar.peekFully(this.f67595a.e(), 0, 1);
            J = ((J << 8) & (-256)) | (this.f67595a.e()[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        }
        long a11 = a(qVar);
        long j11 = this.f67596b;
        if (a11 == Long.MIN_VALUE) {
            return false;
        }
        if (i11 != 0 && j11 + a11 >= length) {
            return false;
        }
        while (true) {
            int i14 = this.f67596b;
            long j12 = j11 + a11;
            if (i14 < j12) {
                if (a(qVar) != Long.MIN_VALUE && (a(qVar)) >= 0 && a10 <= SieveCacheKt.NodeLinkMask) {
                    if (i10 != 0) {
                        int i15 = (int) a10;
                        qVar.advancePeekPosition(i15);
                        this.f67596b += i15;
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
