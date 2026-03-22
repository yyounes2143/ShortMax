package com.bytedance.sdk.component.Pfn.tB;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import com.bytedance.sdk.component.Pfn.RZ;
import com.bytedance.sdk.component.Pfn.WcQ;
import com.bytedance.sdk.component.Pfn.dLZ;
import com.bytedance.sdk.component.Pfn.eZI;
import com.bytedance.sdk.component.Pfn.jFA;
import com.bytedance.sdk.component.Pfn.kkU;
import com.bytedance.sdk.component.Pfn.oq;
import com.bytedance.sdk.component.Pfn.so;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes3.dex */
public class tB implements jFA {
    private WeakReference<ImageView> BTZ;
    private int HL;
    private boolean IUZ;
    private int Id;
    private ExecutorService Ln;
    private boolean LpP;
    private eZI Pfn;
    private volatile boolean PiB;
    private boolean QSm;
    private final Handler RZ;
    private Queue<com.bytedance.sdk.component.Pfn.Pfn.jFA> Ry;
    private boolean WcQ;
    private com.bytedance.sdk.component.Pfn.ZYk Xe;
    private String ZYk;
    private boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    private ImageView.ScaleType f12593ba;
    private Bitmap.Config cFZ;
    private ba cY;
    private int dLZ;
    private RZ eZI;
    private String ex;
    private int jFA;

    /* renamed from: jr  reason: collision with root package name */
    private com.bytedance.sdk.component.Pfn.tB.oJ f12594jr;
    private so kkU;
    private WcQ nke;
    Future<?> oJ;

    /* renamed from: oq  reason: collision with root package name */
    private com.bytedance.sdk.component.Pfn.cFZ f12595oq;

    /* renamed from: si  reason: collision with root package name */
    private int f12596si;

    /* renamed from: so  reason: collision with root package name */
    private int f12597so;
    private String tB;

    /* renamed from: tb  reason: collision with root package name */
    private int f12598tb;

    /* loaded from: classes3.dex */
    public static class ZYk implements kkU {
        private boolean BTZ;
        private boolean Id;
        private ImageView.ScaleType Pfn;
        private boolean PiB;
        private boolean QSm;
        private int RZ;
        private int Ry;
        private String WcQ;
        private ImageView ZYk;
        private com.bytedance.sdk.component.Pfn.ZYk awB;

        /* renamed from: ba  reason: collision with root package name */
        private Bitmap.Config f12599ba;
        private int cFZ;
        private WcQ cY;
        private RZ dLZ;
        private ba eZI;
        private String ex;
        private int jFA = 1;
        private int kkU = 5;
        private eZI oJ;

        /* renamed from: oq  reason: collision with root package name */
        private ExecutorService f12600oq;

        /* renamed from: si  reason: collision with root package name */
        private so f12601si;

        /* renamed from: so  reason: collision with root package name */
        private int f12602so;
        private String tB;

        public ZYk(ba baVar) {
            this.eZI = baVar;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU Pfn(int i10) {
            this.RZ = i10;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU ZYk(int i10) {
            this.f12602so = i10;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU ex(int i10) {
            this.Ry = i10;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU oJ(String str) {
            this.tB = str;
            return this;
        }

        public kkU tB(String str) {
            this.ex = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU ZYk(String str) {
            this.WcQ = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU oJ(ImageView.ScaleType scaleType) {
            this.Pfn = scaleType;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU tB(int i10) {
            this.jFA = i10;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU oJ(Bitmap.Config config) {
            this.f12599ba = config;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU oJ(int i10) {
            this.cFZ = i10;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU oJ(RZ rz) {
            this.dLZ = rz;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU oJ(boolean z10) {
            this.PiB = z10;
            return this;
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public jFA oJ(eZI ezi, int i10) {
            this.kkU = i10;
            return oJ(ezi);
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public jFA oJ(eZI ezi) {
            this.oJ = ezi;
            return new tB(this).cY();
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public jFA oJ(ImageView imageView) {
            this.ZYk = imageView;
            return new tB(this).cY();
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU oJ(so soVar) {
            this.f12601si = soVar;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    private class oJ implements eZI {
        private eZI ZYk;

        public oJ(eZI ezi) {
            this.ZYk = ezi;
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(final dLZ dlz) {
            Bitmap oJ;
            final ImageView imageView = (ImageView) tB.this.BTZ.get();
            if (imageView != null && tB.this.dLZ != 3 && oJ(imageView) && (dlz.ZYk() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) dlz.ZYk();
                tB.this.RZ.post(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.tB.tB.oJ.1
                    @Override // java.lang.Runnable
                    public void run() {
                        imageView.setImageBitmap(bitmap);
                    }
                });
            }
            try {
                if (tB.this.kkU != null && (dlz.ZYk() instanceof Bitmap) && (oJ = tB.this.kkU.oJ((Bitmap) dlz.ZYk())) != null) {
                    dlz.oJ(oJ);
                }
            } catch (Throwable unused) {
            }
            if (tB.this.f12596si == 5) {
                tB.this.RZ.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.tB.tB.oJ.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (oJ.this.ZYk != null) {
                            oJ.this.ZYk.oJ(dlz);
                        }
                    }
                });
                return;
            }
            eZI ezi = this.ZYk;
            if (ezi != null) {
                ezi.oJ(dlz);
            }
        }

        private boolean oJ(ImageView imageView) {
            Object tag;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(tB.this.tB)) ? false : true;
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(final int i10, final String str, final Throwable th2) {
            if (tB.this.f12596si == 5) {
                tB.this.RZ.post(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.tB.tB.oJ.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (oJ.this.ZYk != null) {
                            oJ.this.ZYk.oJ(i10, str, th2);
                        }
                    }
                });
                return;
            }
            eZI ezi = this.ZYk;
            if (ezi != null) {
                ezi.oJ(i10, str, th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public jFA cY() {
        ExecutorService executorService;
        try {
            executorService = null;
        } catch (Exception e10) {
            Log.e("ImageRequest", e10.getMessage());
        }
        if (this.cY == null) {
            eZI ezi = this.Pfn;
            if (ezi != null) {
                ezi.oJ(1005, "not init !", null);
            }
            return this;
        }
        String oJ2 = oJ();
        if (TextUtils.isEmpty(oJ2)) {
            eZI ezi2 = this.Pfn;
            if (ezi2 != null) {
                ezi2.oJ(2000, "url is empty", null);
            }
            return this;
        }
        oq Pfn = this.cY.Pfn();
        if (!oJ2.startsWith("http://") && !oJ2.startsWith("https://") && Pfn != null) {
            Pfn.oJ(1006, "url is not validate ".concat(oJ2));
        }
        if (this.Ln == null) {
            executorService = this.cY.cFZ();
        }
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.Pfn.tB.tB.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.Pfn.Pfn.jFA jfa;
                while (!tB.this.PiB && (jfa = (com.bytedance.sdk.component.Pfn.Pfn.jFA) tB.this.Ry.poll()) != null) {
                    try {
                        if (tB.this.eZI != null) {
                            tB.this.eZI.oJ(jfa.oJ(), tB.this);
                        }
                        jfa.oJ(tB.this);
                        if (tB.this.eZI != null) {
                            tB.this.eZI.ZYk(jfa.oJ(), tB.this);
                        }
                    } catch (Throwable th2) {
                        tB.this.oJ(2000, th2.getMessage(), th2);
                        if (tB.this.eZI != null) {
                            tB.this.eZI.ZYk("exception", tB.this);
                            return;
                        }
                        return;
                    }
                }
                if (tB.this.PiB) {
                    tB.this.oJ(1003, "canceled", null);
                }
            }
        };
        if (this.LpP) {
            runnable.run();
        } else {
            ExecutorService executorService2 = this.Ln;
            if (executorService2 != null) {
                this.oJ = executorService2.submit(runnable);
            } else if (executorService != null) {
                this.oJ = executorService.submit(runnable);
            }
        }
        return this;
    }

    public int BTZ() {
        return this.dLZ;
    }

    public String Id() {
        return kkU() + BTZ();
    }

    public boolean PiB() {
        return this.WcQ;
    }

    public boolean QSm() {
        return this.IUZ;
    }

    public com.bytedance.sdk.component.Pfn.ZYk RZ() {
        return this.Xe;
    }

    public ba Ry() {
        return this.cY;
    }

    public boolean WcQ() {
        return this.awB;
    }

    public boolean awB() {
        return this.QSm;
    }

    public Bitmap.Config dLZ() {
        return this.cFZ;
    }

    public com.bytedance.sdk.component.Pfn.cFZ eZI() {
        return this.f12595oq;
    }

    public WcQ oq() {
        return this.nke;
    }

    public int si() {
        return this.Id;
    }

    private tB(ZYk zYk) {
        this.Ry = new LinkedBlockingQueue();
        this.RZ = new Handler(Looper.getMainLooper());
        this.QSm = true;
        this.ZYk = zYk.ex;
        this.Pfn = new oJ(zYk.oJ);
        this.BTZ = new WeakReference<>(zYk.ZYk);
        this.f12593ba = zYk.Pfn;
        this.cFZ = zYk.f12599ba;
        this.f12597so = zYk.cFZ;
        this.jFA = zYk.f12602so;
        this.dLZ = zYk.jFA;
        this.f12596si = zYk.kkU;
        this.eZI = zYk.dLZ;
        this.Xe = oJ(zYk);
        if (!TextUtils.isEmpty(zYk.tB)) {
            ZYk(zYk.tB);
            oJ(zYk.tB);
        }
        this.WcQ = zYk.BTZ;
        this.awB = zYk.PiB;
        this.cY = zYk.eZI;
        this.kkU = zYk.f12601si;
        this.HL = zYk.RZ;
        this.f12598tb = zYk.Ry;
        this.Ln = zYk.f12600oq;
        this.IUZ = zYk.QSm;
        this.LpP = zYk.Id;
        this.nke = zYk.cY;
        this.Ry.add(new com.bytedance.sdk.component.Pfn.Pfn.tB());
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public Bitmap.Config Pfn() {
        return this.cFZ;
    }

    public void ZYk(String str) {
        WeakReference<ImageView> weakReference = this.BTZ;
        if (weakReference != null && weakReference.get() != null) {
            this.BTZ.get().setTag(1094453505, str);
        }
        this.tB = str;
    }

    public int ba() {
        return this.f12598tb;
    }

    public int cFZ() {
        return this.HL;
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public ImageView.ScaleType ex() {
        return this.f12593ba;
    }

    public String jFA() {
        return this.ex;
    }

    public String kkU() {
        return this.tB;
    }

    public eZI so() {
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public int tB() {
        return this.jFA;
    }

    private com.bytedance.sdk.component.Pfn.ZYk oJ(ZYk zYk) {
        if (zYk.awB != null) {
            return zYk.awB;
        }
        if (!TextUtils.isEmpty(zYk.WcQ)) {
            return com.bytedance.sdk.component.Pfn.tB.oJ.oJ.oJ(new File(zYk.WcQ));
        }
        return com.bytedance.sdk.component.Pfn.tB.oJ.oJ.kkU();
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public int ZYk() {
        return this.f12597so;
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public String oJ() {
        return this.ZYk;
    }

    public void oJ(String str) {
        this.ex = str;
    }

    public void oJ(boolean z10) {
        this.QSm = z10;
    }

    public void oJ(com.bytedance.sdk.component.Pfn.cFZ cfz) {
        this.f12595oq = cfz;
    }

    public void oJ(int i10) {
        this.Id = i10;
    }

    public void oJ(com.bytedance.sdk.component.Pfn.tB.oJ oJVar) {
        this.f12594jr = oJVar;
    }

    public boolean oJ(com.bytedance.sdk.component.Pfn.Pfn.jFA jfa) {
        if (this.PiB) {
            return false;
        }
        return this.Ry.add(jfa);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10, String str, Throwable th2) {
        new com.bytedance.sdk.component.Pfn.Pfn.so(i10, str, th2).oJ(this);
        this.Ry.clear();
    }
}
