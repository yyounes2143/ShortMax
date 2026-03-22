package com.appsflyer.internal;

import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.Map;
/* loaded from: classes2.dex */
public class AFi1fSDK {
    private static final byte[] $$a = null;
    private static final int $$b = 0;
    private static int $10 = 0;
    private static int $11 = 1;
    private static int $12 = 0;
    private static int $13 = 1;
    private static long afDebugLog;
    private static long afErrorLog;
    private static long afInfoLog;
    private static int afRDLog;
    private static byte[] afVerboseLog;
    private static int afWarnLog;

    /* renamed from: d  reason: collision with root package name */
    private static Object f10935d;

    /* renamed from: e  reason: collision with root package name */
    private static byte[] f10936e;
    private static int force;

    /* renamed from: i  reason: collision with root package name */
    private static byte[] f10937i;
    public static final Map registerClient;
    private static Object unregisterClient;

    /* renamed from: v  reason: collision with root package name */
    private static int f10938v;

    /* renamed from: w  reason: collision with root package name */
    public static final Map f10939w;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r0 == null) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x005e -> B:12:0x0035). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String $$c(int r6, int r7, short r8) {
        /*
            int r0 = com.appsflyer.internal.AFi1fSDK.$12
            int r0 = r0 + 35
            int r1 = r0 % 128
            com.appsflyer.internal.AFi1fSDK.$13 = r1
            int r0 = r0 % 2
            r1 = -1
            if (r0 != 0) goto L1c
            int r6 = r6 * 87
            byte[] r0 = com.appsflyer.internal.AFi1fSDK.$$a
            int r7 = r7 + 6
            int r8 = r8 + 61
            byte[] r2 = new byte[r6]
            int r6 = r6 + 41
            if (r0 != 0) goto L35
            goto L2d
        L1c:
            int r0 = 49 - r6
            byte[] r2 = com.appsflyer.internal.AFi1fSDK.$$a
            int r7 = r7 + 33
            int r8 = r8 + 4
            byte[] r0 = new byte[r0]
            int r6 = 48 - r6
            r4 = r2
            if (r2 != 0) goto L33
            r2 = r0
            r0 = r4
        L2d:
            r7 = r6
            r3 = r2
            r2 = r1
            r1 = r0
            r0 = r8
            goto L5e
        L33:
            r2 = r0
            r0 = r4
        L35:
            int r1 = r1 + 1
            byte r3 = (byte) r7
            r2[r1] = r3
            if (r1 != r6) goto L51
            java.lang.String r6 = new java.lang.String
            r7 = 0
            r6.<init>(r2, r7)
            int r7 = com.appsflyer.internal.AFi1fSDK.$13
            int r7 = r7 + 115
            int r8 = r7 % 128
            com.appsflyer.internal.AFi1fSDK.$12 = r8
            int r7 = r7 % 2
            if (r7 != 0) goto L4f
            return r6
        L4f:
            r6 = 0
            throw r6
        L51:
            int r8 = r8 + 1
            r3 = r0[r8]
            r4 = r7
            r7 = r6
            r6 = r4
            r5 = r0
            r0 = r8
            r8 = r3
            r3 = r2
            r2 = r1
            r1 = r5
        L5e:
            int r8 = -r8
            int r6 = r6 + r8
            r8 = r0
            r0 = r1
            r1 = r2
            r2 = r3
            r4 = r7
            r7 = r6
            r6 = r4
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFi1fSDK.$$c(int, int, short):java.lang.String");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(34:(2:987|988)|17|(32:983|984|(0)|21|(0)|23|24|(0)(0)|(0)|(0)|37|38|39|40|41|(0)(0)|44|(0)|967|49|50|51|(0)(0)|54|(0)(0)|57|58|59|(0)|962|960|961)|19|(0)|21|(0)|23|24|(0)(0)|(0)|(0)|37|38|39|40|41|(0)(0)|44|(0)|967|49|50|51|(0)(0)|54|(0)(0)|57|58|59|(0)|962|960|961) */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0533, code lost:
        if (r6 == null) goto L868;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x054f, code lost:
        if (r6 == null) goto L868;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0551, code lost:
        r2 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0553, code lost:
        if (r7 != null) goto L865;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0555, code lost:
        r2 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0557, code lost:
        if (r10 != null) goto L867;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0559, code lost:
        java.lang.System.currentTimeMillis();
        java.lang.System.currentTimeMillis();
        r2 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0561, code lost:
        r2 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x01fd, code lost:
        if (r1 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:673:0x1a0a, code lost:
        r1 = r50.getDeclaredConstructor(java.lang.Object.class, java.lang.Boolean.TYPE);
        r1.setAccessible(true);
        com.appsflyer.internal.AFi1fSDK.f10935d = r1.newInstance(r2, java.lang.Boolean.valueOf(!r46));
     */
    /* JADX WARN: Code restructure failed: missing block: B:674:0x1a32, code lost:
        r45.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:675:0x1a35, code lost:
        com.appsflyer.internal.AFi1fSDK.$11 = (com.appsflyer.internal.AFi1fSDK.$10 + 97) % 128;
        r6 = r48;
        r15 = 1;
        r38 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:676:0x1a4f, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0465, code lost:
        r5 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:1017:0x0276 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1084:0x0234 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1147:0x1e86 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1152:0x1a0a A[EDGE_INSN: B:1152:0x1a0a->B:673:0x1a0a ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1157:0x1e74 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02e4 A[Catch: Exception -> 0x01c5, TRY_ENTER, TRY_LEAVE, TryCatch #57 {Exception -> 0x01c5, blocks: (B:8:0x019e, B:10:0x01b5, B:43:0x02e4, B:49:0x0356, B:59:0x03a8, B:61:0x03fe, B:73:0x0444, B:78:0x0459, B:83:0x0462, B:90:0x046e, B:875:0x1df6, B:879:0x1e5f, B:884:0x1e76, B:886:0x1e7a, B:889:0x1e8c, B:882:0x1e67, B:39:0x02a0, B:46:0x0334, B:44:0x02f8, B:40:0x02c0, B:51:0x036d, B:891:0x1ecb, B:892:0x1ef3), top: B:963:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:448:0x11b6 A[Catch: all -> 0x1195, TryCatch #55 {all -> 0x1195, blocks: (B:432:0x118e, B:434:0x1194, B:437:0x1197, B:446:0x11b0, B:448:0x11b6, B:449:0x11b7, B:463:0x11e4, B:465:0x11ea, B:468:0x11ee, B:478:0x1211, B:480:0x124b, B:481:0x1273), top: B:960:0x0e9a }] */
    /* JADX WARN: Removed duplicated region for block: B:449:0x11b7 A[Catch: all -> 0x1195, TRY_LEAVE, TryCatch #55 {all -> 0x1195, blocks: (B:432:0x118e, B:434:0x1194, B:437:0x1197, B:446:0x11b0, B:448:0x11b6, B:449:0x11b7, B:463:0x11e4, B:465:0x11ea, B:468:0x11ee, B:478:0x1211, B:480:0x124b, B:481:0x1273), top: B:960:0x0e9a }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0354 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:621:0x17b0  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x19cd A[Catch: all -> 0x19b8, TryCatch #69 {all -> 0x19b8, blocks: (B:638:0x19a1, B:647:0x19c7, B:649:0x19cd, B:650:0x19ce, B:673:0x1a0a, B:699:0x1a8e, B:689:0x1a77, B:691:0x1a7d, B:694:0x1a80, B:714:0x1b12, B:716:0x1b18, B:717:0x1b19, B:738:0x1b5f, B:740:0x1b65, B:741:0x1b66, B:761:0x1bb6, B:763:0x1bbc, B:764:0x1bbd, B:773:0x1bec, B:775:0x1bf2, B:776:0x1bf3, B:787:0x1c22, B:789:0x1c28, B:790:0x1c29, B:261:0x0a22, B:260:0x09f2, B:513:0x1390, B:631:0x18c7, B:630:0x1845, B:629:0x1816, B:701:0x1ac9, B:702:0x1af1, B:262:0x0a4f), top: B:981:0x19a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:650:0x19ce A[Catch: all -> 0x19b8, TryCatch #69 {all -> 0x19b8, blocks: (B:638:0x19a1, B:647:0x19c7, B:649:0x19cd, B:650:0x19ce, B:673:0x1a0a, B:699:0x1a8e, B:689:0x1a77, B:691:0x1a7d, B:694:0x1a80, B:714:0x1b12, B:716:0x1b18, B:717:0x1b19, B:738:0x1b5f, B:740:0x1b65, B:741:0x1b66, B:761:0x1bb6, B:763:0x1bbc, B:764:0x1bbd, B:773:0x1bec, B:775:0x1bf2, B:776:0x1bf3, B:787:0x1c22, B:789:0x1c28, B:790:0x1c29, B:261:0x0a22, B:260:0x09f2, B:513:0x1390, B:631:0x18c7, B:630:0x1845, B:629:0x1816, B:701:0x1ac9, B:702:0x1af1, B:262:0x0a4f), top: B:981:0x19a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:851:0x1d56 A[Catch: all -> 0x1a4f, TryCatch #120 {all -> 0x1a4f, blocks: (B:811:0x1c7e, B:674:0x1a32, B:827:0x1cdd, B:829:0x1ce3, B:830:0x1ce4, B:849:0x1d50, B:851:0x1d56, B:852:0x1d57, B:806:0x1c75, B:253:0x0983), top: B:1133:0x1a32 }] */
    /* JADX WARN: Removed duplicated region for block: B:852:0x1d57 A[Catch: all -> 0x1a4f, TRY_LEAVE, TryCatch #120 {all -> 0x1a4f, blocks: (B:811:0x1c7e, B:674:0x1a32, B:827:0x1cdd, B:829:0x1ce3, B:830:0x1ce4, B:849:0x1d50, B:851:0x1d56, B:852:0x1d57, B:806:0x1c75, B:253:0x0983), top: B:1133:0x1a32 }] */
    /* JADX WARN: Removed duplicated region for block: B:878:0x1e53  */
    /* JADX WARN: Removed duplicated region for block: B:886:0x1e7a A[Catch: Exception -> 0x01c5, TRY_LEAVE, TryCatch #57 {Exception -> 0x01c5, blocks: (B:8:0x019e, B:10:0x01b5, B:43:0x02e4, B:49:0x0356, B:59:0x03a8, B:61:0x03fe, B:73:0x0444, B:78:0x0459, B:83:0x0462, B:90:0x046e, B:875:0x1df6, B:879:0x1e5f, B:884:0x1e76, B:886:0x1e7a, B:889:0x1e8c, B:882:0x1e67, B:39:0x02a0, B:46:0x0334, B:44:0x02f8, B:40:0x02c0, B:51:0x036d, B:891:0x1ecb, B:892:0x1ef3), top: B:963:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:899:0x1efe  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:975:0x0254 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v134, types: [short, int] */
    static {
        /*
            Method dump skipped, instructions count: 8078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFi1fSDK.<clinit>():void");
    }

    private AFi1fSDK() {
    }

    public static int getCurrencyIso4217Code(int i10) {
        Object obj;
        int i11 = $11;
        int i12 = i11 + 97;
        $10 = i12 % 128;
        if (i12 % 2 != 0) {
            obj = f10935d;
            int i13 = 11 / 0;
        } else {
            obj = f10935d;
        }
        $10 = ((i11 ^ 85) + ((i11 & 85) << 1)) % 128;
        try {
            byte[] bArr = $$a;
            int intValue = ((Integer) Class.forName($$c(bArr[27], bArr[82], (short) 563), true, (ClassLoader) unregisterClient).getMethod($$c(bArr[718], bArr[427], (short) DataLoaderHelper.DATALOADER_KEY_MAX_LOADER_LOG_NUM), Integer.TYPE).invoke(obj, Integer.valueOf(i10))).intValue();
            $10 = ($11 + 41) % 128;
            return intValue;
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th2;
        }
    }

    public static Object getMediationNetwork(char c10, int i10, int i11) {
        int i12 = $10;
        Object obj = f10935d;
        int i13 = ((i12 & 105) + (i12 | 105)) % 128;
        $11 = i13;
        $10 = ((i13 & 79) + (i13 | 79)) % 128;
        try {
            Object[] objArr = {Character.valueOf(c10), Integer.valueOf(i10), Integer.valueOf(i11)};
            byte[] bArr = $$a;
            Class<?> cls = Class.forName($$c(bArr[27], bArr[82], (short) 563), true, (ClassLoader) unregisterClient);
            String $$c = $$c(bArr[506], bArr[427], (short) 1128);
            Class cls2 = Character.TYPE;
            Class cls3 = Integer.TYPE;
            return cls.getMethod($$c, cls2, cls3, cls3).invoke(obj, objArr);
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th2;
        }
    }

    private static void getRevenue(int i10, int i11) {
        int i12 = $10 + 49;
        $11 = i12 % 128;
        if (i12 % 2 != 0) {
            return;
        }
        throw null;
    }

    static void init$0() {
        int i10;
        int i11 = $11;
        int i12 = (i11 & 11) + (i11 | 11);
        $10 = i12 % 128;
        if (i12 % 2 != 0) {
            byte[] bArr = new byte[1181];
            System.arraycopy(")\u009f5»ó\nò\u0003\u0006\u00056Çõ\u0011ñ\bÿ\u0006ðEëÔ\u0003ýýö÷\u0010ô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=îûÝ8Ï\u000f\u000fùø\u0000ô\u0002?Íñ\u0000ý\rúó\u0014óó\nò\u0003\u0006\u00056Íñ\u0000BíÞï\u000bó\rõû%ìö\r\u0004ýî\u0003\u0000\r÷ú3Ñ\u0000\u0004\u0003\u0006\u0002í\u000bú\u0001ó\nò\u0003\u0006\u00056Íñ\u0000BíÑ\u0000)Ûý\r\u0001õù\u0002ñ+Û\u0005õ\u000b\bõ+Ñ\u0000\u0004\u0003\u0006\u0002í\u000bú\u0001\u0002ñ.Ýý\u0007ò/Û÷\u0002ñ1Ô\u000bÿ\"âþû\u0003!Û÷\u0002ñ1âþû\u0003!Û÷Ë\u0003í\u00132Ë\u0003í\u00132\të\u00153ÅúAèÝý\u0007\të\u00153ÅúAº\u0007ý\fû÷\të\u00153Â\u000bó\u00079ÛÚ\u0006ÿ\u000fø\u0002ñ$Þ\u0003ÿ\u000bóþûô\u000bÿ\u0006ü\u0002þû\u0003ó\nò\u0003\u0006\u00056¿üEìÍ\fý\b@Î\u0011óÿ\nú\u0001\u000fùì\u0016ûú\u0002ó\u0017å\tõ\u000f\u0015ú\u0016ø\të\u00153ÅúAåú\nÍ\u0015þõü\u000bú\u0001î\u0003\u0000\r÷ú ëü\b\u0018äý\u0000\u0003ö\të\u00153ÅúAèÝý\u0007\u0016Ú\u0001\u0004û\u0001!ß\u0002\r\u0004ô÷ýü\u000e\u0015ý\u0013øÎî\u0000\u000eñ\u0001DÌô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=ýú\u0004\u0000ÿ\u0003\u0002ùÖ+Ð1Ôû-\u0002Ô6\u0002ñ\"íò\u0004ú\u0003\u000fþ\të\u00153À\tñFÙ\u0003\u0006\u0002ñ$ïí\f\të\u00153ÅúAìÍ\u000f\u0000\u0001ó\r\u0001\u001bÛþû\u0001!ß\u0002\r\u0004ô\të\u00153ÅúAåÛþû\u0001!ß\u0002\r\u0004ô\të\u00153ÅúAêãí\u0013\u0018Ûþû\u0001!ß\u0002\r\u0004ô\r\u0004ý\u001eÑ\t\u0000ó\të\u00153ÅúAìÉ\u0005\u000f$Ï\u0000\u0011è0Ûþû\u0001!ß\u0002\r\u0004ôô\u0002?Íñ\u0000ý\rúó\u0014óDÅûú\u000fó\u0004\rõ>íûÛ:¿\u001f\u000fùô\u0002?Íñ\u0000ý\rúó\u0014óDÅûú\u000fó\u0004\rõ>íûÝ8Ï\u000f\u000fùø\u0000û\u0005Ý\u0012íï\u0011÷ù\u0010!ãí\u0013\b\u0002ù\r\u0004ý\u000eñ\"í\u0004ý\u0015á\u0002ó\u0015ü\u0014ø\u0005\tõ\u000f\u0002ñ.\u0002\të\u00153ÅúAèÝý\u0007!ßò\u0010ñ\tùü\u0005ýú\u000b\u000b\u0003õö\rþ=»ú\u0006ÿ\u000fø?êßí2Ýý\u0007ý\u000eý ßí\u0002ñ3ßï\u0004\u0003÷\u0001\u000f\u0015ïí\fÿù\u0007ñ\u000f\u0002ñ1×\u000bî\u0000'Ý\u000eýÿó\të\u00153¹\u0001\u000bý>´\u0011ùBÔñù'Ûþû\u0001!ß\u0002\r\u0004ô\u0002ñ&éí\u0004/×ú\u0002ù\të\u00153¹\u0001\u000bý>´\u0011ùBÔñù+×ú\u0002ù\u0002ñ!êï\u0015\të\u00153ÅúAìÉ\u0005\u000f$Ï\u0000\u0011è*Ú\u0001\u0004û\u0001!ß\u0002\r\u0004ô\u0005-É\u0005\u000f$Ï\u0000\u0011è\të\u00153ÅúAë×ýü\u000e\u0004ÿö\u0007\u0003õö\rþ=»ú\u0006ÿ\u000fø?åÛ!èøþýù5ßí5×\u000bî\u0000'Ý\u000eýÿó\të\u00153À\u0005úAìÉ\u0005\u000f#Í\u000f\u0000\u0001ó\të\u00153Â\u000bó\u00079ë×\u000bî\u0000'Ý\u000eýÿó\u0005\u0011ñ\u0003õö\rþ=»ú\u0006ÿ\u000fø?ìáî\u000e!ßí5×\u000bî\u0000'Ý\u000eýÿó\u000fí\f\u001cãöÿ\rí\u000bó\u0011\u0019ã\u0007ð\u0011ïù5Û÷\r\u0002ï\u0005ý\t\u0004ò\rí\u000bó\u0011\u0019ã\u0007ð\u0011ïù)ïí\f#Ù\u0007ø\b÷ú\u0001\u0002ñ1Ô\u0002ý\u0001\u0001\t÷ú Û\t\u000b\u0015ø\u0018øý\u000eý!×\u000bî\u0000ô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=îûÝ8Ë\u0013\u000fù'\u00adÎî\u0000\u000eñ\u0001DÌô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=Ë3Ï\u0000/ú\u0005Ò\u0001)ÿ\bþûÒ4Î7\u0015ù\u0017øºÿOº\u0005õ\u0000\n\u0001þøøS´\u0007ÿòK\u0002ñ'è\u0001û\bí\u000bú\u0001 éñý\bý\u0007\u0002ñ1Î\u0003\u0000\r÷\u000bê0Ö\u0004;\u0002\u0001úôÔ\u000bÿ\u0002ñ\"íï\u0011÷ù\u0010".getBytes("ISO-8859-1"), 0, bArr, 0, 1181);
            $$a = bArr;
            i10 = 69;
        } else {
            byte[] bArr2 = new byte[1181];
            System.arraycopy(")\u009f5»ó\nò\u0003\u0006\u00056Çõ\u0011ñ\bÿ\u0006ðEëÔ\u0003ýýö÷\u0010ô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=îûÝ8Ï\u000f\u000fùø\u0000ô\u0002?Íñ\u0000ý\rúó\u0014óó\nò\u0003\u0006\u00056Íñ\u0000BíÞï\u000bó\rõû%ìö\r\u0004ýî\u0003\u0000\r÷ú3Ñ\u0000\u0004\u0003\u0006\u0002í\u000bú\u0001ó\nò\u0003\u0006\u00056Íñ\u0000BíÑ\u0000)Ûý\r\u0001õù\u0002ñ+Û\u0005õ\u000b\bõ+Ñ\u0000\u0004\u0003\u0006\u0002í\u000bú\u0001\u0002ñ.Ýý\u0007ò/Û÷\u0002ñ1Ô\u000bÿ\"âþû\u0003!Û÷\u0002ñ1âþû\u0003!Û÷Ë\u0003í\u00132Ë\u0003í\u00132\të\u00153ÅúAèÝý\u0007\të\u00153ÅúAº\u0007ý\fû÷\të\u00153Â\u000bó\u00079ÛÚ\u0006ÿ\u000fø\u0002ñ$Þ\u0003ÿ\u000bóþûô\u000bÿ\u0006ü\u0002þû\u0003ó\nò\u0003\u0006\u00056¿üEìÍ\fý\b@Î\u0011óÿ\nú\u0001\u000fùì\u0016ûú\u0002ó\u0017å\tõ\u000f\u0015ú\u0016ø\të\u00153ÅúAåú\nÍ\u0015þõü\u000bú\u0001î\u0003\u0000\r÷ú ëü\b\u0018äý\u0000\u0003ö\të\u00153ÅúAèÝý\u0007\u0016Ú\u0001\u0004û\u0001!ß\u0002\r\u0004ô÷ýü\u000e\u0015ý\u0013øÎî\u0000\u000eñ\u0001DÌô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=ýú\u0004\u0000ÿ\u0003\u0002ùÖ+Ð1Ôû-\u0002Ô6\u0002ñ\"íò\u0004ú\u0003\u000fþ\të\u00153À\tñFÙ\u0003\u0006\u0002ñ$ïí\f\të\u00153ÅúAìÍ\u000f\u0000\u0001ó\r\u0001\u001bÛþû\u0001!ß\u0002\r\u0004ô\të\u00153ÅúAåÛþû\u0001!ß\u0002\r\u0004ô\të\u00153ÅúAêãí\u0013\u0018Ûþû\u0001!ß\u0002\r\u0004ô\r\u0004ý\u001eÑ\t\u0000ó\të\u00153ÅúAìÉ\u0005\u000f$Ï\u0000\u0011è0Ûþû\u0001!ß\u0002\r\u0004ôô\u0002?Íñ\u0000ý\rúó\u0014óDÅûú\u000fó\u0004\rõ>íûÛ:¿\u001f\u000fùô\u0002?Íñ\u0000ý\rúó\u0014óDÅûú\u000fó\u0004\rõ>íûÝ8Ï\u000f\u000fùø\u0000û\u0005Ý\u0012íï\u0011÷ù\u0010!ãí\u0013\b\u0002ù\r\u0004ý\u000eñ\"í\u0004ý\u0015á\u0002ó\u0015ü\u0014ø\u0005\tõ\u000f\u0002ñ.\u0002\të\u00153ÅúAèÝý\u0007!ßò\u0010ñ\tùü\u0005ýú\u000b\u000b\u0003õö\rþ=»ú\u0006ÿ\u000fø?êßí2Ýý\u0007ý\u000eý ßí\u0002ñ3ßï\u0004\u0003÷\u0001\u000f\u0015ïí\fÿù\u0007ñ\u000f\u0002ñ1×\u000bî\u0000'Ý\u000eýÿó\të\u00153¹\u0001\u000bý>´\u0011ùBÔñù'Ûþû\u0001!ß\u0002\r\u0004ô\u0002ñ&éí\u0004/×ú\u0002ù\të\u00153¹\u0001\u000bý>´\u0011ùBÔñù+×ú\u0002ù\u0002ñ!êï\u0015\të\u00153ÅúAìÉ\u0005\u000f$Ï\u0000\u0011è*Ú\u0001\u0004û\u0001!ß\u0002\r\u0004ô\u0005-É\u0005\u000f$Ï\u0000\u0011è\të\u00153ÅúAë×ýü\u000e\u0004ÿö\u0007\u0003õö\rþ=»ú\u0006ÿ\u000fø?åÛ!èøþýù5ßí5×\u000bî\u0000'Ý\u000eýÿó\të\u00153À\u0005úAìÉ\u0005\u000f#Í\u000f\u0000\u0001ó\të\u00153Â\u000bó\u00079ë×\u000bî\u0000'Ý\u000eýÿó\u0005\u0011ñ\u0003õö\rþ=»ú\u0006ÿ\u000fø?ìáî\u000e!ßí5×\u000bî\u0000'Ý\u000eýÿó\u000fí\f\u001cãöÿ\rí\u000bó\u0011\u0019ã\u0007ð\u0011ïù5Û÷\r\u0002ï\u0005ý\t\u0004ò\rí\u000bó\u0011\u0019ã\u0007ð\u0011ïù)ïí\f#Ù\u0007ø\b÷ú\u0001\u0002ñ1Ô\u0002ý\u0001\u0001\t÷ú Û\t\u000b\u0015ø\u0018øý\u000eý!×\u000bî\u0000ô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=îûÝ8Ë\u0013\u000fù'\u00adÎî\u0000\u000eñ\u0001DÌô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=Ë3Ï\u0000/ú\u0005Ò\u0001)ÿ\bþûÒ4Î7\u0015ù\u0017øºÿOº\u0005õ\u0000\n\u0001þøøS´\u0007ÿòK\u0002ñ'è\u0001û\bí\u000bú\u0001 éñý\bý\u0007\u0002ñ1Î\u0003\u0000\r÷\u000bê0Ö\u0004;\u0002\u0001úôÔ\u000bÿ\u0002ñ\"íï\u0011÷ù\u0010".getBytes("ISO-8859-1"), 0, bArr2, 0, 1181);
            $$a = bArr2;
            i10 = 112;
        }
        $$b = i10;
    }

    public static int getCurrencyIso4217Code(Object obj) {
        Object obj2;
        int i10 = $11;
        int i11 = (i10 & 63) + (i10 | 63);
        int i12 = i11 % 128;
        $10 = i12;
        if (i11 % 2 != 0) {
            obj2 = f10935d;
            int i13 = 46 / 0;
        } else {
            obj2 = f10935d;
        }
        $11 = (i12 + 51) % 128;
        try {
            byte[] bArr = $$a;
            int intValue = ((Integer) Class.forName($$c(bArr[27], bArr[82], (short) 563), true, (ClassLoader) unregisterClient).getMethod($$c(bArr[452], bArr[427], (short) ($$b | MediaPlayer.MEDIA_PLAYER_OPTION_DUMMYSURFACE_FORBID)), Object.class).invoke(obj2, obj)).intValue();
            $10 = ($11 + 9) % 128;
            return intValue;
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th2;
        }
    }
}
