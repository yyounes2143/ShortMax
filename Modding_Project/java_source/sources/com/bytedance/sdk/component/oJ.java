package com.bytedance.sdk.component;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class oJ {
    @GuardedBy("TTPropHelper.class")
    private static ArrayMap<String, File> BTZ = null;
    private static ArrayMap<File, oJ> PiB = null;
    private static boolean ZYk = false;
    protected static InterfaceC0177oJ oJ;
    @GuardedBy("mLoadLock")
    private Properties Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private volatile boolean f12792ba;
    @GuardedBy("mLoadLock")
    private int cFZ;
    private final File dLZ;
    private final Object ex;
    @GuardedBy("mWriteLock")
    private long jFA;
    private final File kkU;
    @GuardedBy("this")

    /* renamed from: so  reason: collision with root package name */
    private long f12793so;
    private final Object tB;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ZYk {
        boolean Pfn;
        final Properties ZYk;
        @GuardedBy("mWritingToDiskLock")
        volatile boolean ex;
        final long oJ;
        final CountDownLatch tB;

        void oJ(boolean z10, boolean z11) {
            this.Pfn = z10;
            this.ex = z11;
            this.tB.countDown();
        }

        private ZYk(long j10, Properties properties) {
            this.tB = new CountDownLatch(1);
            this.ex = false;
            this.Pfn = false;
            this.oJ = j10;
            this.ZYk = properties;
        }
    }

    /* renamed from: com.bytedance.sdk.component.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0177oJ {
        ExecutorService getExecutorService();

        HandlerThread getSafeHandlerThread(String str, int i10);
    }

    private oJ(File file) {
        Object obj = new Object();
        this.tB = obj;
        this.ex = new Object();
        this.Pfn = new Properties();
        this.f12792ba = false;
        this.cFZ = 0;
        this.kkU = file;
        this.dLZ = oJ(file);
        synchronized (obj) {
            this.f12792ba = false;
        }
        InterfaceC0177oJ interfaceC0177oJ = oJ;
        if (interfaceC0177oJ != null && interfaceC0177oJ.getExecutorService() != null) {
            oJ.getExecutorService().execute(new Runnable() { // from class: com.bytedance.sdk.component.oJ.2
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.oJ();
                }
            });
        } else {
            new Thread("TTPropHelper") { // from class: com.bytedance.sdk.component.oJ.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    oJ.this.oJ();
                }
            }.start();
        }
    }

    static /* synthetic */ int Pfn(oJ oJVar) {
        int i10 = oJVar.cFZ;
        oJVar.cFZ = i10 + 1;
        return i10;
    }

    static /* synthetic */ long ba(oJ oJVar) {
        long j10 = oJVar.f12793so;
        oJVar.f12793so = 1 + j10;
        return j10;
    }

    static /* synthetic */ int jFA(oJ oJVar) {
        int i10 = oJVar.cFZ;
        oJVar.cFZ = i10 - 1;
        return i10;
    }

    private void ex() {
        while (!this.f12792ba) {
            try {
                this.tB.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public tB ZYk() {
        return new tB();
    }

    /* loaded from: classes3.dex */
    public class tB implements SharedPreferences.Editor {
        private final Object ZYk = new Object();
        @GuardedBy("mEditorLock")
        private final Map<String, Object> tB = new HashMap();
        @GuardedBy("mEditorLock")
        private boolean ex = false;

        public tB() {
        }

        private ZYk ZYk() {
            Properties properties;
            long j10;
            Object obj;
            boolean z10;
            synchronized (oJ.this.tB) {
                try {
                    if (oJ.this.cFZ > 0) {
                        Properties properties2 = new Properties();
                        properties2.putAll(oJ.this.Pfn);
                        oJ.this.Pfn = properties2;
                    }
                    properties = oJ.this.Pfn;
                    oJ.Pfn(oJ.this);
                    synchronized (this.ZYk) {
                        boolean z11 = false;
                        if (this.ex) {
                            if (!properties.isEmpty()) {
                                properties.clear();
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            this.ex = false;
                            z11 = z10;
                        }
                        for (Map.Entry<String, Object> entry : this.tB.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            if (value != this && value != null) {
                                if (!properties.containsKey(key) || (obj = properties.get(key)) == null || !obj.equals(String.valueOf(value))) {
                                    properties.put(key, String.valueOf(value));
                                    z11 = true;
                                }
                            }
                            if (properties.containsKey(key)) {
                                properties.remove(key);
                                z11 = true;
                            }
                        }
                        this.tB.clear();
                        if (z11) {
                            oJ.ba(oJ.this);
                        }
                        j10 = oJ.this.f12793so;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return new ZYk(j10, properties);
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            oJ.this.oJ(ZYk(), false);
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            long j10;
            if (oJ.ZYk) {
                j10 = System.currentTimeMillis();
            } else {
                j10 = 0;
            }
            ZYk ZYk = ZYk();
            oJ.this.oJ(ZYk, true);
            try {
                ZYk.tB.await();
                if (oJ.ZYk) {
                    Log.d("TTPropHelper", oJ.this.kkU.getName() + ":" + ZYk.oJ + " committed after " + (System.currentTimeMillis() - j10) + " ms");
                }
                return ZYk.ex;
            } catch (InterruptedException unused) {
                if (oJ.ZYk) {
                    Log.d("TTPropHelper", oJ.this.kkU.getName() + ":" + ZYk.oJ + " committed after " + (System.currentTimeMillis() - j10) + " ms");
                    return false;
                }
                return false;
            } catch (Throwable th2) {
                if (oJ.ZYk) {
                    Log.d("TTPropHelper", oJ.this.kkU.getName() + ":" + ZYk.oJ + " committed after " + (System.currentTimeMillis() - j10) + " ms");
                }
                throw th2;
            }
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: oJ */
        public tB putStringSet(String str, Set<String> set) {
            synchronized (this.ZYk) {
                this.tB.put(str, set == null ? null : new HashSet(set));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: oJ */
        public tB putInt(String str, int i10) {
            synchronized (this.ZYk) {
                this.tB.put(str, Integer.valueOf(i10));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: oJ */
        public tB putLong(String str, long j10) {
            synchronized (this.ZYk) {
                this.tB.put(str, Long.valueOf(j10));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: oJ */
        public tB putFloat(String str, float f10) {
            synchronized (this.ZYk) {
                this.tB.put(str, Float.valueOf(f10));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: oJ */
        public tB putString(String str, String str2) {
            synchronized (this.ZYk) {
                this.tB.put(str, str2);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: oJ */
        public tB putBoolean(String str, boolean z10) {
            synchronized (this.ZYk) {
                this.tB.put(str, Boolean.valueOf(z10));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: oJ */
        public tB remove(String str) {
            synchronized (this.ZYk) {
                this.tB.put(str, this);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: oJ */
        public tB clear() {
            synchronized (this.ZYk) {
                this.ex = true;
            }
            return this;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:64:0x00fc
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* JADX INFO: Access modifiers changed from: private */
    @androidx.annotation.GuardedBy("mWriteLock")
    public void ZYk(com.bytedance.sdk.component.oJ.ZYk r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.oJ.ZYk(com.bytedance.sdk.component.oJ$ZYk, boolean):void");
    }

    public static void oJ(@NotNull InterfaceC0177oJ interfaceC0177oJ) {
        oJ = interfaceC0177oJ;
    }

    @RequiresApi(api = 19)
    public static oJ oJ(@NotNull Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_prop";
        }
        synchronized (oJ.class) {
            try {
                if (BTZ == null) {
                    BTZ = new ArrayMap<>();
                }
                File file = BTZ.get(str);
                if (file == null) {
                    file = new File(context.getFilesDir(), str);
                    BTZ.put(str, file);
                }
                if (PiB == null) {
                    PiB = new ArrayMap<>();
                }
                oJ oJVar = PiB.get(file);
                if (oJVar == null) {
                    oJ oJVar2 = new oJ(file);
                    PiB.put(file, oJVar2);
                    return oJVar2;
                }
                return oJVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static File oJ(File file) {
        return new File(file.getPath() + ".bak");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00d2  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a1 -> B:62:0x00bb). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ() {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.oJ.oJ():void");
    }

    public String oJ(String str, String str2) {
        String property;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        synchronized (this.tB) {
            ex();
            property = this.Pfn.getProperty(str, str2);
        }
        return property;
    }

    public int oJ(String str, int i10) {
        int parseInt;
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        synchronized (this.tB) {
            try {
                try {
                    ex();
                    parseInt = Integer.parseInt(this.Pfn.getProperty(str, String.valueOf(i10)));
                } catch (NumberFormatException e10) {
                    Log.e("TTPropHelper", e10.getMessage());
                    return i10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return parseInt;
    }

    public long oJ(String str, long j10) {
        long parseLong;
        if (TextUtils.isEmpty(str)) {
            return j10;
        }
        synchronized (this.tB) {
            try {
                try {
                    ex();
                    parseLong = Long.parseLong(this.Pfn.getProperty(str, String.valueOf(j10)));
                } catch (NumberFormatException e10) {
                    Log.e("TTPropHelper", e10.getMessage());
                    return j10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return parseLong;
    }

    public float oJ(String str, float f10) {
        float parseFloat;
        if (TextUtils.isEmpty(str)) {
            return f10;
        }
        synchronized (this.tB) {
            try {
                try {
                    ex();
                    parseFloat = Float.parseFloat(this.Pfn.getProperty(str, String.valueOf(f10)));
                } catch (NumberFormatException e10) {
                    Log.e("TTPropHelper", e10.getMessage());
                    return f10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return parseFloat;
    }

    public boolean oJ(String str, boolean z10) {
        boolean parseBoolean;
        if (TextUtils.isEmpty(str)) {
            return z10;
        }
        synchronized (this.tB) {
            try {
                try {
                    ex();
                    parseBoolean = Boolean.parseBoolean(this.Pfn.getProperty(str, String.valueOf(z10)));
                } catch (NumberFormatException e10) {
                    Log.e("TTPropHelper", e10.getMessage());
                    return z10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return parseBoolean;
    }

    public boolean oJ(String str) {
        boolean containsKey;
        synchronized (this.tB) {
            try {
                try {
                    ex();
                    containsKey = this.Pfn.containsKey(str);
                } catch (NumberFormatException e10) {
                    Log.e("TTPropHelper", e10.getMessage());
                    return false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return containsKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final ZYk zYk, final boolean z10) {
        boolean z11;
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (oJ.this.ex) {
                    try {
                        oJ.this.ZYk(zYk, z10);
                    } catch (OutOfMemoryError unused) {
                    }
                }
                synchronized (oJ.this.tB) {
                    oJ.jFA(oJ.this);
                }
            }
        };
        if (z10) {
            synchronized (this.tB) {
                z11 = this.cFZ == 1;
            }
            if (z11) {
                runnable.run();
                return;
            }
        }
        com.bytedance.sdk.component.ZYk.oJ(runnable, true ^ z10);
    }
}
