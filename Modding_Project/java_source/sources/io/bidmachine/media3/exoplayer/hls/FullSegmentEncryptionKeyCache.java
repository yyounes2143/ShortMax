package io.bidmachine.media3.exoplayer.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes8.dex */
final class FullSegmentEncryptionKeyCache {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<Uri, byte[]> f55967a;

    public FullSegmentEncryptionKeyCache(final int i10) {
        this.f55967a = new LinkedHashMap<Uri, byte[]>(i10 + 1, 1.0f, false) { // from class: io.bidmachine.media3.exoplayer.hls.FullSegmentEncryptionKeyCache.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
                if (size() > i10) {
                    return true;
                }
                return false;
            }
        };
    }

    @Nullable
    public byte[] a(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return this.f55967a.get(uri);
    }

    @Nullable
    public byte[] b(Uri uri, byte[] bArr) {
        return this.f55967a.put((Uri) cn.a.e(uri), (byte[]) cn.a.e(bArr));
    }

    @Nullable
    public byte[] c(Uri uri) {
        return this.f55967a.remove(cn.a.e(uri));
    }
}
