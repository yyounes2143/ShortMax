package b7;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.autofill.HintConstants;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.v0;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* compiled from: Util.java */
/* loaded from: classes4.dex */
public final class s0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f2506a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f2507b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f2508c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f2509d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f2510e;

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f2511f;

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f2512g;

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f2513h;

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f2514i;

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f2515j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static HashMap<String, String> f2516k;

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f2517l;

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f2518m;

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f2519n;

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f2520o;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f2506a = i10;
        String str = Build.DEVICE;
        f2507b = str;
        String str2 = Build.MANUFACTURER;
        f2508c = str2;
        String str3 = Build.MODEL;
        f2509d = str3;
        f2510e = str + ", " + str3 + ", " + str2 + ", " + i10;
        f2511f = new byte[0];
        f2512g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f2513h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f2514i = Pattern.compile("%([A-Fa-f0-9]{2})");
        f2515j = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f2517l = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", SRStrategy.MEDIAINFO_KEY_CACHE_SIZE, "dut", "nl", "ger", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR, "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", ScarConstants.IN_SIGNAL_KEY, "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", IVideoEventLogger.FEATURE_KEY_SR, "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f2518m = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f2519n = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f2520o = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID, 252, 251, 242, 245, 216, 223, 214, 209, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL, VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266, VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED, 184, 173, 170, 163, 164, 249, 254, 247, 240, VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE, 226, VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL, VideoRef.VALUE_VIDEO_REF_CONST_DEPTH, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 204, 203, 230, 225, VideoRef.VALUE_VIDEO_REF_CATEGORY, VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X, 250, 253, 244, 243};
    }

    public static String A(byte[] bArr) {
        return new String(bArr, h7.c.f52595c);
    }

    public static <T> T[] A0(T[] tArr, int i10) {
        boolean z10;
        if (i10 <= tArr.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        return (T[]) Arrays.copyOf(tArr, i10);
    }

    public static String B(byte[] bArr, int i10, int i11) {
        return new String(bArr, i10, i11, h7.c.f52595c);
    }

    public static <T> T[] B0(T[] tArr, int i10, int i11) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        if (i11 <= tArr.length) {
            z11 = true;
        }
        a.a(z11);
        return (T[]) Arrays.copyOfRange(tArr, i10, i11);
    }

    @RequiresApi(21)
    public static int C(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    public static boolean C0(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    @SuppressLint({"InlinedApi"})
    public static int D(int i10) {
        if (i10 != 12) {
            switch (i10) {
                case 1:
                    return 4;
                case 2:
                    return 12;
                case 3:
                    return 28;
                case 4:
                    return 204;
                case 5:
                    return 220;
                case 6:
                    return 252;
                case 7:
                    return 1276;
                case 8:
                    return 6396;
                default:
                    return 0;
            }
        }
        return 743676;
    }

    public static boolean D0(Parcel parcel) {
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    public static l1.b E(l1 l1Var, l1.b bVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean isPlayingAd = l1Var.isPlayingAd();
        boolean k10 = l1Var.k();
        boolean w10 = l1Var.w();
        boolean f10 = l1Var.f();
        boolean n10 = l1Var.n();
        boolean q10 = l1Var.q();
        boolean u10 = l1Var.getCurrentTimeline().u();
        l1.b.a d10 = new l1.b.a().b(bVar).d(4, !isPlayingAd);
        boolean z16 = false;
        if (k10 && !isPlayingAd) {
            z10 = true;
        } else {
            z10 = false;
        }
        l1.b.a d11 = d10.d(5, z10);
        if (w10 && !isPlayingAd) {
            z11 = true;
        } else {
            z11 = false;
        }
        l1.b.a d12 = d11.d(6, z11);
        if (!u10 && ((w10 || !n10 || k10) && !isPlayingAd)) {
            z12 = true;
        } else {
            z12 = false;
        }
        l1.b.a d13 = d12.d(7, z12);
        if (f10 && !isPlayingAd) {
            z13 = true;
        } else {
            z13 = false;
        }
        l1.b.a d14 = d13.d(8, z13);
        if (!u10 && ((f10 || (n10 && q10)) && !isPlayingAd)) {
            z14 = true;
        } else {
            z14 = false;
        }
        l1.b.a d15 = d14.d(9, z14).d(10, !isPlayingAd);
        if (k10 && !isPlayingAd) {
            z15 = true;
        } else {
            z15 = false;
        }
        l1.b.a d16 = d15.d(11, z15);
        if (k10 && !isPlayingAd) {
            z16 = true;
        }
        return d16.d(12, z16).e();
    }

    @Nullable
    public static Intent E0(Context context, @Nullable BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        Intent registerReceiver;
        if (f2506a >= 33) {
            registerReceiver = context.registerReceiver(broadcastReceiver, intentFilter, 4);
            return registerReceiver;
        }
        return context.registerReceiver(broadcastReceiver, intentFilter);
    }

    public static int F(ByteBuffer byteBuffer, int i10) {
        int i11 = byteBuffer.getInt(i10);
        if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
            return Integer.reverseBytes(i11);
        }
        return i11;
    }

    public static long F0(long j10, long j11, long j12) {
        int i10 = (j12 > j11 ? 1 : (j12 == j11 ? 0 : -1));
        if (i10 >= 0 && j12 % j11 == 0) {
            return j10 / (j12 / j11);
        }
        if (i10 < 0 && j11 % j12 == 0) {
            return j10 * (j11 / j12);
        }
        return (long) (j10 * (j11 / j12));
    }

    public static String G(Object[] objArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < objArr.length; i10++) {
            sb2.append(objArr[i10].getClass().getSimpleName());
            if (i10 < objArr.length - 1) {
                sb2.append(", ");
            }
        }
        return sb2.toString();
    }

    public static void G0(long[] jArr, long j10, long j11) {
        int i10 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
        int i11 = 0;
        if (i10 >= 0 && j11 % j10 == 0) {
            long j12 = j11 / j10;
            while (i11 < jArr.length) {
                jArr[i11] = jArr[i11] / j12;
                i11++;
            }
        } else if (i10 < 0 && j10 % j11 == 0) {
            long j13 = j10 / j11;
            while (i11 < jArr.length) {
                jArr[i11] = jArr[i11] * j13;
                i11++;
            }
        } else {
            double d10 = j10 / j11;
            while (i11 < jArr.length) {
                jArr[i11] = (long) (jArr[i11] * d10);
                i11++;
            }
        }
    }

    public static String H(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return h7.a.f(networkCountryIso);
            }
        }
        return h7.a.f(Locale.getDefault().getCountry());
    }

    public static String[] H0(String str, String str2) {
        return str.split(str2, -1);
    }

    public static Point I(Context context) {
        Display display;
        DisplayManager displayManager;
        if (f2506a >= 17 && (displayManager = (DisplayManager) context.getSystemService("display")) != null) {
            display = displayManager.getDisplay(0);
        } else {
            display = null;
        }
        if (display == null) {
            display = ((WindowManager) a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return J(context, display);
    }

    public static String[] I0(String str, String str2) {
        return str.split(str2, 2);
    }

    public static Point J(Context context, Display display) {
        String f02;
        if (display.getDisplayId() == 0 && r0(context)) {
            if (f2506a < 28) {
                f02 = f0("sys.display-size");
            } else {
                f02 = f0("vendor.display-size");
            }
            if (!TextUtils.isEmpty(f02)) {
                try {
                    String[] H0 = H0(f02.trim(), TextureRenderKeys.KEY_IS_X);
                    if (H0.length == 2) {
                        int parseInt = Integer.parseInt(H0[0]);
                        int parseInt2 = Integer.parseInt(H0[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                q.c("Util", "Invalid display size: " + f02);
            }
            if ("Sony".equals(f2508c) && f2509d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        int i10 = f2506a;
        if (i10 >= 23) {
            O(display, point);
        } else if (i10 >= 17) {
            N(display, point);
        } else {
            M(display, point);
        }
        return point;
    }

    public static String[] J0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        return H0(str.trim(), "(\\s*,\\s*)");
    }

    public static Looper K() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            return Looper.getMainLooper();
        }
        return myLooper;
    }

    @Nullable
    public static ComponentName K0(Context context, Intent intent) {
        ComponentName startForegroundService;
        if (f2506a >= 26) {
            startForegroundService = context.startForegroundService(intent);
            return startForegroundService;
        }
        return context.startService(intent);
    }

    public static Locale L() {
        if (f2506a >= 24) {
            return Locale.getDefault(Locale.Category.DISPLAY);
        }
        return Locale.getDefault();
    }

    public static long L0(long j10, long j11, long j12) {
        long j13 = j10 - j11;
        if (((j10 ^ j13) & (j11 ^ j10)) < 0) {
            return j12;
        }
        return j13;
    }

    private static void M(Display display, Point point) {
        display.getSize(point);
    }

    public static byte[] M0(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    @RequiresApi(17)
    private static void N(Display display, Point point) {
        display.getRealSize(point);
    }

    public static long N0(int i10, int i11) {
        return O0(i11) | (O0(i10) << 32);
    }

    @RequiresApi(23)
    private static void O(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static long O0(int i10) {
        return i10 & 4294967295L;
    }

    public static int P(int i10) {
        if (i10 != 2 && i10 != 4) {
            if (i10 != 10) {
                if (i10 != 7) {
                    if (i10 != 8) {
                        switch (i10) {
                            case 15:
                                return 6003;
                            case 16:
                            case 18:
                                return AuthCode.StatusCode.PERMISSION_NOT_AUTHORIZED;
                            case 17:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                                return AuthCode.StatusCode.PERMISSION_NOT_EXIST;
                            default:
                                switch (i10) {
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                        return 6002;
                                    default:
                                        return AuthCode.StatusCode.PERMISSION_EXPIRED;
                                }
                        }
                    }
                    return 6003;
                }
                return AuthCode.StatusCode.PERMISSION_NOT_AUTHORIZED;
            }
            return AuthCode.StatusCode.PERMISSION_NOT_EXIST;
        }
        return AuthCode.StatusCode.PERMISSION_NOT_AUTHORIZED;
    }

    public static CharSequence P0(CharSequence charSequence, int i10) {
        if (charSequence.length() > i10) {
            return charSequence.subSequence(0, i10);
        }
        return charSequence;
    }

    public static int Q(@Nullable String str) {
        String[] H0;
        int length;
        boolean z10;
        if (str == null || (length = (H0 = H0(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = H0[length - 1];
        if (length >= 3 && "neg".equals(H0[length - 2])) {
            z10 = true;
        } else {
            z10 = false;
        }
        try {
            int parseInt = Integer.parseInt((String) a.e(str2));
            if (z10) {
                return -parseInt;
            }
            return parseInt;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static long Q0(long j10) {
        if (j10 != -9223372036854775807L && j10 != Long.MIN_VALUE) {
            return j10 / 1000;
        }
        return j10;
    }

    public static String R(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return "YES";
                        }
                        throw new IllegalStateException();
                    }
                    return "NO_EXCEEDS_CAPABILITIES";
                }
                return "NO_UNSUPPORTED_DRM";
            }
            return "NO_UNSUPPORTED_TYPE";
        }
        return "NO";
    }

    public static void R0(Parcel parcel, boolean z10) {
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static String S(Locale locale) {
        if (f2506a >= 21) {
            return T(locale);
        }
        return locale.toString();
    }

    @RequiresApi(21)
    private static String T(Locale locale) {
        return locale.toLanguageTag();
    }

    public static long U(long j10, float f10) {
        if (f10 == 1.0f) {
            return j10;
        }
        return Math.round(j10 * f10);
    }

    public static long V(long j10) {
        if (j10 == -9223372036854775807L) {
            return System.currentTimeMillis();
        }
        return j10 + SystemClock.elapsedRealtime();
    }

    public static int W(int i10) {
        if (i10 != 8) {
            if (i10 != 16) {
                if (i10 != 24) {
                    if (i10 != 32) {
                        return 0;
                    }
                    return 805306368;
                }
                return 536870912;
            }
            return 2;
        }
        return 3;
    }

    public static v0 X(int i10, int i11, int i12) {
        return new v0.b().e0(MimeTypes.AUDIO_RAW).H(i11).f0(i12).Y(i10).E();
    }

    public static int Y(int i10, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 268435456) {
                        if (i10 != 536870912) {
                            if (i10 != 805306368) {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            return i11 * 3;
                        }
                    }
                }
                return i11 * 4;
            }
            return i11;
        }
        return i11 * 2;
    }

    public static long Z(long j10, float f10) {
        if (f10 == 1.0f) {
            return j10;
        }
        return Math.round(j10 / f10);
    }

    public static int a0(int i10) {
        if (i10 != 13) {
            switch (i10) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }
        return 1;
    }

    public static long b(long j10, long j11, long j12) {
        long j13 = j10 + j11;
        if (((j10 ^ j13) & (j11 ^ j13)) < 0) {
            return j12;
        }
        return j13;
    }

    public static String b0(StringBuilder sb2, Formatter formatter, long j10) {
        String str;
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        if (j10 < 0) {
            str = "-";
        } else {
            str = "";
        }
        long abs = (Math.abs(j10) + 500) / 1000;
        long j11 = abs % 60;
        long j12 = (abs / 60) % 60;
        long j13 = abs / 3600;
        sb2.setLength(0);
        if (j13 > 0) {
            return formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j13), Long.valueOf(j12), Long.valueOf(j11)).toString();
        }
        return formatter.format("%s%02d:%02d", str, Long.valueOf(j12), Long.valueOf(j11)).toString();
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            if (obj2 == null) {
                return true;
            }
            return false;
        }
        return obj.equals(obj2);
    }

    public static String[] c0() {
        String[] d02 = d0();
        for (int i10 = 0; i10 < d02.length; i10++) {
            d02[i10] = y0(d02[i10]);
        }
        return d02;
    }

    public static <T extends Comparable<? super T>> int d(List<? extends Comparable<? super T>> list, T t10, boolean z10, boolean z11) {
        int i10;
        int i11;
        int binarySearch = Collections.binarySearch(list, t10);
        if (binarySearch < 0) {
            i11 = ~binarySearch;
        } else {
            int size = list.size();
            while (true) {
                i10 = binarySearch + 1;
                if (i10 >= size || list.get(i10).compareTo(t10) != 0) {
                    break;
                }
                binarySearch = i10;
            }
            if (z10) {
                i11 = binarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z11) {
            return Math.min(list.size() - 1, i11);
        }
        return i11;
    }

    private static String[] d0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return f2506a >= 24 ? e0(configuration) : new String[]{S(configuration.locale)};
    }

    public static int e(long[] jArr, long j10, boolean z10, boolean z11) {
        int i10;
        int i11;
        int binarySearch = Arrays.binarySearch(jArr, j10);
        if (binarySearch < 0) {
            i11 = ~binarySearch;
        } else {
            while (true) {
                i10 = binarySearch + 1;
                if (i10 >= jArr.length || jArr[i10] != j10) {
                    break;
                }
                binarySearch = i10;
            }
            if (z10) {
                i11 = binarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z11) {
            return Math.min(jArr.length - 1, i11);
        }
        return i11;
    }

    @RequiresApi(24)
    private static String[] e0(Configuration configuration) {
        return H0(configuration.getLocales().toLanguageTags(), ",");
    }

    public static int f(r rVar, long j10, boolean z10, boolean z11) {
        int i10;
        int c10 = rVar.c() - 1;
        int i11 = 0;
        while (i11 <= c10) {
            int i12 = (i11 + c10) >>> 1;
            if (rVar.b(i12) < j10) {
                i11 = i12 + 1;
            } else {
                c10 = i12 - 1;
            }
        }
        if (z10 && (i10 = c10 + 1) < rVar.c() && rVar.b(i10) == j10) {
            return i10;
        }
        if (z11 && c10 == -1) {
            return 0;
        }
        return c10;
    }

    @Nullable
    private static String f0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e10) {
            q.d("Util", "Failed to read system property " + str, e10);
            return null;
        }
    }

    public static <T extends Comparable<? super T>> int g(List<? extends Comparable<? super T>> list, T t10, boolean z10, boolean z11) {
        int i10;
        int i11;
        int binarySearch = Collections.binarySearch(list, t10);
        if (binarySearch < 0) {
            i11 = -(binarySearch + 2);
        } else {
            while (true) {
                i10 = binarySearch - 1;
                if (i10 < 0 || list.get(i10).compareTo(t10) != 0) {
                    break;
                }
                binarySearch = i10;
            }
            if (z10) {
                i11 = binarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z11) {
            return Math.max(0, i11);
        }
        return i11;
    }

    public static String g0(int i10) {
        switch (i10) {
            case -2:
                return DevicePublicKeyStringDef.NONE;
            case -1:
                return "unknown";
            case 0:
                return DataLoaderHelper.PRELOAD_DEFAULT_SCENE;
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return MimeTypes.BASE_TYPE_TEXT;
            case 4:
                return "image";
            case 5:
                return TtmlNode.TAG_METADATA;
            case 6:
                return "camera motion";
            default:
                if (i10 >= 10000) {
                    return "custom (" + i10 + ")";
                }
                return "?";
        }
    }

    public static int h(int[] iArr, int i10, boolean z10, boolean z11) {
        int i11;
        int i12;
        int binarySearch = Arrays.binarySearch(iArr, i10);
        if (binarySearch < 0) {
            i12 = -(binarySearch + 2);
        } else {
            while (true) {
                i11 = binarySearch - 1;
                if (i11 < 0 || iArr[i11] != i10) {
                    break;
                }
                binarySearch = i11;
            }
            if (z10) {
                i12 = binarySearch;
            } else {
                i12 = i11;
            }
        }
        if (z11) {
            return Math.max(0, i12);
        }
        return i12;
    }

    public static byte[] h0(String str) {
        return str.getBytes(h7.c.f52595c);
    }

    public static int i(long[] jArr, long j10, boolean z10, boolean z11) {
        int i10;
        int i11;
        int binarySearch = Arrays.binarySearch(jArr, j10);
        if (binarySearch < 0) {
            i11 = -(binarySearch + 2);
        } else {
            while (true) {
                i10 = binarySearch - 1;
                if (i10 < 0 || jArr[i10] != j10) {
                    break;
                }
                binarySearch = i10;
            }
            if (z10) {
                i11 = binarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z11) {
            return Math.max(0, i11);
        }
        return i11;
    }

    public static int i0(Uri uri) {
        int j02;
        String scheme = uri.getScheme();
        if (scheme != null && h7.a.a("rtsp", scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int lastIndexOf = lastPathSegment.lastIndexOf(46);
        if (lastIndexOf >= 0 && (j02 = j0(lastPathSegment.substring(lastIndexOf + 1))) != 4) {
            return j02;
        }
        Matcher matcher = f2515j.matcher((CharSequence) a.e(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String group = matcher.group(2);
        if (group != null) {
            if (group.contains("format=mpd-time-csf")) {
                return 0;
            }
            if (group.contains("format=m3u8-aapl")) {
                return 2;
            }
        }
        return 1;
    }

    public static int j0(String str) {
        String e10 = h7.a.e(str);
        e10.hashCode();
        char c10 = 65535;
        switch (e10.hashCode()) {
            case 104579:
                if (e10.equals("ism")) {
                    c10 = 0;
                    break;
                }
                break;
            case 108321:
                if (e10.equals(TTVideoEngineInterface.FORMAT_TYPE_MPD)) {
                    c10 = 1;
                    break;
                }
                break;
            case 3242057:
                if (e10.equals("isml")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3299913:
                if (e10.equals("m3u8")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 2:
                return 1;
            case 1:
                return 0;
            case 3:
                return 2;
            default:
                return 4;
        }
    }

    public static int k0(Uri uri, @Nullable String str) {
        if (str == null) {
            return i0(uri);
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -979127466:
                if (str.equals(MimeTypes.APPLICATION_M3U8)) {
                    c10 = 0;
                    break;
                }
                break;
            case -156749520:
                if (str.equals(MimeTypes.APPLICATION_SS)) {
                    c10 = 1;
                    break;
                }
                break;
            case 64194685:
                if (str.equals(MimeTypes.APPLICATION_MPD)) {
                    c10 = 2;
                    break;
                }
                break;
            case 1154777587:
                if (str.equals("application/x-rtsp")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 1;
            case 2:
                return 0;
            case 3:
                return 3;
            default:
                return 4;
        }
    }

    public static int l(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    public static boolean l0(g0 g0Var, g0 g0Var2, @Nullable Inflater inflater) {
        if (g0Var.a() <= 0) {
            return false;
        }
        if (g0Var2.b() < g0Var.a()) {
            g0Var2.c(g0Var.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(g0Var.d(), g0Var.e(), g0Var.a());
        int i10 = 0;
        while (true) {
            try {
                i10 += inflater.inflate(g0Var2.d(), i10, g0Var2.b() - i10);
                if (inflater.finished()) {
                    g0Var2.O(i10);
                    inflater.reset();
                    return true;
                } else if (inflater.needsDictionary() || inflater.needsInput()) {
                    break;
                } else if (i10 == g0Var2.b()) {
                    g0Var2.c(g0Var2.b() * 2);
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static void m(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean m0(Context context) {
        if (f2506a >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return true;
        }
        return false;
    }

    public static int n(long j10, long j11) {
        int i10 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i10 < 0) {
            return -1;
        }
        if (i10 == 0) {
            return 0;
        }
        return 1;
    }

    public static boolean n0(int i10) {
        if (i10 != 536870912 && i10 != 805306368 && i10 != 4) {
            return false;
        }
        return true;
    }

    public static float o(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f10, f12));
    }

    public static boolean o0(int i10) {
        if (i10 != 3 && i10 != 2 && i10 != 268435456 && i10 != 536870912 && i10 != 805306368 && i10 != 4) {
            return false;
        }
        return true;
    }

    public static int p(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i10, i12));
    }

    public static boolean p0(int i10) {
        if (i10 != 10 && i10 != 13) {
            return false;
        }
        return true;
    }

    public static long q(long j10, long j11, long j12) {
        return Math.max(j11, Math.min(j10, j12));
    }

    public static boolean q0(Uri uri) {
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && !"file".equals(scheme)) {
            return false;
        }
        return true;
    }

    public static int r(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = f2519n[((i12 >>> 24) ^ (bArr[i10] & 255)) & 255] ^ (i12 << 8);
            i10++;
        }
        return i12;
    }

    public static boolean r0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return true;
        }
        return false;
    }

    public static int s(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = f2520o[i12 ^ (bArr[i10] & 255)];
            i10++;
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread s0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static Handler t(Looper looper, @Nullable Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static int t0(int[] iArr, int i10) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (iArr[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public static Handler u() {
        return v(null);
    }

    private static String u0(String str) {
        int i10 = 0;
        while (true) {
            String[] strArr = f2518m;
            if (i10 < strArr.length) {
                if (str.startsWith(strArr[i10])) {
                    return strArr[i10 + 1] + str.substring(strArr[i10].length());
                }
                i10 += 2;
            } else {
                return str;
            }
        }
    }

    public static Handler v(@Nullable Handler.Callback callback) {
        return t((Looper) a.i(Looper.myLooper()), callback);
    }

    public static <T> void v0(List<T> list, int i10, int i11, int i12) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i13 = (i11 - i10) - 1; i13 >= 0; i13--) {
            arrayDeque.addFirst(list.remove(i10 + i13));
        }
        list.addAll(Math.min(i12, list.size()), arrayDeque);
    }

    public static Handler w() {
        return x(null);
    }

    public static long w0(long j10) {
        if (j10 != -9223372036854775807L && j10 != Long.MIN_VALUE) {
            return j10 * 1000;
        }
        return j10;
    }

    public static Handler x(@Nullable Handler.Callback callback) {
        return t(K(), callback);
    }

    public static ExecutorService x0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: b7.r0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread s02;
                s02 = s0.s0(str, runnable);
                return s02;
            }
        });
    }

    private static HashMap<String, String> y() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f2517l.length);
        int i10 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = f2517l;
            if (i10 < strArr.length) {
                hashMap.put(strArr[i10], strArr[i10 + 1]);
                i10 += 2;
            } else {
                return hashMap;
            }
        }
    }

    public static String y0(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (!replace.isEmpty() && !replace.equals(C.LANGUAGE_UNDETERMINED)) {
            str = replace;
        }
        String e10 = h7.a.e(str);
        String str2 = I0(e10, "-")[0];
        if (f2516k == null) {
            f2516k = y();
        }
        String str3 = f2516k.get(str2);
        if (str3 != null) {
            e10 = str3 + e10.substring(str2.length());
            str2 = str3;
        }
        if ("no".equals(str2) || "i".equals(str2) || "zh".equals(str2)) {
            return u0(e10);
        }
        return e10;
    }

    public static String z(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static <T> T[] z0(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static <T> T j(@Nullable T t10) {
        return t10;
    }

    public static <T> T[] k(T[] tArr) {
        return tArr;
    }
}
