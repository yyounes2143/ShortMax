package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public abstract class IS {
    public static String[] A00 = {"oZj5aoX1KvbFHq33YkjSnnR9n2", "YrN4", "d5f6mUL", "wzC2np4aQz", "bSG0VkmAa5PTnnRqB4khFtTiUFve1XQW", "Qyz6G41qMcU917EtFwNhHmzpy", "Reep", "5AjdKovxhleFLdRt3FcvPVZSBJ"};

    public static IR A00(int i10, long[] jArr, int[] iArr, long j10) {
        int chunkSamplesRemaining = 8192 / i10;
        int i11 = 0;
        for (int i12 : iArr) {
            i11 += AbstractC10974a.A05(i12, chunkSamplesRemaining);
        }
        long[] jArr2 = new long[i11];
        int[] iArr2 = new int[i11];
        int originalSampleIndex = 0;
        long[] timestamps = new long[i11];
        int[] flags = new int[i11];
        int i13 = 0;
        int bufferSampleCount = 0;
        int i14 = 0;
        String[] strArr = A00;
        String str = strArr[2];
        String str2 = strArr[3];
        int maxSampleCount = str.length();
        if (maxSampleCount != str2.length()) {
            String[] strArr2 = A00;
            strArr2[2] = "OG99HZu";
            strArr2[3] = "ptKGW28cJb";
            while (true) {
                int rechunkedSampleCount = iArr.length;
                String[] strArr3 = A00;
                String str3 = strArr3[2];
                String str4 = strArr3[3];
                int maxSampleCount2 = str3.length();
                if (maxSampleCount2 == str4.length()) {
                    break;
                }
                A00[5] = "uTdlUcyBkPhiZ9U2ydDZL";
                if (i14 < rechunkedSampleCount) {
                    int rechunkedSampleCount2 = iArr[i14];
                    int maxSampleCount3 = A00[5].length();
                    if (maxSampleCount3 == 5) {
                        throw new RuntimeException();
                    }
                    String[] strArr4 = A00;
                    strArr4[2] = "PmQbGcH";
                    strArr4[3] = "fT2ewQCR49";
                    long j11 = jArr[i14];
                    while (rechunkedSampleCount2 > 0) {
                        int maximumSize = Math.min(chunkSamplesRemaining, rechunkedSampleCount2);
                        jArr2[bufferSampleCount] = j11;
                        iArr2[bufferSampleCount] = i10 * maximumSize;
                        originalSampleIndex = Math.max(originalSampleIndex, iArr2[bufferSampleCount]);
                        timestamps[bufferSampleCount] = i13 * j10;
                        flags[bufferSampleCount] = 1;
                        j11 += iArr2[bufferSampleCount];
                        i13 += maximumSize;
                        rechunkedSampleCount2 -= maximumSize;
                        bufferSampleCount++;
                    }
                    i14++;
                } else {
                    return new IR(jArr2, iArr2, originalSampleIndex, timestamps, flags, j10 * i13);
                }
            }
        }
        throw new RuntimeException();
    }
}
