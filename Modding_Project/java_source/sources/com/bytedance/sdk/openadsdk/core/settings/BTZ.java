package com.bytedance.sdk.openadsdk.core.settings;

import android.os.SystemClock;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.settings.Pfn;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public abstract class BTZ implements Pfn {
    private final String cFZ;
    private oJ kkU;
    private final ConcurrentHashMap<String, Object> tB = new ConcurrentHashMap<>();
    private final Object ex = new Object();
    private final Object Pfn = new Object();

    /* renamed from: ba  reason: collision with root package name */
    private final CountDownLatch f13240ba = new CountDownLatch(1);

    /* renamed from: so  reason: collision with root package name */
    private Properties f13241so = new Properties();
    private volatile boolean jFA = false;

    /* loaded from: classes3.dex */
    public interface oJ {
        void ZYk();

        void oJ();
    }

    public BTZ(String str, oJ oJVar) {
        this.cFZ = str;
        this.kkU = oJVar;
        ofl.oJ(new com.bytedance.sdk.component.so.so("SetL_".concat(String.valueOf(str))) { // from class: com.bytedance.sdk.openadsdk.core.settings.BTZ.1
            @Override // java.lang.Runnable
            public void run() {
                BTZ.this.oJ(false);
            }
        });
    }

    private void Pfn() {
        int i10;
        if (!this.jFA) {
            try {
                SystemClock.elapsedRealtime();
                if (ofl.ba()) {
                    i10 = 4;
                } else {
                    i10 = 8;
                }
                this.f13240ba.await(i10, TimeUnit.SECONDS);
            } catch (InterruptedException e10) {
                QSm.oJ("SdkSettings.Prop", "awaitLoadedLocked: ", e10);
            }
        }
    }

    private File ba() {
        return new File(si.oJ().getFilesDir(), this.cFZ);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ex() {
        oJ oJVar = this.kkU;
        if (oJVar != null) {
            oJVar.ZYk();
        }
    }

    public void tB() {
        File ba2 = ba();
        if (ba2.exists()) {
            ba2.delete();
        }
    }

    public boolean ZYk() {
        return this.jFA;
    }

    public String oJ(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return str2;
        }
        Pfn();
        return this.f13241so.getProperty(str, str2);
    }

    public int oJ(String str, int i10) {
        if (str != null && !str.isEmpty()) {
            Pfn();
            try {
                return Integer.parseInt(this.f13241so.getProperty(str, String.valueOf(i10)));
            } catch (NumberFormatException e10) {
                QSm.oJ("SdkSettings.Prop", "", e10);
            }
        }
        return i10;
    }

    public long oJ(String str, long j10) {
        if (str != null && !str.isEmpty()) {
            Pfn();
            try {
                return Long.parseLong(this.f13241so.getProperty(str, String.valueOf(j10)));
            } catch (NumberFormatException e10) {
                QSm.oJ("SdkSettings.Prop", "", e10);
            }
        }
        return j10;
    }

    public float oJ(String str, float f10) {
        if (str != null && !str.isEmpty()) {
            Pfn();
            try {
                return Float.parseFloat(this.f13241so.getProperty(str, String.valueOf(f10)));
            } catch (NumberFormatException e10) {
                QSm.oJ("SdkSettings.Prop", "", e10);
            }
        }
        return f10;
    }

    /* loaded from: classes3.dex */
    public class ZYk implements Pfn.oJ {
        private final Map<String, Object> ZYk = new HashMap();
        private final Object tB = new Object();

        public ZYk() {
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.oJ
        public void oJ() {
            Object obj;
            Properties properties = new Properties();
            synchronized (this.tB) {
                try {
                    properties.putAll(BTZ.this.f13241so);
                    boolean z10 = false;
                    for (Map.Entry<String, Object> entry : this.ZYk.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value != this && value != null) {
                            if (properties.containsKey(key) && (obj = properties.get(key)) != null && obj.equals(value)) {
                            }
                            properties.put(key, String.valueOf(value));
                            z10 = true;
                        }
                        if (properties.containsKey(key)) {
                            properties.remove(key);
                            z10 = true;
                        }
                    }
                    this.ZYk.clear();
                    if (z10) {
                        BTZ.this.oJ(properties);
                        BTZ.this.f13241so = properties;
                        BTZ.this.tB.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.oJ
        public Pfn.oJ oJ(String str, String str2) {
            synchronized (this.tB) {
                this.ZYk.put(str, str2);
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.oJ
        public Pfn.oJ oJ(String str, int i10) {
            synchronized (this.tB) {
                this.ZYk.put(str, Integer.valueOf(i10));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.oJ
        public Pfn.oJ oJ(String str, long j10) {
            synchronized (this.tB) {
                this.ZYk.put(str, Long.valueOf(j10));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.oJ
        public Pfn.oJ oJ(String str) {
            synchronized (this.tB) {
                this.ZYk.put(str, this);
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.oJ
        public Pfn.oJ oJ(String str, float f10) {
            synchronized (this.tB) {
                this.ZYk.put(str, Float.valueOf(f10));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.oJ
        public Pfn.oJ oJ(String str, boolean z10) {
            synchronized (this.tB) {
                this.ZYk.put(str, Boolean.valueOf(z10));
            }
            return this;
        }
    }

    public boolean oJ(String str, boolean z10) {
        if (str != null && !str.isEmpty()) {
            Pfn();
            try {
                return Boolean.parseBoolean(this.f13241so.getProperty(str, String.valueOf(z10)));
            } catch (Exception e10) {
                QSm.oJ("SdkSettings.Prop", "", e10);
            }
        }
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x00fc A[Catch: all -> 0x000b, TryCatch #6 {all -> 0x000b, blocks: (B:4:0x0003, B:7:0x0009, B:11:0x000e, B:13:0x0019, B:22:0x0049, B:23:0x004e, B:63:0x00f8, B:65:0x00fc, B:67:0x0100, B:68:0x0103, B:69:0x010a, B:29:0x005f, B:30:0x0062, B:39:0x0075, B:40:0x0078, B:45:0x0086, B:47:0x0090, B:49:0x009a, B:51:0x00af, B:52:0x00bf, B:54:0x00c5, B:56:0x00d7, B:59:0x00df, B:61:0x00ea, B:62:0x00ed, B:27:0x0056, B:34:0x0067), top: B:75:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(boolean r9) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.settings.BTZ.oJ(boolean):void");
    }

    public Pfn.oJ oJ() {
        return new ZYk();
    }

    public <T> T oJ(String str, T t10, Pfn.ZYk<T> zYk) {
        T ZYk2;
        if (str != null && !str.isEmpty()) {
            T t11 = (T) this.tB.get(str);
            if (t11 != null) {
                return t11;
            }
            Pfn();
            String property = this.f13241so.getProperty(str, null);
            if (property != null && zYk != null && (ZYk2 = zYk.ZYk(property)) != null) {
                this.tB.put(str, ZYk2);
                return ZYk2;
            }
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Properties properties) {
        FileOutputStream fileOutputStream;
        synchronized (this.Pfn) {
            File ba2 = ba();
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(ba2);
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                properties.store(fileOutputStream, (String) null);
                ba2.getAbsolutePath();
                com.bytedance.sdk.openadsdk.utils.PiB.oJ(fileOutputStream);
            } catch (Exception e11) {
                e = e11;
                fileOutputStream2 = fileOutputStream;
                QSm.oJ("SdkSettings.Prop", "saveToLocal: ", e);
                if (fileOutputStream2 != null) {
                    com.bytedance.sdk.openadsdk.utils.PiB.oJ(fileOutputStream2);
                }
                PiB.hwh();
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    com.bytedance.sdk.openadsdk.utils.PiB.oJ(fileOutputStream2);
                }
                throw th;
            }
        }
        PiB.hwh();
    }
}
