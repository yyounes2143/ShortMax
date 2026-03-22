package com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ;

import android.content.Context;
import androidx.collection.SieveCacheKt;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.awB;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import com.bytedance.sdk.component.utils.QSm;
import com.vungle.ads.internal.protos.Sdk;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk implements tB {
    private long Pfn;
    private final com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB dLZ;
    private File ex;
    private RandomAccessFile kkU;
    private File tB;
    private volatile long oJ = SieveCacheKt.NodeMetaAndPreviousMask;
    private final Object ZYk = new Object();

    /* renamed from: ba  reason: collision with root package name */
    private volatile long f10999ba = -1;
    private volatile int cFZ = -100;

    /* renamed from: so  reason: collision with root package name */
    private volatile boolean f11000so = false;
    private volatile boolean jFA = false;

    public ZYk(Context context, com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        this.Pfn = 0L;
        this.kkU = null;
        this.dLZ = tBVar;
        try {
            this.tB = com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.ZYk(tBVar.Pfn(), tBVar.si());
            this.ex = com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.tB(tBVar.Pfn(), tBVar.si());
            if (ex()) {
                this.kkU = new RandomAccessFile(this.ex, "r");
            } else {
                this.kkU = new RandomAccessFile(this.tB, "rw");
            }
            if (!ex()) {
                this.Pfn = this.tB.length();
                oJ();
            }
        } catch (Throwable unused) {
            tBVar.eZI();
        }
    }

    private long Pfn() {
        if (ex()) {
            return this.ex.length();
        }
        return this.tB.length();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ba() throws IOException {
        synchronized (this.ZYk) {
            if (ex()) {
                this.dLZ.eZI();
                this.dLZ.si();
            } else if (this.tB.renameTo(this.ex)) {
                RandomAccessFile randomAccessFile = this.kkU;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.kkU = new RandomAccessFile(this.ex, "rw");
                this.dLZ.si();
                this.dLZ.eZI();
            } else {
                throw new IOException("Error renaming file " + this.tB + " to " + this.ex + " for completion!");
            }
        }
    }

    private boolean ex() {
        return this.ex.exists();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.tB
    public void ZYk() {
        try {
            if (!this.f11000so) {
                this.kkU.close();
            }
            File file = this.tB;
            if (file != null) {
                file.setLastModified(System.currentTimeMillis());
            }
            File file2 = this.ex;
            if (file2 != null) {
                file2.setLastModified(System.currentTimeMillis());
            }
        } catch (Throwable unused) {
        }
        this.f11000so = true;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.tB
    public long tB() throws IOException {
        if (ex()) {
            this.oJ = this.ex.length();
        } else {
            synchronized (this.ZYk) {
                int i10 = 0;
                do {
                    try {
                        if (this.oJ == SieveCacheKt.NodeMetaAndPreviousMask) {
                            i10 += 15;
                            try {
                                this.ZYk.wait(5L);
                            } catch (InterruptedException unused) {
                                throw new IOException("total length InterruptException");
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                } while (i10 <= 20000);
                return -1L;
            }
        }
        return this.oJ;
    }

    public void oJ() {
        dLZ.oJ oJVar;
        if (com.bykv.vk.openvk.oJ.oJ.oJ.tB.ex() != null) {
            oJVar = com.bykv.vk.openvk.oJ.oJ.oJ.tB.ex().ZYk();
        } else {
            oJVar = new dLZ.oJ("v_cache");
        }
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        oJVar.oJ(this.dLZ.RZ(), timeUnit).ZYk(this.dLZ.QSm(), timeUnit).tB(this.dLZ.oq(), timeUnit);
        dLZ oJ = oJVar.oJ();
        this.dLZ.si();
        BTZ.oJ oJVar2 = new BTZ.oJ();
        oJ.oJ(oJVar2.oJ("RANGE", "bytes=" + this.Pfn + "-").ZYk(this.dLZ.eZI()).oJ().oJ("videoLoadWhenPlaying").oJ(9).ZYk()).oJ(new com.bytedance.sdk.component.ZYk.oJ.tB() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.ZYk.1
            @Override // com.bytedance.sdk.component.ZYk.oJ.tB
            public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk, IOException iOException) {
                ZYk.this.oJ(30000, iOException.getMessage());
            }

            @Override // com.bytedance.sdk.component.ZYk.oJ.tB
            public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk, WcQ wcQ) throws IOException {
                awB awb;
                boolean z10;
                boolean z11;
                int i10;
                if (wcQ != null) {
                    InputStream inputStream = null;
                    try {
                        ZYk.this.jFA = wcQ.ex();
                        if (!ZYk.this.jFA) {
                            ZYk.this.oJ(wcQ.tB(), wcQ.Pfn());
                            awb = null;
                        } else {
                            awb = wcQ.ba();
                            try {
                                if (ZYk.this.jFA && awb != null) {
                                    ZYk.this.oJ = awb.oJ() + ZYk.this.Pfn;
                                    inputStream = awb.tB();
                                }
                                if (inputStream == null) {
                                    ZYk.this.oJ((int) Sdk.SDKError.Reason.CONFIG_NOT_FOUND_ERROR_VALUE, "input_stream is empty");
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable unused) {
                                            return;
                                        }
                                    }
                                    if (z11) {
                                        if (i10 == 0) {
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                byte[] bArr = new byte[8192];
                                long j10 = ZYk.this.Pfn;
                                long j11 = 0;
                                loop0: while (true) {
                                    int i11 = 0;
                                    do {
                                        int read = inputStream.read(bArr, i11, 8192 - i11);
                                        if (read == -1) {
                                            break loop0;
                                        }
                                        i11 += read;
                                        j11 += read;
                                        if (j11 % 8192 != 0 && j11 != ZYk.this.oJ - ZYk.this.Pfn) {
                                            z10 = false;
                                            long unused2 = ZYk.this.oJ;
                                            long unused3 = ZYk.this.Pfn;
                                            ZYk.this.dLZ.si();
                                            ZYk.this.dLZ.eZI();
                                        }
                                        z10 = true;
                                        long unused22 = ZYk.this.oJ;
                                        long unused32 = ZYk.this.Pfn;
                                        ZYk.this.dLZ.si();
                                        ZYk.this.dLZ.eZI();
                                    } while (!z10);
                                    synchronized (ZYk.this.ZYk) {
                                        com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.oJ(ZYk.this.kkU, bArr, Long.valueOf(j10).intValue(), i11, ZYk.this.dLZ.si());
                                    }
                                    j10 += i11;
                                }
                                long unused4 = ZYk.this.Pfn;
                                long unused5 = ZYk.this.oJ;
                                long unused6 = ZYk.this.oJ;
                                long unused7 = ZYk.this.Pfn;
                                ZYk.this.dLZ.eZI();
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    ZYk.this.oJ(30001, th.getMessage());
                                    if (0 != 0) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable unused8) {
                                            return;
                                        }
                                    }
                                    if (awb != null) {
                                        awb.close();
                                    }
                                    wcQ.close();
                                    if (ZYk.this.jFA && ZYk.this.tB.length() == ZYk.this.oJ) {
                                        ZYk.this.ba();
                                        return;
                                    }
                                    return;
                                } finally {
                                    if (0 != 0) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable unused9) {
                                        }
                                    }
                                    if (awb != null) {
                                        awb.close();
                                    }
                                    wcQ.close();
                                    if (ZYk.this.jFA && ZYk.this.tB.length() == ZYk.this.oJ) {
                                        ZYk.this.ba();
                                    }
                                }
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable unused10) {
                                return;
                            }
                        }
                        if (awb != null) {
                            awb.close();
                        }
                        wcQ.close();
                        if (ZYk.this.jFA && ZYk.this.tB.length() == ZYk.this.oJ) {
                            ZYk.this.ba();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        awb = null;
                    }
                } else {
                    ZYk.this.oJ((int) Sdk.SDKError.Reason.AD_INTERNAL_INTEGRATION_ERROR_VALUE, "response is empty");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10, String str) {
        JSONObject tB;
        this.jFA = false;
        this.cFZ = i10;
        this.oJ = this.f10999ba;
        QSm.ZYk("CSJ_MediaDLPlay", "handleFailResponse: ", Integer.valueOf(i10), " ", str);
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar = this.dLZ;
        if (tBVar == null || !tBVar.oJ() || (tB = this.dLZ.tB()) == null) {
            return;
        }
        try {
            tB.put("error_real_code", i10);
            tB.put("error_real_msg", str);
        } catch (Throwable th2) {
            QSm.oJ("CSJ_MediaDLPlay", "handleFailResponse: ", th2);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.tB
    public int oJ(long j10, byte[] bArr, int i10, int i11) throws IOException {
        try {
            if (j10 == this.oJ) {
                return -1;
            }
            int i12 = 0;
            int i13 = 0;
            while (!this.f11000so) {
                synchronized (this.ZYk) {
                    if (j10 < Pfn()) {
                        this.kkU.seek(j10);
                        i13 = this.kkU.read(bArr, i10, i11);
                    } else {
                        i12 += 33;
                        this.ZYk.wait(33L);
                    }
                }
                if (i13 > 0) {
                    return i13;
                }
                com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar = this.dLZ;
                if (tBVar != null && tBVar.oJ() && this.cFZ != -100 && (!this.jFA || this.oJ == this.f10999ba)) {
                    throw new IOException();
                }
                if (i12 >= 20000) {
                    throw new SocketTimeoutException();
                }
            }
            return -1;
        } catch (Throwable th2) {
            if (th2 instanceof IOException) {
                throw th2;
            }
            throw new IOException();
        }
    }
}
