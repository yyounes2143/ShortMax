package com.huawei.hms.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextUtils;
import android.util.AndroidException;
import android.util.Base64;
import com.huawei.hms.support.log.HMSLog;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes5.dex */
public class ReadApkFileUtil {
    public static final String EMUI10_PK = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx4nUogUyMCmzHhaEb420yvpw9zBs+ETzE9Qm77bGxl1Iml9JEkBkNTsUWOstLgUBajNhV+BAMVBHKMEdzoQbL5kIHkTgUVM65yewd+5+BhrcB9OQ3LHp+0BN6aLKZh71T4WvsvHFhfhQpShuGWkRkSaVGLFTHxX70kpWLzeZ3RtqiEUNIufPR2SFCH6EmecJ+HdkmBOh603IblCpGxwSWse0fDI98wZBEmV88RFaiYEgyiezLlWvXzqIj6I/xuyd5nGAegjH2y3cmoDE6CubecoB1jf4KdgACXgdiQ4Oc63MfLGTor3l6RCqeUk4APAMtyhK83jc72W1sdXMd/sj2wIDAQAB";
    public static final String EMUI11_PK = "MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAqq2eRTMYr2JHLtvuZzfgPrgU8oatD4Rar9fOD7E00es2VhtB3vTyaT2BvYPUPA/nbkHRPak3EZX77CfWj9tzLgSHJE8XLk9C+2ESkdrxCDA6z7I8X+cBDnA05OlCJeZFjnUbjYB8SP8M3BttdrvqtVPxTkEJhchC7UXnMLaJ3kQ3ZPjN7ubjYzO4rv7EtEpqr2bX+qjnSLIZZuUXraxqfdBuhGDIYq62dNsqiyrhX1mfvA3+43N4ZIs3BdfSYII8BNFmFxf+gyf1aoq386R2kAjHcrfOOhjAbZh+R1OAGLWPCqi3E9nB8EsZkeoTW/oIP6pJvgL3bnxq+1viT2dmZyipMgcx/3N6FJqkd67j/sPMtPlHJuq8/s0silzs13jAw1WBV6tWHFkLGpkWGs8jp50wQtndtY8cCPl2XPGmdPN72agH+zsHuKqr/HOB2TuzzaO8rKlGIDQlzZcCSHB28nnvOyBVN9xzLkbYiLnHfd6bTwzNPeqjWrTnPwKyH3BPAgMBAAE=";
    public static final String KEY_SIGNATURE = "Signature:";
    public static final String KEY_SIGNATURE2 = "Signature2:";
    public static final String KEY_SIGNATURE3 = "Signature3:";

    /* renamed from: a  reason: collision with root package name */
    private static final String f22410a = "ReadApkFileUtil";

    /* renamed from: c  reason: collision with root package name */
    private static String f22412c;

    /* renamed from: d  reason: collision with root package name */
    private static String f22413d;

    /* renamed from: e  reason: collision with root package name */
    private static String f22414e;

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f22411b = Pattern.compile("\\s*|\t|\r|\n");

    /* renamed from: f  reason: collision with root package name */
    private static String f22415f = null;

    /* renamed from: g  reason: collision with root package name */
    private static String f22416g = null;

    private static String a(BufferedReader bufferedReader) throws IOException {
        int read;
        if (bufferedReader == null || (read = bufferedReader.read()) == -1) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder(10);
        while (read != -1) {
            char c10 = (char) read;
            if (c10 == '\n') {
                break;
            } else if (sb2.length() < 4096) {
                sb2.append(c10);
                read = bufferedReader.read();
            } else {
                throw new IOException("cert line is too long!");
            }
        }
        String sb3 = sb2.toString();
        if (!sb3.isEmpty() && sb3.endsWith("\r")) {
            return sb3.substring(0, sb3.length() - 1);
        }
        return sb3;
    }

    private static String b(String str) {
        if (str == null) {
            return "";
        }
        return f22411b.matcher(str).replaceAll("");
    }

    public static String bytesToString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            cArr2[i11] = cArr[(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >>> 4];
            cArr2[i11 + 1] = cArr[b10 & 15];
        }
        return String.valueOf(cArr2);
    }

    @TargetApi(19)
    private static ArrayList<String> c(byte[] bArr) {
        if (bArr == null) {
            HMSLog.e(f22410a, "manifest is null！");
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(byteArrayInputStream, StandardCharsets.UTF_8));
            try {
                if (!e(bufferedReader, arrayList)) {
                    bufferedReader.close();
                    byteArrayInputStream.close();
                    return null;
                }
                bufferedReader.close();
                byteArrayInputStream.close();
                return arrayList;
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException unused) {
            HMSLog.e(f22410a, "getManifestLinesArrary IOException!");
            return null;
        }
    }

    public static boolean checkSignature() {
        if (f22414e != null) {
            return n();
        }
        if (f22413d != null) {
            return l();
        }
        if (f22412c != null) {
            return d();
        }
        return false;
    }

    private static boolean d() {
        try {
            if (f(m("30820122300d06092a864886f70d01010105000382010f003082010a0282010100a3d269348ac59923f65e8111c337605e29a1d1bc54fa96c1445050dd14d8d63b10f9f0230bb87ef348183660bedcabfdec045e235ed96935799fcdb4af5c97717ff3b0954eaf1b723225b3a00f81cbd67ce6dc5a4c07f7741ad3bf1913a480c6e267ab1740f409edd2dc33c8b718a8e30e56d9a93f321723c1d0c9ea62115f996812ceef186954595e39a19b74245542c407f7dddb1d12e6eedcfc0bd7cd945ef7255ad0fc9e796258e0fb5e52a23013d15033a32b4071b65f3f924ae5c5761e22327b4d2ae60f4158a5eb15565ba079de29b81540f5fbb3be101a95357f367fc661d797074ff3826950029c52223e4594673a24a334cae62d63b838ba3df9770203010001"), g(f22416g, "SHA-256"), m(f22412c), "SHA256withRSA")) {
                HMSLog.i(f22410a, "verifyMDMSignatureV1 verify successful!");
                return true;
            }
            HMSLog.i(f22410a, "verifyMDMSignatureV1 verify failure!");
            return false;
        } catch (Exception e10) {
            String str = f22410a;
            HMSLog.i(str, "verifyMDMSignatureV1 MDM verify Exception!:" + e10.getMessage());
            return false;
        }
    }

    private static boolean e(BufferedReader bufferedReader, ArrayList<String> arrayList) throws IOException {
        String a10 = a(bufferedReader);
        boolean z10 = false;
        while (a10 != null) {
            if (a10.equals("Name: META-INF/HUAWEI.CER")) {
                String a11 = a(bufferedReader);
                while (true) {
                    if (a11 == null) {
                        break;
                    } else if (a11.startsWith("Name:")) {
                        a10 = a11;
                        break;
                    } else {
                        a11 = a(bufferedReader);
                    }
                }
                z10 = true;
            }
            if (a10.length() != 0) {
                arrayList.add(a10);
            }
            a10 = a(bufferedReader);
        }
        return z10;
    }

    private static boolean f(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) throws Exception {
        Signature signature = Signature.getInstance(str);
        signature.initVerify(KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr)));
        signature.update(bArr2);
        return signature.verify(bArr3);
    }

    @TargetApi(19)
    private static byte[] g(String str, String str2) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        messageDigest.update(str.getBytes(StandardCharsets.UTF_8.name()));
        return messageDigest.digest();
    }

    public static String getHmsPath(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo("com.huawei.hwid", 128).sourceDir;
        } catch (AndroidException | RuntimeException unused) {
            HMSLog.e(f22410a, "HMS is not found!");
            return null;
        }
    }

    @TargetApi(19)
    private static byte[] h(ArrayList<String> arrayList) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, StandardCharsets.UTF_8));
        try {
            try {
                Collections.sort(arrayList);
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String str = arrayList.get(i10);
                    bufferedWriter.write(str, 0, str.length());
                    bufferedWriter.write("\r\n", 0, 2);
                }
                bufferedWriter.flush();
            } catch (Exception e10) {
                HMSLog.i(f22410a, "getManifestBytesbySorted Exception!" + e10.getMessage());
            }
            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
            IOUtils.closeQuietly((Writer) bufferedWriter);
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
            IOUtils.closeQuietly((Writer) bufferedWriter);
            throw th2;
        }
    }

    private static byte[] i(ZipFile zipFile) {
        return j(zipFile, "META-INF/MANIFEST.MF");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @TargetApi(19)
    public static boolean isCertFound(String str) {
        ZipFile zipFile;
        boolean z10;
        StringBuilder sb2 = null;
        ZipFile zipFile2 = null;
        try {
            try {
                zipFile = new ZipFile(str);
            } catch (Throwable th2) {
                th = th2;
                zipFile = sb2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            if (zipFile.getEntry("META-INF/HUAWEI.CER") != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                k(j(zipFile, "META-INF/HUAWEI.CER"));
            }
            try {
                zipFile.close();
            } catch (IOException e11) {
                HMSLog.e(f22410a, "zipFile.close Exception!" + e11.getMessage());
            }
            return z10;
        } catch (Exception e12) {
            e = e12;
            zipFile2 = zipFile;
            HMSLog.e(f22410a, "isCertFound Exception!" + e.getMessage());
            if (zipFile2 == null) {
                return false;
            }
            try {
                zipFile2.close();
                return false;
            } catch (IOException e13) {
                String str2 = f22410a;
                sb2 = new StringBuilder();
                sb2.append("zipFile.close Exception!");
                sb2.append(e13.getMessage());
                HMSLog.e(str2, sb2.toString());
                return false;
            }
        } catch (Throwable th3) {
            th = th3;
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException e14) {
                    HMSLog.e(f22410a, "zipFile.close Exception!" + e14.getMessage());
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static byte[] j(ZipFile zipFile, String str) {
        Throwable th2;
        InputStream inputStream;
        Exception e10;
        Throwable th3;
        BufferedInputStream bufferedInputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream3;
        ByteArrayOutputStream byteArrayOutputStream4;
        ZipEntry entry = zipFile.getEntry(str);
        OutputStream outputStream = null;
        if (entry == null) {
            return null;
        }
        try {
            inputStream = zipFile.getInputStream(entry);
            if (inputStream == null) {
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly((InputStream) null);
                IOUtils.closeQuietly((OutputStream) null);
                IOUtils.closeQuietly((OutputStream) null);
                return null;
            }
            try {
                bufferedInputStream = new BufferedInputStream(inputStream);
            } catch (Exception e11) {
                e10 = e11;
                bufferedInputStream = null;
                byteArrayOutputStream = null;
                byteArrayOutputStream2 = byteArrayOutputStream;
                try {
                    HMSLog.i(f22410a, "getManifestBytes Exception!" + e10.getMessage());
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream2);
                    return null;
                } catch (Throwable th4) {
                    th3 = th4;
                    byteArrayOutputStream4 = byteArrayOutputStream2;
                    bufferedInputStream = bufferedInputStream;
                    byteArrayOutputStream3 = byteArrayOutputStream4;
                    outputStream = byteArrayOutputStream3;
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                    IOUtils.closeQuietly(outputStream);
                    throw th3;
                }
            } catch (Throwable th5) {
                th2 = th5;
                th3 = th2;
                bufferedInputStream = null;
                byteArrayOutputStream = null;
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                IOUtils.closeQuietly(outputStream);
                throw th3;
            }
            try {
                byte[] bArr = new byte[4096];
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
                    try {
                        for (int read = bufferedInputStream.read(bArr, 0, 4096); read > 0; read = bufferedInputStream.read(bArr, 0, 4096)) {
                            bufferedOutputStream.write(bArr, 0, read);
                        }
                        bufferedOutputStream.flush();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly((InputStream) bufferedInputStream);
                        IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                        IOUtils.closeQuietly((OutputStream) bufferedOutputStream);
                        return byteArray;
                    } catch (Exception e12) {
                        e10 = e12;
                        byteArrayOutputStream2 = bufferedOutputStream;
                        HMSLog.i(f22410a, "getManifestBytes Exception!" + e10.getMessage());
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly((InputStream) bufferedInputStream);
                        IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                        IOUtils.closeQuietly((OutputStream) byteArrayOutputStream2);
                        return null;
                    } catch (Throwable th6) {
                        th3 = th6;
                        byteArrayOutputStream3 = bufferedOutputStream;
                        outputStream = byteArrayOutputStream3;
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly((InputStream) bufferedInputStream);
                        IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                        IOUtils.closeQuietly(outputStream);
                        throw th3;
                    }
                } catch (Exception e13) {
                    e10 = e13;
                    byteArrayOutputStream2 = null;
                } catch (Throwable th7) {
                    th3 = th7;
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                    IOUtils.closeQuietly(outputStream);
                    throw th3;
                }
            } catch (Exception e14) {
                e10 = e14;
                byteArrayOutputStream = null;
                byteArrayOutputStream2 = byteArrayOutputStream;
                HMSLog.i(f22410a, "getManifestBytes Exception!" + e10.getMessage());
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                IOUtils.closeQuietly((OutputStream) byteArrayOutputStream2);
                return null;
            } catch (Throwable th8) {
                th3 = th8;
                byteArrayOutputStream = null;
                byteArrayOutputStream4 = null;
                bufferedInputStream = bufferedInputStream;
                byteArrayOutputStream3 = byteArrayOutputStream4;
                outputStream = byteArrayOutputStream3;
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                IOUtils.closeQuietly(outputStream);
                throw th3;
            }
        } catch (Exception e15) {
            e10 = e15;
            inputStream = null;
        } catch (Throwable th9) {
            th2 = th9;
            inputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v4 */
    @TargetApi(19)
    private static void k(byte[] bArr) {
        Throwable th2;
        BufferedReader bufferedReader;
        InputStream inputStream;
        ?? r22;
        BufferedReader bufferedReader2;
        InputStream inputStream2;
        if (bArr == null) {
            HMSLog.e(f22410a, "manifest is null！");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        BufferedReader bufferedReader3 = null;
        f22412c = null;
        f22413d = null;
        f22414e = null;
        try {
            inputStream = new ByteArrayInputStream(bArr);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
            } catch (Exception unused) {
            } catch (Throwable th3) {
                th2 = th3;
                r22 = inputStream;
                IOUtils.closeQuietly((InputStream) r22);
                IOUtils.closeQuietly((Reader) bufferedReader3);
                throw th2;
            }
            try {
                String a10 = a(bufferedReader);
                while (a10 != null) {
                    if (a10.length() != 0) {
                        if (a10.startsWith("ApkHash:")) {
                            f22415f = b(a10.substring(a10.indexOf(":") + 1));
                        }
                        if (a10.startsWith(KEY_SIGNATURE)) {
                            f22412c = b(a10.substring(a10.indexOf(":") + 1));
                            a10 = a(bufferedReader);
                        } else if (a10.startsWith(KEY_SIGNATURE2)) {
                            f22413d = b(a10.substring(a10.indexOf(":") + 1));
                            a10 = a(bufferedReader);
                        } else if (a10.startsWith(KEY_SIGNATURE3)) {
                            f22414e = b(a10.substring(a10.indexOf(":") + 1));
                            a10 = a(bufferedReader);
                        } else {
                            stringBuffer.append(a10);
                            stringBuffer.append("\r\n");
                        }
                    }
                    a10 = a(bufferedReader);
                }
                f22416g = stringBuffer.toString();
                inputStream2 = inputStream;
            } catch (Exception unused2) {
                bufferedReader3 = bufferedReader;
                try {
                    HMSLog.e(f22410a, "loadApkCert Exception!");
                    bufferedReader = bufferedReader3;
                    inputStream2 = inputStream;
                    IOUtils.closeQuietly(inputStream2);
                    IOUtils.closeQuietly((Reader) bufferedReader);
                } catch (Throwable th4) {
                    th2 = th4;
                    bufferedReader = bufferedReader3;
                    bufferedReader3 = inputStream;
                    bufferedReader2 = bufferedReader3;
                    bufferedReader3 = bufferedReader;
                    r22 = bufferedReader2;
                    IOUtils.closeQuietly((InputStream) r22);
                    IOUtils.closeQuietly((Reader) bufferedReader3);
                    throw th2;
                }
            } catch (Throwable th5) {
                th2 = th5;
                bufferedReader2 = inputStream;
                bufferedReader3 = bufferedReader;
                r22 = bufferedReader2;
                IOUtils.closeQuietly((InputStream) r22);
                IOUtils.closeQuietly((Reader) bufferedReader3);
                throw th2;
            }
        } catch (Exception unused3) {
            inputStream = null;
        } catch (Throwable th6) {
            th2 = th6;
            bufferedReader = null;
            bufferedReader2 = bufferedReader3;
            bufferedReader3 = bufferedReader;
            r22 = bufferedReader2;
            IOUtils.closeQuietly((InputStream) r22);
            IOUtils.closeQuietly((Reader) bufferedReader3);
            throw th2;
        }
        IOUtils.closeQuietly(inputStream2);
        IOUtils.closeQuietly((Reader) bufferedReader);
    }

    private static boolean l() {
        try {
        } catch (Exception e10) {
            String str = f22410a;
            HMSLog.i(str, "verifyMDMSignatureV2 MDM verify Exception!:" + e10.getMessage());
        }
        if (f(Base64.decode(EMUI10_PK, 0), g(f22416g, "SHA-256"), m(f22413d), "SHA256withRSA")) {
            HMSLog.i(f22410a, "verifyMDMSignatureV2 verify successful!");
            return true;
        }
        HMSLog.i(f22410a, "verifyMDMSignatureV2 verify failure!");
        return false;
    }

    private static byte[] m(String str) {
        int i10;
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        int length = str.length();
        if (length % 2 == 0) {
            i10 = length / 2;
        } else {
            i10 = (length / 2) + 1;
        }
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < length; i11 += 2) {
            int i12 = i11 + 1;
            if (i12 < length) {
                bArr[i11 / 2] = (byte) ((Character.digit(str.charAt(i11), 16) << 4) + Character.digit(str.charAt(i12), 16));
            } else {
                bArr[i11 / 2] = (byte) (Character.digit(str.charAt(i11), 16) << 4);
            }
        }
        return bArr;
    }

    private static boolean n() {
        try {
        } catch (Exception e10) {
            String str = f22410a;
            HMSLog.i(str, "verifyMDMSignatureV3 MDM verify Exception!:" + e10.getMessage());
        }
        if (f(Base64.decode(EMUI11_PK, 0), g(f22416g, "SHA-384"), m(f22414e), "SHA384withRSA")) {
            HMSLog.i(f22410a, "verifyMDMSignatureV3 verify successful!");
            return true;
        }
        HMSLog.i(f22410a, "verifyMDMSignatureV3 verify failure!");
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.zip.ZipFile] */
    public static boolean verifyApkHash(String str) {
        ZipFile zipFile;
        ZipFile zipFile2;
        String str2 = null;
        ZipFile zipFile3 = null;
        try {
            try {
                zipFile2 = new ZipFile(str);
            } catch (Throwable th2) {
                th = th2;
                zipFile = str2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            byte[] i10 = i(zipFile2);
            ArrayList<String> c10 = c(i10);
            if (c10 != null) {
                i10 = h(c10);
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(i10);
            String bytesToString = bytesToString(messageDigest.digest());
            String str3 = f22415f;
            if (str3 != null) {
                if (str3.equals(bytesToString)) {
                    try {
                        zipFile2.close();
                        return true;
                    } catch (Exception e11) {
                        String str4 = f22410a;
                        HMSLog.i(str4, "close stream Exception!" + e11.getMessage());
                        return true;
                    }
                }
            }
            try {
                zipFile2.close();
                return false;
            } catch (Exception e12) {
                String str5 = f22410a;
                HMSLog.i(str5, "close stream Exception!" + e12.getMessage());
                return false;
            }
        } catch (Exception e13) {
            e = e13;
            zipFile3 = zipFile2;
            String str6 = f22410a;
            HMSLog.i(str6, "verifyApkHash Exception!" + e.getMessage());
            if (zipFile3 != null) {
                try {
                    zipFile3.close();
                    return false;
                } catch (Exception e14) {
                    str2 = f22410a;
                    HMSLog.i(str2, "close stream Exception!" + e14.getMessage());
                    return false;
                }
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            zipFile = zipFile2;
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (Exception e15) {
                    String str7 = f22410a;
                    HMSLog.i(str7, "close stream Exception!" + e15.getMessage());
                }
            }
            throw th;
        }
    }
}
