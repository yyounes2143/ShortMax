package com.bytedance.sdk.component.Pfn.ex.tB.oJ.oJ;

import com.bytedance.sdk.component.Pfn.tB;
import com.bytedance.sdk.component.utils.kkU;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3.dex */
public class ZYk implements tB {
    private oJ ZYk;
    private int oJ;

    public ZYk(File file, long j10) {
        int i10 = (int) j10;
        this.oJ = i10;
        this.ZYk = oJ.oJ(i10, file);
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    /* renamed from: tB */
    public boolean ZYk(String str) {
        boolean z10 = false;
        try {
            InputStream oJ = this.ZYk.oJ(str);
            if (oJ != null) {
                z10 = true;
            }
            kkU.oJ(oJ);
            return z10;
        } catch (Throwable th2) {
            try {
                th2.getMessage();
                return false;
            } finally {
                kkU.oJ(null);
            }
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    /* renamed from: ZYk  reason: avoid collision after fix types in other method */
    public byte[] oJ(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th2;
        InputStream inputStream;
        oJ oJVar = this.ZYk;
        if (oJVar != null && str != null) {
            try {
                inputStream = oJVar.oJ(str);
                if (inputStream != null) {
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                        } catch (IOException unused) {
                        } catch (Throwable th3) {
                            th2 = th3;
                            kkU.oJ(inputStream);
                            kkU.oJ(byteArrayOutputStream);
                            throw th2;
                        }
                    } catch (IOException unused2) {
                        byteArrayOutputStream = null;
                    } catch (Throwable th4) {
                        th2 = th4;
                        byteArrayOutputStream = null;
                        kkU.oJ(inputStream);
                        kkU.oJ(byteArrayOutputStream);
                        throw th2;
                    }
                } else {
                    byteArrayOutputStream = null;
                }
                if (byteArrayOutputStream != null) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    kkU.oJ(inputStream);
                    kkU.oJ(byteArrayOutputStream);
                    return byteArray;
                }
            } catch (IOException unused3) {
                inputStream = null;
                byteArrayOutputStream = null;
            } catch (Throwable th5) {
                byteArrayOutputStream = null;
                th2 = th5;
                inputStream = null;
            }
            kkU.oJ(inputStream);
            kkU.oJ(byteArrayOutputStream);
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
        return oJVar.oJ(str);
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean oJ(String str, byte[] bArr) {
        oJ oJVar = this.ZYk;
        if (oJVar == null || bArr == null || str == null) {
            return false;
        }
        return oJVar.oJ(str, bArr);
    }
}
