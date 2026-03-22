package com.bytedance.sdk.component.Pfn.tB.oJ.oJ;

import android.util.Log;
import com.bytedance.sdk.component.Pfn.tB.oJ.oJ.oJ;
import com.bytedance.sdk.component.utils.kkU;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3.dex */
public class ZYk implements com.bytedance.sdk.component.Pfn.tB {
    private oJ ZYk;
    private long oJ;

    public ZYk(File file, long j10, ExecutorService executorService) {
        this.oJ = j10;
        try {
            this.ZYk = oJ.oJ(file, 20210302, 1, j10, executorService);
        } catch (IOException e10) {
            Log.w("LruCountDiskCache", e10.toString());
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    /* renamed from: tB */
    public boolean ZYk(String str) {
        boolean z10 = false;
        try {
            try {
                oJ.tB oJ = this.ZYk.oJ(str);
                if (oJ != null) {
                    z10 = true;
                }
                kkU.oJ(oJ);
                return z10;
            } catch (IOException e10) {
                Log.w("LruCountDiskCache", e10.getMessage());
                kkU.oJ(null);
                return false;
            }
        } catch (Throwable th2) {
            kkU.oJ(null);
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.Closeable, java.io.InputStream] */
    @Override // com.bytedance.sdk.component.Pfn.oJ
    /* renamed from: ZYk  reason: avoid collision after fix types in other method */
    public byte[] oJ(String str) {
        Closeable closeable;
        Closeable closeable2;
        ByteArrayOutputStream byteArrayOutputStream;
        oJ oJVar = this.ZYk;
        Closeable closeable3 = null;
        if (oJVar != null) {
            try {
                if (str != 0) {
                    try {
                        oJ.tB oJ = oJVar.oJ((String) str);
                        if (oJ == null) {
                            kkU.oJ(null);
                            kkU.oJ(null);
                            return null;
                        }
                        str = oJ.oJ(0);
                        if (str != 0) {
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                try {
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int read = str.read(bArr);
                                        if (read == -1) {
                                            break;
                                        }
                                        byteArrayOutputStream.write(bArr, 0, read);
                                    }
                                } catch (IOException e10) {
                                    e = e10;
                                    closeable2 = str;
                                    Log.w("LruCountDiskCache", e.toString());
                                    kkU.oJ(closeable2);
                                    kkU.oJ(byteArrayOutputStream);
                                    return null;
                                }
                            } catch (IOException e11) {
                                e = e11;
                                byteArrayOutputStream = null;
                                closeable2 = str;
                                Log.w("LruCountDiskCache", e.toString());
                                kkU.oJ(closeable2);
                                kkU.oJ(byteArrayOutputStream);
                                return null;
                            } catch (Throwable th2) {
                                th = th2;
                                closeable = null;
                                closeable3 = str;
                                kkU.oJ(closeable3);
                                kkU.oJ(closeable);
                                throw th;
                            }
                        } else {
                            byteArrayOutputStream = null;
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        kkU.oJ(str);
                        kkU.oJ(byteArrayOutputStream);
                        return byteArray;
                    } catch (IOException e12) {
                        e = e12;
                        closeable2 = null;
                        byteArrayOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        closeable = null;
                        kkU.oJ(closeable3);
                        kkU.oJ(closeable);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.component.Pfn.tB
    public InputStream oJ(String str) {
        oJ oJVar = this.ZYk;
        if (oJVar == null) {
            return null;
        }
        try {
            oJ.tB oJ = oJVar.oJ(str);
            if (oJ != null) {
                return oJ.oJ(0);
            }
        } catch (IOException e10) {
            Log.w("LruCountDiskCache", e10.getMessage());
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean oJ(String str, byte[] bArr) {
        Closeable closeable;
        oJ.C0159oJ ZYk;
        oJ oJVar = this.ZYk;
        if (oJVar == null || bArr == null || str == null) {
            return false;
        }
        Closeable closeable2 = null;
        oJ.C0159oJ c0159oJ = null;
        try {
            try {
                ZYk = oJVar.ZYk(str);
            } catch (IOException e10) {
                e = e10;
                closeable = null;
            }
            try {
                if (ZYk == null) {
                    Log.w("LruCountDiskCache", "save " + str + " failed for edit null");
                    kkU.oJ(null);
                    return false;
                }
                OutputStream oJ = ZYk.oJ(0);
                if (oJ == oJ.tB) {
                    Log.w("LruCountDiskCache", "save " + str + " failed for null OutputStream");
                    kkU.oJ(oJ);
                    return false;
                }
                oJ.write(bArr);
                ZYk.oJ();
                this.ZYk.oJ();
                kkU.oJ(oJ);
                return true;
            } catch (IOException e11) {
                e = e11;
                closeable = null;
                c0159oJ = ZYk;
                try {
                    Log.w("LruCountDiskCache", e.toString());
                    if (c0159oJ != null) {
                        try {
                            c0159oJ.ZYk();
                        } catch (IOException unused) {
                        }
                    }
                    kkU.oJ(closeable);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    closeable2 = closeable;
                    kkU.oJ(closeable2);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            kkU.oJ(closeable2);
            throw th;
        }
    }
}
