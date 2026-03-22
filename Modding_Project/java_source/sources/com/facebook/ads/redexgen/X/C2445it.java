package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.facebook.ads.redexgen.X.it  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2445it implements M5 {
    public static byte[] A07;
    public static String[] A08 = {"F3MsLf6P", "OcoAPMR8U6yTwuATNsSjihct3nuq8KFx", "bdE6GcC1kS6ix1fgAcoyQkC9rv", "V0wqj6Me", "EdnIrf", "cKhO3MBZMfPQ2uYBFx142UbqGZ0vcEvq", "x8zWNoAeDf", "YEiR7yHxtXFy2pC0Q9KvxgBtY"};
    public MC A00;
    public boolean A01;
    public final C3O A02;
    public final SecureRandom A03;
    public final Cipher A04;
    public final SecretKeySpec A05;
    public final boolean A06;

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A08;
            if (strArr[2].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[6] = "SFj9nJw9GR";
            strArr2[4] = "liv3w1";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 117);
            i13++;
        }
    }

    public static void A03() {
        A07 = new byte[]{11, 15, 29};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 11 out of bounds for length 9
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    private void A05(HashMap<String, M4> hashMap) throws IOException {
        try {
            C3N A03 = this.A02.A03();
            if (this.A00 == null) {
                this.A00 = new MC(A03);
            } else {
                this.A00.A00(A03);
            }
            MC mc2 = this.A00;
            DataOutputStream dataOutputStream = new DataOutputStream(mc2);
            dataOutputStream.writeInt(2);
            dataOutputStream.writeInt(this.A06 ? 1 : 0);
            if (this.A06) {
                byte[] bArr = new byte[16];
                ((SecureRandom) AbstractC10974a.A0f(this.A03)).nextBytes(bArr);
                dataOutputStream.write(bArr);
                try {
                    ((Cipher) AbstractC10974a.A0f(this.A04)).init(1, (Key) AbstractC10974a.A0f(this.A05), new IvParameterSpec(bArr));
                    dataOutputStream.flush();
                    dataOutputStream = new DataOutputStream(new CipherOutputStream(mc2, this.A04));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException e10) {
                    throw new IllegalStateException(e10);
                }
            }
            dataOutputStream.writeInt(hashMap.size());
            int i10 = 0;
            for (M4 m42 : hashMap.values()) {
                A04(m42, dataOutputStream);
                i10 += A00(m42, 2);
            }
            dataOutputStream.writeInt(i10);
            this.A02.A06(dataOutputStream);
            AbstractC10974a.A10(null);
        } catch (Throwable th2) {
            AbstractC10974a.A10(null);
            throw th2;
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 13 out of bounds for length 13
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    private boolean A06(HashMap<String, M4> hashMap, SparseArray<String> sparseArray) {
        if (this.A02.A07()) {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.A02.A04());
                DataInputStream dataInputStream = new DataInputStream(bufferedInputStream);
                int readInt = dataInputStream.readInt();
                if (readInt < 0 || readInt > 2) {
                    AbstractC10974a.A10(dataInputStream);
                    return false;
                }
                if ((dataInputStream.readInt() & 1) != 0) {
                    if (this.A04 == null) {
                        AbstractC10974a.A10(dataInputStream);
                        return false;
                    }
                    byte[] bArr = new byte[16];
                    dataInputStream.readFully(bArr);
                    try {
                        this.A04.init(2, (Key) AbstractC10974a.A0f(this.A05), new IvParameterSpec(bArr));
                        dataInputStream = new DataInputStream(new CipherInputStream(bufferedInputStream, this.A04));
                    } catch (InvalidAlgorithmParameterException | InvalidKeyException e10) {
                        throw new IllegalStateException(e10);
                    }
                } else if (this.A06) {
                    this.A01 = true;
                }
                int readInt2 = dataInputStream.readInt();
                int i10 = 0;
                for (int i11 = 0; i11 < readInt2; i11++) {
                    M4 A01 = A01(readInt, dataInputStream);
                    hashMap.put(A01.A02, A01);
                    sparseArray.put(A01.A01, A01.A02);
                    i10 += A00(A01, readInt);
                }
                int readInt3 = dataInputStream.readInt();
                boolean z10 = dataInputStream.read() == -1;
                if (readInt3 == i10 && z10) {
                    AbstractC10974a.A10(dataInputStream);
                    return true;
                }
                AbstractC10974a.A10(dataInputStream);
                return false;
            } catch (IOException unused) {
                if (0 != 0) {
                    AbstractC10974a.A10(null);
                }
                return false;
            } catch (Throwable th2) {
                if (0 != 0) {
                    AbstractC10974a.A10(null);
                }
                throw th2;
            }
        }
        return true;
    }

    static {
        A03();
    }

    public C2445it(File file, byte[] bArr, boolean z10) {
        C3M.A08((bArr == null && z10) ? false : true);
        Cipher cipher = null;
        SecretKeySpec secretKeySpec = null;
        if (bArr != null) {
            C3M.A07(bArr.length == 16);
            try {
                cipher = M6.A05();
                secretKeySpec = new SecretKeySpec(bArr, A02(0, 3, 85));
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e10) {
                throw new IllegalStateException(e10);
            }
        } else {
            C3M.A07(!z10);
        }
        this.A06 = z10;
        this.A04 = cipher;
        this.A05 = secretKeySpec;
        this.A03 = z10 ? new SecureRandom() : null;
        this.A02 = new C3O(file);
    }

    private int A00(M4 m42, int i10) {
        int result = m42.A01;
        int i11 = result * 31;
        int result2 = m42.A02.hashCode();
        int result3 = i11 + result2;
        if (i10 < 2) {
            long A00 = M7.A00(m42.A03());
            return (result3 * 31) + ((int) ((A00 >>> 32) ^ A00));
        }
        return (result3 * 31) + m42.A03().hashCode();
    }

    private M4 A01(int i10, DataInputStream dataInputStream) throws IOException {
        C2444is A02;
        int readInt = dataInputStream.readInt();
        String readUTF = dataInputStream.readUTF();
        if (i10 >= 2) {
            A02 = M6.A02(dataInputStream);
        } else {
            long length = dataInputStream.readLong();
            M9 m92 = new M9();
            M9.A00(m92, length);
            A02 = C2444is.A03.A05(m92);
        }
        return new M4(readInt, readUTF, A02);
    }

    private void A04(M4 m42, DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(m42.A01);
        dataOutputStream.writeUTF(m42.A02);
        M6.A08(m42.A03(), dataOutputStream);
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void A5h() {
        this.A02.A05();
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final boolean A6K() {
        return this.A02.A07();
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AA7(long j10) {
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AAj(HashMap<String, M4> hashMap, SparseArray<String> sparseArray) {
        C3M.A08(!this.A01);
        if (!A06(hashMap, sparseArray)) {
            hashMap.clear();
            String[] strArr = A08;
            if (strArr[2].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            A08[7] = "LXlnn5Px";
            sparseArray.clear();
            this.A02.A05();
        }
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AEv(M4 m42, boolean z10) {
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AFa(M4 m42) {
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AJX(HashMap<String, M4> hashMap) throws IOException {
        A05(hashMap);
        this.A01 = false;
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AJY(HashMap<String, M4> hashMap) throws IOException {
        if (!this.A01) {
            return;
        }
        AJX(hashMap);
    }
}
