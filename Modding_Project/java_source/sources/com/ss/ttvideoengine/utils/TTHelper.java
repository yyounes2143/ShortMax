package com.ss.ttvideoengine.utils;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import com.adjust.sdk.Constants;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.framework.common.ContainerUtils;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.ss.ttvideoengine.JniUtils;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngineConfig;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TTHelper {
    private static final String TAG = "TTHelper";
    private static String mAppPath = null;
    private static final String queryStrAllowCharset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~#[]!\\()*%";
    private static String sBoeSuffix = "";
    private static volatile String sLastExternalStorageState = null;
    private static volatile long sLastGetExternalStorageStateTime = -1;

    public static String appendQueryString(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (str.contains(str2)) {
                return str;
            }
            if (!str.contains("?")) {
                return str + "?" + str2;
            }
            return str + ContainerUtils.FIELD_DELIMITER + str2;
        }
        return str;
    }

    public static String base64Decode(String str, String str2) {
        if (TextUtils.isEmpty(str) || !isBase64(str)) {
            return str;
        }
        try {
            byte[] decode = Base64.decode(str, 0);
            if (TextUtils.isEmpty(str2)) {
                return new String(decode, "utf-8");
            }
            return JniUtils.getDecodedStrWithKey(decode, Base64.decode(str2, 0));
        } catch (Throwable th2) {
            TTVideoEngineLog.d(TAG, th2.toString());
            return "";
        }
    }

    public static byte[] base64DecodeToBytes(String str) {
        TTVideoEngineLog.d(TAG, "base64DecodeToBytes " + str);
        if (!TextUtils.isEmpty(str)) {
            try {
                return Base64.decode(str, 0);
            } catch (Throwable th2) {
                TTVideoEngineLog.e(TAG, "base64DecodeToBytes " + th2);
            }
        }
        return null;
    }

    @Nullable
    public static String buildBoeUrl(String str) {
        if (str == null) {
            return null;
        }
        if (TextUtils.isEmpty(sBoeSuffix)) {
            return str;
        }
        boolean contains = str.contains(sBoeSuffix);
        boolean isIP = isIP(str);
        if (str.startsWith("https")) {
            str = str.replace("https", ProxyConfig.MATCH_HTTP);
        }
        if (!isIP && str.indexOf(ProxyConfig.MATCH_HTTP) == 0 && !contains) {
            try {
                String host = new URL(str).getHost();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(host);
                sb2.append(String.format(".%s", sBoeSuffix));
                return str.replace(host, sb2);
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
                return str;
            }
        }
        return str;
    }

    public static String buildHttpUrl(String str) {
        if (!TextUtils.isEmpty(str) && str.startsWith("https")) {
            return str.replace("https", ProxyConfig.MATCH_HTTP);
        }
        return str;
    }

    public static String buildHttpsUrl(String str) {
        if (!TextUtils.isEmpty(str) && !str.contains("http://127.0.0.1")) {
            return str.replaceAll("http:", "https:");
        }
        return str;
    }

    public static StringBuilder buildUrlEncodedQuery(Map<String, Object> map) {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey()) && entry.getValue() != null) {
                try {
                    sb2.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                    sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb2.append(URLEncoder.encode(String.valueOf(entry.getValue()), "UTF-8"));
                    sb2.append(ContainerUtils.FIELD_DELIMITER);
                } catch (UnsupportedEncodingException unused) {
                }
            }
        }
        if (sb2.length() > 0) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2;
    }

    @Nullable
    private static String bytesToHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        if (bArr != null && bArr.length > 0) {
            for (byte b10 : bArr) {
                String hexString = Integer.toHexString(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                if (hexString.length() < 2) {
                    sb2.append(0);
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        }
        return null;
    }

    public static String computeMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (Exception unused) {
            return str;
        }
    }

    public static void configBoeSuffix(String str) {
        sBoeSuffix = str;
    }

    public static String customBase64Decode(String str) {
        if (str != null && str.length() != 0) {
            return str.replace("$", "_").replace("@", DomExceptionUtils.SEPARATOR).replace("#", ".");
        }
        return str;
    }

    public static String customBase64Encode(String str) {
        if (str != null && str.length() != 0) {
            return str.replace("_", "$").replace(DomExceptionUtils.SEPARATOR, "@").replace(".", "#");
        }
        return str;
    }

    @Nullable
    public static String decodeUrl(String str) {
        String str2 = "";
        while (!str2.equals(str)) {
            try {
                str2 = str;
                str = URLDecoder.decode(str, "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                return null;
            }
        }
        return str;
    }

    public static HashMap<String, Resolution> defaultAudioResolutionMap() {
        return new HashMap<String, Resolution>() { // from class: com.ss.ttvideoengine.utils.TTHelper.2
            {
                put(Constants.MEDIUM, Resolution.Standard);
                put("higher", Resolution.High);
                put("highest", Resolution.SuperHigh);
                put("original", Resolution.ExtremelyHigh);
                put("lossless", Resolution.FourK);
            }
        };
    }

    public static HashMap<String, Resolution> defaultVideoResolutionMap() {
        return new HashMap<String, Resolution>() { // from class: com.ss.ttvideoengine.utils.TTHelper.1
            {
                put("240p", Resolution.L_Standard);
                put("360p", Resolution.Standard);
                put("480p", Resolution.High);
                put("540p", Resolution.H_High);
                put("720p", Resolution.SuperHigh);
                put("1080p", Resolution.ExtremelyHigh);
                put("2k", Resolution.TwoK);
                put("4k", Resolution.FourK);
                put("hdr", Resolution.HDR);
                put("1080p 50fps", Resolution.ExtremelyHigh_50F);
                put("2k 50fps", Resolution.TwoK_50F);
                put("4k 50fps", Resolution.FourK_50F);
                put("1080p 60fps", Resolution.ExtremelyHigh_60F);
                put("2k 60fps", Resolution.TwoK_60F);
                put("4k 60fps", Resolution.FourK_60F);
                put("1080p 120fps", Resolution.ExtremelyHigh_120F);
                put("2k 120fps", Resolution.TwoK_120F);
                put("4k 120fps", Resolution.FourK_120F);
                put("240p HDR", Resolution.L_Standard_HDR);
                put("360p HDR", Resolution.Standard_HDR);
                put("480p HDR", Resolution.High_HDR);
                put("540p HDR", Resolution.H_High_HDR);
                put("720p HDR", Resolution.SuperHigh_HDR);
                put("1080p HDR", Resolution.ExtremelyHigh_HDR);
                put("2k HDR", Resolution.TwoK_HDR);
                put("4k HDR", Resolution.FourK_HDR);
                put("8k", Resolution.EightK);
                put("1080p+", Resolution.ExtremelyHighPlus);
            }
        };
    }

    public static void deleteBeforeDirFiles(Context context) {
        String appFilesPath;
        File[] listFiles;
        if (context == null || (appFilesPath = getAppFilesPath(context)) == null) {
            return;
        }
        File file = new File(appFilesPath);
        if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length != 0) {
            for (File file2 : listFiles) {
                if (file2.isFile() && file2.getName().matches("^[0-9]{1,15}\\.cach$")) {
                    file2.delete();
                }
            }
        }
    }

    @Nullable
    public static String encodeQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return Uri.encode(str, queryStrAllowCharset);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public static String encodeUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @Nullable
    public static Error errorWithJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new Error(jSONObject.optString("domain"), jSONObject.optInt(Module.ResponseKey.Code), jSONObject.optInt("innerCode"), jSONObject.optString("des"));
        } catch (Throwable th2) {
            TTVideoEngineLog.e("TTVideoEngineTTHelper", "generate error fail. " + th2 + " " + jSONObject);
            return null;
        }
    }

    public static String genTrackID(String str, long j10) {
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
            sb2.append("T");
        }
        sb2.append(j10);
        sb2.append("T");
        sb2.append(Integer.toString((int) (Math.random() * 65535.0d)));
        return sb2.toString();
    }

    @Nullable
    public static String getAppFilesPath(Context context) {
        String str = mAppPath;
        if (str != null) {
            return str;
        }
        if (context == null) {
            return null;
        }
        try {
            String absolutePath = context.getApplicationContext().getFilesDir().getAbsolutePath();
            mAppPath = absolutePath;
            return absolutePath;
        } catch (Exception unused) {
            return null;
        }
    }

    public static long getAvailableStorageSize(Context context) {
        if (context == null || Environment.getDataDirectory() == null) {
            return -1L;
        }
        return getDirectoryAvailableSize(context.getFilesDir().getParent());
    }

    public static Class<?> getClzUsingPluginLoader(int i10, String str) throws Exception {
        if (i10 >= 0 && !TextUtils.isEmpty(str)) {
            ClassLoader classLoader = TTVideoEngineConfig.getClassLoader(i10);
            if (classLoader == null) {
                return Class.forName(str);
            }
            return Class.forName(str, true, classLoader);
        }
        throw new Exception("pluginName or/and className is empty");
    }

    public static long getDirectoryAvailableSize(String str) {
        long blockSize;
        long availableBlocks;
        try {
            StatFs statFs = new StatFs(str);
            if (isAndroidJB2()) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return blockSize * availableBlocks;
        } catch (IllegalArgumentException unused) {
            return -1L;
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0024: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:13:0x0024 */
    /* JADX WARN: Removed duplicated region for block: B:42:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getFileMd5(java.io.File r7) {
        /*
            boolean r0 = r7.isFile()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r0]
            java.lang.String r3 = "MD5"
            java.security.MessageDigest r3 = java.security.MessageDigest.getInstance(r3)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
        L17:
            r7 = 0
            int r5 = r4.read(r2, r7, r0)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L26
            r6 = -1
            if (r5 == r6) goto L28
            r3.update(r2, r7, r5)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L26
            goto L17
        L23:
            r7 = move-exception
            r1 = r4
            goto L4b
        L26:
            r7 = move-exception
            goto L3d
        L28:
            r4.close()     // Catch: java.io.IOException -> L2c
            goto L30
        L2c:
            r7 = move-exception
            r7.printStackTrace()
        L30:
            byte[] r7 = r3.digest()
            java.lang.String r7 = bytesToHexString(r7)
            return r7
        L39:
            r7 = move-exception
            goto L4b
        L3b:
            r7 = move-exception
            r4 = r1
        L3d:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L23
            if (r4 == 0) goto L4a
            r4.close()     // Catch: java.io.IOException -> L46
            goto L4a
        L46:
            r7 = move-exception
            r7.printStackTrace()
        L4a:
            return r1
        L4b:
            if (r1 == 0) goto L55
            r1.close()     // Catch: java.io.IOException -> L51
            goto L55
        L51:
            r0 = move-exception
            r0.printStackTrace()
        L55:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.utils.TTHelper.getFileMd5(java.io.File):java.lang.String");
    }

    public static long getFreeSize(Context context) {
        if (context == null || !isExternalStorageWritable()) {
            return -1L;
        }
        return getAvailableStorageSize(context);
    }

    public static String getHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            if (hexString.length() < 2) {
                sb2.append(0);
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }

    public static Looper getLooper() {
        if (Looper.myLooper() != null) {
            return Looper.myLooper();
        }
        return Looper.getMainLooper();
    }

    public static String getParam(String str, String str2) {
        List<String> urlSlices = getUrlSlices(str, str2);
        if (urlSlices != null && urlSlices.size() != 0) {
            for (String str3 : urlSlices) {
                if (str3.startsWith(str2 + ContainerUtils.KEY_VALUE_DELIMITER)) {
                    return str3.substring(str2.length() + 1);
                }
            }
        }
        return null;
    }

    @Nullable
    private static List<String> getUrlSlices(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("[?]");
        if (split.length < 2) {
            return null;
        }
        String str3 = split[0];
        String str4 = split[1];
        int indexOf = str4.indexOf(str2 + ContainerUtils.KEY_VALUE_DELIMITER);
        if (indexOf == -1) {
            return null;
        }
        arrayList.add(str3);
        arrayList.add("?");
        arrayList.add(str4.substring(0, indexOf));
        int indexOf2 = str4.indexOf(ContainerUtils.FIELD_DELIMITER, indexOf);
        if (indexOf2 == -1) {
            arrayList.add(str4.substring(indexOf));
            return arrayList;
        }
        arrayList.add(str4.substring(indexOf, indexOf2));
        arrayList.add(str4.substring(indexOf2));
        return arrayList;
    }

    public static float getVolume(Context context) {
        return TTVideoEngineInternalHelper.getVolume(context);
    }

    public static String hmacSha1(String str) {
        byte[] settingSignature = JniUtils.getSettingSignature(str);
        if (settingSignature == null) {
            TTVideoEngineLog.d(TAG, "hmacSha1 signature is null");
            return null;
        }
        return getHexString(settingSignature);
    }

    public static boolean isAndroidJB2() {
        return true;
    }

    public static boolean isBase64(String str) {
        return Pattern.matches("^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$", str);
    }

    public static boolean isEmpty(JSONArray jSONArray) {
        return jSONArray == null || jSONArray.length() == 0;
    }

    public static boolean isExternalStorageWritable() {
        return "mounted".equals(safeGetExternalStorageState());
    }

    public static boolean isIP(String str) {
        if (str != null) {
            String str2 = "";
            if (!str.equals("")) {
                try {
                    str2 = new URL(str).getHost();
                } catch (Exception e10) {
                    TTVideoEngineLog.d(e10);
                }
                if (Pattern.compile("([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}").matcher(str2).find()) {
                    return true;
                }
                int indexOf = str.indexOf("[");
                int indexOf2 = str.indexOf("]");
                if (indexOf > 0 && indexOf2 > indexOf && str.substring(indexOf, indexOf2).indexOf(":") > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isStringHex(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("^[A-Fa-f0-9]+$");
    }

    public static boolean isTranscodeUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        TTVideoEngineLog.d("isTranscodeUrl", "----start check url:" + str);
        String queryParameter = Uri.parse(str).getQueryParameter("btag");
        if (TextUtils.isEmpty(queryParameter)) {
            TTVideoEngineLog.d("isTranscodeUrl", "get query value is null");
            return false;
        }
        TTVideoEngineLog.d("isTranscodeUrl", "get query value is:" + queryParameter);
        if (!isStringHex(queryParameter)) {
            TTVideoEngineLog.d("isTranscodeUrl", "not hex string");
            return false;
        }
        BigInteger bigInteger = new BigInteger(queryParameter, 16);
        BigInteger bigInteger2 = new BigInteger("80000", 16);
        if (bigInteger.and(bigInteger2).compareTo(bigInteger2) == 0) {
            TTVideoEngineLog.d("isTranscodeUrl", "end url is transcoded");
            return true;
        }
        TTVideoEngineLog.d("isTranscodeUrl", "****end url is not transcoded");
        return false;
    }

    public static boolean isTranscodeUrlList(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                if (isTranscodeUrl(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Nullable
    public static JSONObject jsonWithError(Error error) {
        JSONObject jSONObject = null;
        if (error == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("domain", error.domain);
                jSONObject2.put(Module.ResponseKey.Code, error.code);
                jSONObject2.put("innerCode", error.internalCode);
                jSONObject2.put("des", error.description);
                return jSONObject2;
            } catch (Throwable th2) {
                th = th2;
                jSONObject = jSONObject2;
                TTVideoEngineLog.e("TTVideoEngineTTHelper", "error to json fail. " + th + " " + jSONObject.toString());
                return jSONObject;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Nullable
    public static String keyFromFilePath(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (context != null) {
            String appFilesPath = getAppFilesPath(context);
            if (!TextUtils.isEmpty(appFilesPath)) {
                str.replace(appFilesPath, "");
            }
        }
        return md5(str);
    }

    public static String md5(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(str.getBytes());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : digest) {
                String hexString = Integer.toHexString(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                if (hexString.length() == 1) {
                    hexString = MBridgeConstans.ENDCARD_URL_TYPE_PL + hexString;
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException e10) {
            TTVideoEngineLog.d(e10);
            return "";
        }
    }

    @NonNull
    public static <T> T nonNullElse(@Nullable T t10, @NonNull T t11) {
        if (t10 == null) {
            return t11;
        }
        return t10;
    }

    public static String overrideUrlParam(String str, String str2, String str3) {
        List<String> urlSlices = getUrlSlices(str, str2);
        if (urlSlices != null && urlSlices.size() != 0) {
            StringBuilder sb2 = new StringBuilder();
            for (String str4 : urlSlices) {
                if (str4.startsWith(str2 + ContainerUtils.KEY_VALUE_DELIMITER)) {
                    sb2.append(str2);
                    sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb2.append(str3);
                } else {
                    sb2.append(str4);
                }
            }
            return sb2.toString();
        }
        return str;
    }

    public static int parseInt(Object obj) {
        obj.getClass();
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            return Integer.parseInt((String) obj);
        }
        throw new NumberFormatException("Can't format " + obj.getClass() + " to int");
    }

    public static void recursionDeleteFile(File file) {
        if (file == null) {
            return;
        }
        if (file.isFile()) {
            file.delete();
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                for (File file2 : listFiles) {
                    recursionDeleteFile(file2);
                }
                file.delete();
                return;
            }
            file.delete();
        }
    }

    public static String replaceHostInURL(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        try {
            String host = new URI(str).getHost();
            if (TextUtils.isEmpty(host)) {
                return str;
            }
            return str.replaceFirst(host, str2);
        } catch (URISyntaxException e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static String safeGetExternalStorageState() {
        if (!TextUtils.isEmpty(sLastExternalStorageState) && System.currentTimeMillis() - sLastGetExternalStorageStateTime < 5000) {
            return sLastExternalStorageState;
        }
        try {
            sLastGetExternalStorageStateTime = System.currentTimeMillis();
            sLastExternalStorageState = Environment.getExternalStorageState();
            return sLastExternalStorageState;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static float safeGetFloat(Map<String, Object> map, @NonNull String str, float f10) {
        Object obj;
        if (map == null) {
            obj = null;
        } else {
            obj = map.get(str);
        }
        if (obj instanceof Float) {
            return ((Float) obj).floatValue();
        }
        return f10;
    }

    public static int safeGetInt(Map<String, Object> map, @NonNull String str, int i10) {
        Object obj;
        if (map == null) {
            obj = null;
        } else {
            obj = map.get(str);
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return i10;
    }

    public static long safeGetLong(Map<String, Object> map, @NonNull String str, long j10) {
        Object obj;
        if (map == null) {
            obj = null;
        } else {
            obj = map.get(str);
        }
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        return j10;
    }

    @Nullable
    public static String safeGetString(Map<String, Object> map, @NonNull String str, @Nullable String str2) {
        Object obj;
        if (map == null) {
            obj = null;
        } else {
            obj = map.get(str);
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        return str2;
    }

    public static double safeParseDouble(JSONObject jSONObject, String str, double d10) {
        String optString = jSONObject.optString(str);
        if (TextUtils.isEmpty(optString)) {
            return d10;
        }
        try {
            return Double.parseDouble(optString);
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
            return d10;
        }
    }

    public static float safeParseFloat(JSONObject jSONObject, String str, float f10) {
        String optString = jSONObject.optString(str);
        if (TextUtils.isEmpty(optString)) {
            return f10;
        }
        try {
            return Float.parseFloat(optString);
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
            return f10;
        }
    }

    public static long safelyUnbox(Long l10) {
        return ((Long) nonNullElse(l10, 0L)).longValue();
    }

    public static int versionStringToInt(String str) {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        String[] split = str.split("\\.");
        if (split.length <= 0) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < split.length; i11++) {
            if (i11 == 0) {
                try {
                    i10 = Integer.parseInt(split[i11]);
                } catch (Exception unused) {
                }
            } else {
                i10 = (i10 * 100) + Integer.parseInt(split[i11]);
            }
        }
        return i10;
    }

    public static boolean isEmpty(Map map) {
        return map == null || map.size() == 0;
    }

    public static boolean isEmpty(String[] strArr) {
        return strArr == null || strArr.length == 0;
    }

    public static boolean isEmpty(List list) {
        return list == null || list.isEmpty();
    }

    public static String base64Decode(String str) {
        return base64Decode(str, null);
    }
}
