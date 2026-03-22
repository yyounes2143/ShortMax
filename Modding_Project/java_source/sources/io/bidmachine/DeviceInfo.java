package io.bidmachine;

import android.content.Context;
import android.media.AudioManager;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes7.dex */
public class DeviceInfo {
    private static final String OS_NAME = "android";
    private static volatile DeviceInfo instance;
    @NonNull
    private final w3 cache;
    @NonNull
    private final b cpu;
    @NonNull
    private final c gpu;
    @Nullable
    private String hwv;
    @Nullable
    private Boolean isRooted;
    public final boolean isTablet;
    @Nullable
    public final String manufacturer;
    @Nullable
    public final String model;
    @NonNull
    public final String osName;
    @NonNull
    public final String osVersion;
    @Nullable
    public final String phoneCarrier;
    @Nullable
    public final String phoneMCCMNC;
    public final float screenDensity;
    public final int screenDpi;
    @Nullable
    private Long totalDiskSpaceInMB;
    @NonNull
    private final a audio = new a();
    @NonNull
    private final d ram = new d();

    /* loaded from: classes7.dex */
    static final class a {
        a() {
        }

        @Nullable
        private AudioManager a(@NonNull Context context) {
            return (AudioManager) context.getSystemService("audio");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public Float b(@NonNull Context context) {
            int i10;
            AudioManager a10 = a(context);
            if (a10 == null) {
                return null;
            }
            int streamVolume = a10.getStreamVolume(3);
            int streamMaxVolume = a10.getStreamMaxVolume(3);
            if (Build.VERSION.SDK_INT >= 28) {
                i10 = a10.getStreamMinVolume(3);
            } else {
                i10 = 0;
            }
            int i11 = streamMaxVolume - i10;
            if (i11 == 0) {
                return Float.valueOf(0.0f);
            }
            return Float.valueOf((streamVolume - i10) / i11);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public Boolean c(@NonNull Context context) {
            AudioManager a10 = a(context);
            if (a10 == null) {
                return null;
            }
            int ringerMode = a10.getRingerMode();
            boolean z10 = true;
            if (ringerMode != 0 && ringerMode != 1) {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }
    }

    /* loaded from: classes7.dex */
    static final class b {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final w3 f53563a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f53564b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f53565c;

        b(@NonNull w3 w3Var) {
            this.f53563a = w3Var;
        }

        private void a() {
            e();
            if (TextUtils.isEmpty(this.f53564b)) {
                this.f53564b = Build.BOARD;
            }
            if (TextUtils.isEmpty(this.f53565c)) {
                this.f53565c = Build.HARDWARE;
            }
        }

        @Nullable
        private String b(String str) {
            Matcher matcher = Pattern.compile(":\\s*(.*)").matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            return null;
        }

        private void e() {
            RandomAccessFile randomAccessFile;
            Throwable th2;
            RandomAccessFile randomAccessFile2 = null;
            try {
                randomAccessFile = new RandomAccessFile("/proc/cpuinfo", "r");
                while (true) {
                    try {
                        String readLine = randomAccessFile.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (!readLine.startsWith("model name:") && !readLine.startsWith("Hardware:")) {
                            if (readLine.startsWith("vendor_id:")) {
                                this.f53565c = b(readLine);
                            }
                            if (this.f53564b == null && this.f53565c != null) {
                                break;
                            }
                        }
                        this.f53564b = b(readLine);
                        if (this.f53564b == null) {
                        }
                    } catch (Exception unused) {
                        randomAccessFile2 = randomAccessFile;
                        io.bidmachine.core.g.j(randomAccessFile2);
                        return;
                    } catch (Throwable th3) {
                        th2 = th3;
                        io.bidmachine.core.g.j(randomAccessFile);
                        throw th2;
                    }
                }
                io.bidmachine.core.g.j(randomAccessFile);
            } catch (Exception unused2) {
            } catch (Throwable th4) {
                randomAccessFile = null;
                th2 = th4;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public String c() {
            return this.f53564b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public String d() {
            return this.f53565c;
        }

        void f(@NonNull Context context) {
            if (TextUtils.isEmpty(this.f53564b)) {
                this.f53564b = this.f53563a.a(context, "cpu_name");
            }
            if (TextUtils.isEmpty(this.f53565c)) {
                this.f53565c = this.f53563a.a(context, "cpu_vendor");
            }
            if (TextUtils.isEmpty(this.f53564b) || TextUtils.isEmpty(this.f53565c)) {
                a();
                this.f53563a.b(context, "cpu_name", this.f53564b);
                this.f53563a.b(context, "cpu_vendor", this.f53565c);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class c {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final w3 f53566a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f53567b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f53568c;

        c(@NonNull w3 w3Var) {
            this.f53566a = w3Var;
        }

        private EGLConfig a(EGLDisplay eGLDisplay) {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr = new int[1];
            EGL14.eglChooseConfig(eGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr, 0);
            if (iArr[0] == 0) {
                return null;
            }
            return eGLConfigArr[0];
        }

        private void b(@Nullable EGLDisplay eGLDisplay, @Nullable EGLSurface eGLSurface, @Nullable EGLContext eGLContext) {
            if (eGLDisplay != null) {
                i(eGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
                if (eGLSurface != null) {
                    EGL14.eglDestroySurface(eGLDisplay, eGLSurface);
                }
                if (eGLContext != null) {
                    EGL14.eglDestroyContext(eGLDisplay, eGLContext);
                }
                EGL14.eglTerminate(eGLDisplay);
            }
        }

        private EGLContext c(EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            return EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        }

        private EGLSurface d(EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            return EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, new int[]{12375, 64, 12374, 64, 12344}, 0);
        }

        private void e() {
            EGLContext eGLContext;
            EGLSurface eGLSurface;
            EGLContext eGLContext2;
            EGLContext eGLContext3;
            EGLDisplay eGLDisplay = null;
            r0 = null;
            EGLContext eGLContext4 = null;
            EGLSurface eGLSurface2 = null;
            EGLDisplay eGLDisplay2 = null;
            try {
                EGLDisplay h10 = h();
                try {
                    EGLConfig a10 = a(h10);
                    if (a10 != null) {
                        eGLSurface = d(h10, a10);
                        try {
                            eGLContext4 = c(h10, a10);
                            i(h10, eGLSurface, eGLContext4);
                            this.f53567b = GLES20.glGetString(7937);
                            this.f53568c = GLES20.glGetString(7936);
                            eGLContext3 = eGLContext4;
                            eGLSurface2 = eGLSurface;
                        } catch (Exception unused) {
                            eGLContext2 = eGLContext4;
                            eGLDisplay2 = h10;
                            b(eGLDisplay2, eGLSurface, eGLContext2);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            eGLContext = eGLContext4;
                            eGLDisplay = h10;
                            b(eGLDisplay, eGLSurface, eGLContext);
                            throw th;
                        }
                    } else {
                        eGLContext3 = null;
                    }
                    b(h10, eGLSurface2, eGLContext3);
                } catch (Exception unused2) {
                    eGLSurface = null;
                    eGLDisplay2 = h10;
                    eGLContext2 = null;
                } catch (Throwable th3) {
                    th = th3;
                    eGLSurface = null;
                    eGLDisplay = h10;
                    eGLContext = null;
                }
            } catch (Exception unused3) {
                eGLContext2 = null;
                eGLSurface = null;
            } catch (Throwable th4) {
                th = th4;
                eGLContext = null;
                eGLSurface = null;
            }
        }

        private EGLDisplay h() {
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            int[] iArr = new int[2];
            EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1);
            return eglGetDisplay;
        }

        private void i(@Nullable EGLDisplay eGLDisplay, @Nullable EGLSurface eGLSurface, @Nullable EGLContext eGLContext) {
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public String f() {
            return this.f53567b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public String g() {
            return this.f53568c;
        }

        void j(@NonNull Context context) {
            if (TextUtils.isEmpty(this.f53567b)) {
                this.f53567b = this.f53566a.a(context, "gpu_name");
            }
            if (TextUtils.isEmpty(this.f53568c)) {
                this.f53568c = this.f53566a.a(context, "gpu_vendor");
            }
            if (TextUtils.isEmpty(this.f53567b) || TextUtils.isEmpty(this.f53568c)) {
                e();
                this.f53566a.b(context, "gpu_name", this.f53567b);
                this.f53566a.b(context, "gpu_vendor", this.f53568c);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class d {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Long f53569a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Long f53570b;

        d() {
        }

        @Nullable
        private String a(@Nullable String str) {
            Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            return null;
        }

        @Nullable
        private Long d(@Nullable String str) {
            if (str != null) {
                try {
                    return Long.valueOf(Long.parseLong(str) * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE);
                } catch (NumberFormatException unused) {
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public Long b() {
            return this.f53570b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public Long c() {
            return this.f53569a;
        }

        void e() {
            RandomAccessFile randomAccessFile;
            Throwable th2;
            RandomAccessFile randomAccessFile2 = null;
            try {
                randomAccessFile = new RandomAccessFile(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MEM_INFO, "r");
                while (true) {
                    try {
                        String readLine = randomAccessFile.readLine();
                        if (readLine != null) {
                            if (readLine.startsWith("MemTotal:")) {
                                this.f53569a = d(a(readLine));
                            } else if (readLine.startsWith("MemAvailable:")) {
                                this.f53570b = d(a(readLine));
                            }
                            if (this.f53569a != null && this.f53570b != null) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } catch (Exception unused) {
                        randomAccessFile2 = randomAccessFile;
                        io.bidmachine.core.g.j(randomAccessFile2);
                        return;
                    } catch (Throwable th3) {
                        th2 = th3;
                        io.bidmachine.core.g.j(randomAccessFile);
                        throw th2;
                    }
                }
                io.bidmachine.core.g.j(randomAccessFile);
            } catch (Exception unused2) {
            } catch (Throwable th4) {
                randomAccessFile = null;
                th2 = th4;
            }
        }
    }

    private DeviceInfo(@NonNull Context context) {
        w3 w3Var = new w3();
        this.cache = w3Var;
        this.cpu = new b(w3Var);
        this.gpu = new c(w3Var);
        this.osName = "android";
        this.osVersion = String.valueOf(Build.VERSION.SDK_INT);
        this.manufacturer = yq.b.b();
        this.model = yq.b.c();
        this.screenDpi = fr.c.l(context);
        this.screenDensity = yq.b.g(context);
        this.isTablet = yq.b.h(context);
        this.phoneMCCMNC = yq.b.e(context);
        this.phoneCarrier = yq.b.f(context);
    }

    @Nullable
    private String getKernelVersionThroughProcVersion() {
        RandomAccessFile randomAccessFile;
        Throwable th2;
        try {
            randomAccessFile = new RandomAccessFile("/proc/version", "r");
            try {
                String readLine = randomAccessFile.readLine();
                io.bidmachine.core.g.j(randomAccessFile);
                return readLine;
            } catch (Exception unused) {
                io.bidmachine.core.g.j(randomAccessFile);
                return null;
            } catch (Throwable th3) {
                th2 = th3;
                io.bidmachine.core.g.j(randomAccessFile);
                throw th2;
            }
        } catch (Exception unused2) {
            randomAccessFile = null;
        } catch (Throwable th4) {
            randomAccessFile = null;
            th2 = th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0055  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.Closeable, java.io.BufferedReader] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getKernelVersionThroughUName() {
        /*
            r5 = this;
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3e
            java.lang.String r2 = "uname -a"
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3e
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L35
            java.io.InputStream r3 = r1.getInputStream()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L35
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L35
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2e
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2e
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L4d
            io.bidmachine.core.g.j(r3)
            io.bidmachine.core.g.j(r2)
            r1.destroy()
            return r0
        L27:
            r0 = move-exception
            goto L41
        L29:
            r3 = move-exception
            r4 = r3
            r3 = r0
            r0 = r4
            goto L41
        L2e:
            r3 = r0
            goto L4d
        L30:
            r2 = move-exception
            r3 = r0
            r0 = r2
            r2 = r3
            goto L41
        L35:
            r2 = r0
        L36:
            r3 = r2
            goto L4d
        L38:
            r1 = move-exception
            r2 = r0
            r3 = r2
            r0 = r1
            r1 = r3
            goto L41
        L3e:
            r1 = r0
            r2 = r1
            goto L36
        L41:
            io.bidmachine.core.g.j(r3)
            io.bidmachine.core.g.j(r2)
            if (r1 == 0) goto L4c
            r1.destroy()
        L4c:
            throw r0
        L4d:
            io.bidmachine.core.g.j(r3)
            io.bidmachine.core.g.j(r2)
            if (r1 == 0) goto L58
            r1.destroy()
        L58:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.DeviceInfo.getKernelVersionThroughUName():java.lang.String");
    }

    @NonNull
    public static DeviceInfo obtain(@NonNull Context context) {
        DeviceInfo deviceInfo = instance;
        if (deviceInfo == null) {
            synchronized (DeviceInfo.class) {
                try {
                    deviceInfo = instance;
                    if (deviceInfo == null) {
                        deviceInfo = new DeviceInfo(context);
                        instance = deviceInfo;
                    }
                } finally {
                }
            }
        }
        return deviceInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public a getAudio() {
        return this.audio;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Long getAvailableDiskSpaceInMB() {
        try {
            if (!io.bidmachine.core.g.J()) {
                return null;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return Long.valueOf((statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / 1048576);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public b getCpu() {
        return this.cpu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public c getGpu() {
        return this.gpu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String getHWV() {
        String str = this.hwv;
        if (str != null) {
            return str;
        }
        String kernelVersionThroughProcVersion = getKernelVersionThroughProcVersion();
        if (!TextUtils.isEmpty(kernelVersionThroughProcVersion)) {
            this.hwv = kernelVersionThroughProcVersion;
            return kernelVersionThroughProcVersion;
        }
        String kernelVersionThroughUName = getKernelVersionThroughUName();
        this.hwv = kernelVersionThroughUName;
        return kernelVersionThroughUName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public d getRam() {
        return this.ram;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Long getTotalDiskSpaceInMB() {
        Long l10 = this.totalDiskSpaceInMB;
        if (l10 != null) {
            return l10;
        }
        try {
            if (!io.bidmachine.core.g.J()) {
                return null;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            Long valueOf = Long.valueOf((statFs.getBlockSizeLong() * statFs.getBlockCountLong()) / 1048576);
            this.totalDiskSpaceInMB = valueOf;
            return valueOf;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDeviceRooted() {
        Boolean bool = this.isRooted;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z10 = true;
        try {
            String[] strArr = {"/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su"};
            for (int i10 = 0; i10 < 8; i10++) {
                if (new File(strArr[i10]).exists()) {
                    this.isRooted = Boolean.TRUE;
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        Process process = null;
        try {
            process = Runtime.getRuntime().exec(new String[]{"/system/xbin/which", "su"});
            if (new BufferedReader(new InputStreamReader(process.getInputStream())).readLine() == null) {
                z10 = false;
            }
            this.isRooted = Boolean.valueOf(z10);
            process.destroy();
            return z10;
        } catch (Exception unused2) {
            if (process != null) {
                process.destroy();
            }
            this.isRooted = Boolean.FALSE;
            return false;
        } catch (Throwable th2) {
            if (process != null) {
                process.destroy();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateHwInfo(@NonNull Context context) {
        this.cpu.f(context);
        this.gpu.j(context);
        this.ram.e();
    }
}
