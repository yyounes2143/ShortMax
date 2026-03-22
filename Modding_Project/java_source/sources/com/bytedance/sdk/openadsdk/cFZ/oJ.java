package com.bytedance.sdk.openadsdk.cFZ;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.buffer.stream.BufferOutputStream;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.Pfn;
import com.bytedance.sdk.component.ZYk.oJ.PiB;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.ba;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import com.bytedance.sdk.component.ZYk.oJ.jFA;
import com.bytedance.sdk.component.ZYk.oJ.tB;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class oJ implements INetWork {
    protected dLZ ZYk;
    protected dLZ oJ;

    public oJ() {
        dLZ.oJ oJVar = new dLZ.oJ();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.oJ = oJVar.oJ(10L, timeUnit).ZYk(10L, timeUnit).tB(10L, timeUnit).oJ();
        this.ZYk = new dLZ.oJ().oJ(10L, timeUnit).ZYk(30L, timeUnit).tB(30L, timeUnit).oJ();
    }

    private Map<String, String> oJ(ba baVar) {
        if (baVar == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < baVar.oJ(); i10++) {
            hashMap.put(baVar.oJ(i10), baVar.ZYk(i10));
        }
        return hashMap;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public Response doGet(String str) throws Exception {
        String str2;
        WcQ ZYk = this.oJ.oJ(new BTZ.oJ().oJ().ZYk(str).oJ("gecko").ZYk()).ZYk();
        Map<String, String> oJ = oJ(ZYk.cFZ());
        if (ZYk.tB() == 200) {
            str2 = ZYk.ba().ZYk();
        } else {
            str2 = null;
        }
        return new Response(oJ, str2, ZYk.tB(), ZYk.Pfn());
    }

    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public Response doPost(String str, List<Pair<String, String>> list) throws Exception {
        Pfn.oJ oJVar = new Pfn.oJ();
        if (list != null) {
            for (Pair<String, String> pair : list) {
                oJVar.oJ((String) pair.first, (String) pair.second);
            }
        }
        WcQ ZYk = this.oJ.oJ(new BTZ.oJ().ZYk(str).oJ((PiB) oJVar.oJ()).oJ("gecko").ZYk()).ZYk();
        return new Response(oJ(ZYk.cFZ()), ZYk.tB() == 200 ? ZYk.ba().ZYk() : null, ZYk.tB(), ZYk.Pfn());
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0044: MOVE  (r7 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:12:0x0044 */
    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public void downloadFile(String str, long j10, BufferOutputStream bufferOutputStream) throws Exception {
        Exception e10;
        Closeable closeable;
        BufferedInputStream bufferedInputStream;
        Closeable closeable2 = null;
        int i10 = 0;
        try {
            try {
                try {
                    WcQ ZYk = this.ZYk.oJ(new BTZ.oJ().oJ().oJ("gecko").ZYk(str).ZYk()).ZYk();
                    int tB = ZYk.tB();
                    try {
                        bufferedInputStream = new BufferedInputStream(ZYk.ba().tB());
                    } catch (Exception e11) {
                        e10 = e11;
                    }
                    try {
                        byte[] bArr = new byte[2048];
                        while (true) {
                            int read = bufferedInputStream.read(bArr, 0, 2048);
                            if (read != -1) {
                                bufferOutputStream.write(bArr, 0, read);
                            } else {
                                CloseableUtils.close(bufferedInputStream);
                                return;
                            }
                        }
                    } catch (Exception e12) {
                        e10 = e12;
                        i10 = tB;
                        throw new RuntimeException("downloadFile failed, code: " + i10 + ", url:" + str + ", caused by:" + e10.getMessage(), e10);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable2 = closeable;
                    CloseableUtils.close(closeable2);
                    throw th;
                }
            } catch (Exception e13) {
                e10 = e13;
            }
        } catch (Throwable th3) {
            th = th3;
            CloseableUtils.close(closeable2);
            throw th;
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public void syncDoGet(final String str) {
        this.oJ.oJ(new BTZ.oJ().oJ().ZYk(str).oJ("gecko").ZYk()).oJ(new tB() { // from class: com.bytedance.sdk.openadsdk.cFZ.oJ.1
            @Override // com.bytedance.sdk.component.ZYk.oJ.tB
            public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk, WcQ wcQ) throws IOException {
            }

            @Override // com.bytedance.sdk.component.ZYk.oJ.tB
            public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk, IOException iOException) {
            }
        });
    }

    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public Response doPost(String str, String str2) throws Exception {
        WcQ ZYk = this.oJ.oJ(new BTZ.oJ().ZYk(str).oJ(PiB.oJ(jFA.oJ("application/json; charset=utf-8"), str2)).oJ("gecko").ZYk()).ZYk();
        return new Response(oJ(ZYk.cFZ()), ZYk.tB() == 200 ? ZYk.ba().ZYk() : null, ZYk.tB(), ZYk.Pfn());
    }
}
