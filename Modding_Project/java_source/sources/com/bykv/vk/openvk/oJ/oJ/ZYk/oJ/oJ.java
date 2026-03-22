package com.bykv.vk.openvk.oJ.oJ.ZYk.oJ;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import androidx.collection.SieveCacheKt;
import com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.ZYk;
import com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class oJ extends MediaDataSource {
    public static final ConcurrentHashMap<String, oJ> oJ = new ConcurrentHashMap<>();
    private final tB Pfn;
    private final com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.tB ZYk;
    private final Context ex;
    private long tB = SieveCacheKt.NodeMetaAndPreviousMask;

    public oJ(Context context, tB tBVar) {
        this.ex = context;
        this.Pfn = tBVar;
        this.ZYk = new ZYk(context, tBVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.Pfn.eZI();
        com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.ZYk();
        }
        oJ.remove(this.Pfn.si());
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        if (this.tB == SieveCacheKt.NodeMetaAndPreviousMask) {
            if (this.ex != null && !TextUtils.isEmpty(this.Pfn.eZI())) {
                this.tB = this.ZYk.tB();
            } else {
                return -1L;
            }
        }
        return this.tB;
    }

    public tB oJ() {
        return this.Pfn;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException {
        int oJ2 = this.ZYk.oJ(j10, bArr, i10, i11);
        int length = bArr.length;
        Objects.toString(Thread.currentThread());
        return oJ2;
    }

    public static oJ oJ(Context context, tB tBVar) {
        oJ oJVar = new oJ(context, tBVar);
        oJ.put(tBVar.si(), oJVar);
        return oJVar;
    }
}
