package com.bytedance.sdk.component.Pfn.ex.tB;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
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
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* loaded from: classes3.dex */
public class tB implements jFA {
    private WeakReference<ImageView> BTZ;
    private boolean HL;
    private WcQ IUZ;
    private ba Id;
    private byte[] Ln;
    private eZI Pfn;
    private volatile boolean PiB;
    private com.bytedance.sdk.component.Pfn.cFZ QSm;
    private boolean RZ;
    private final Handler Ry;
    private boolean WcQ;
    private int Xe;
    private String ZYk;
    private boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    private ImageView.ScaleType f12566ba;
    private Bitmap.Config cFZ;
    private com.bytedance.sdk.component.Pfn.ZYk cY;
    private int dLZ;
    private RZ eZI;
    private String ex;
    private int jFA;

    /* renamed from: jr  reason: collision with root package name */
    private int f12567jr;
    private so kkU;
    Future<?> oJ;

    /* renamed from: oq  reason: collision with root package name */
    private int f12568oq;

    /* renamed from: si  reason: collision with root package name */
    private int f12569si;

    /* renamed from: so  reason: collision with root package name */
    private int f12570so;
    private String tB;

    /* renamed from: tb  reason: collision with root package name */
    private ExecutorService f12571tb;

    /* loaded from: classes3.dex */
    public static class ZYk implements kkU {
        private boolean BTZ;
        private WcQ Id;
        private ImageView.ScaleType Pfn;
        private boolean PiB;
        private ExecutorService QSm;
        private int RZ;
        private int Ry;
        private String WcQ;
        private ImageView ZYk;
        private com.bytedance.sdk.component.Pfn.ZYk awB;

        /* renamed from: ba  reason: collision with root package name */
        private Bitmap.Config f12572ba;
        private int cFZ;
        private RZ dLZ;
        private ba eZI;
        private String ex;
        private int jFA = 1;
        private int kkU = 5;
        private eZI oJ;

        /* renamed from: oq  reason: collision with root package name */
        private boolean f12573oq;

        /* renamed from: si  reason: collision with root package name */
        private so f12574si;

        /* renamed from: so  reason: collision with root package name */
        private int f12575so;
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
            this.f12575so = i10;
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
            this.f12572ba = config;
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
            return new tB(this).oq();
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public jFA oJ(ImageView imageView) {
            this.ZYk = imageView;
            return new tB(this).oq();
        }

        @Override // com.bytedance.sdk.component.Pfn.kkU
        public kkU oJ(so soVar) {
            this.f12574si = soVar;
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
            if (imageView != null && tB.this.dLZ != 3 && oJ(imageView)) {
                Object ZYk = dlz.ZYk();
                if (ZYk instanceof Bitmap) {
                    final Bitmap bitmap = (Bitmap) dlz.ZYk();
                    tB.this.Ry.post(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.ex.tB.tB.oJ.1
                        @Override // java.lang.Runnable
                        public void run() {
                            imageView.setImageBitmap(bitmap);
                        }
                    });
                } else if (ZYk instanceof Drawable) {
                    final Drawable drawable = (Drawable) dlz.ZYk();
                    tB.this.Ry.post(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.ex.tB.tB.oJ.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
                                c.a(drawable).start();
                            }
                            imageView.setImageDrawable(drawable);
                        }
                    });
                }
            }
            try {
                if (tB.this.kkU != null && (dlz.ZYk() instanceof Bitmap) && (oJ = tB.this.kkU.oJ((Bitmap) dlz.ZYk())) != null) {
                    dlz.oJ(oJ);
                }
            } catch (Throwable unused) {
            }
            if (tB.this.f12569si == 5) {
                tB.this.Ry.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.ex.tB.tB.oJ.3
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
            if (tB.this.f12569si == 5) {
                tB.this.Ry.post(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.ex.tB.tB.oJ.4
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
    public jFA oq() {
        ExecutorService executorService;
        try {
            executorService = null;
        } catch (Exception e10) {
            Log.e("ImageRequest", e10.getMessage());
        }
        if (this.Id == null) {
            eZI ezi = this.Pfn;
            if (ezi != null) {
                ezi.oJ(1005, "not init !", null);
            }
            return this;
        }
        String oJ2 = oJ();
        if (TextUtils.isEmpty(oJ2)) {
            this.Pfn.oJ(2000, "url is empty", null);
            return this;
        }
        oq ba2 = this.Id.ba();
        if (!oJ2.startsWith("http://") && !oJ2.startsWith("https://") && ba2 != null) {
            ba2.oJ(1006, "url is not validate ".concat(oJ2));
        }
        if (this.f12571tb == null) {
            executorService = this.Id.Pfn();
        }
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.Pfn.ex.tB.tB.1
            @Override // java.lang.Runnable
            public void run() {
                tB tBVar = tB.this;
                com.bytedance.sdk.component.Pfn.ex.tB.oJ oJVar = new com.bytedance.sdk.component.Pfn.ex.tB.oJ(tBVar, tBVar.eZI);
                try {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new com.bytedance.sdk.component.Pfn.ex.ZYk.ZYk());
                    arrayList.add(new com.bytedance.sdk.component.Pfn.ex.ZYk.Pfn());
                    arrayList.add(new com.bytedance.sdk.component.Pfn.ex.ZYk.oJ());
                    arrayList.add(new com.bytedance.sdk.component.Pfn.ex.ZYk.tB());
                    arrayList.add(new com.bytedance.sdk.component.Pfn.ex.ZYk.ex());
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        if (tB.this.PiB) {
                            oJVar.oJ(1003, "canceled", null);
                            return;
                        }
                        com.bytedance.sdk.component.Pfn.ex.ZYk.ba baVar = (com.bytedance.sdk.component.Pfn.ex.ZYk.ba) arrayList.get(i10);
                        if (tB.this.eZI != null && baVar != null && !"data_intercept".equals(baVar.oJ())) {
                            tB.this.eZI.oJ(baVar.oJ(), tB.this);
                        }
                        tB tBVar2 = tB.this;
                        boolean oJ3 = baVar.oJ(tBVar2, tBVar2.eZI, oJVar);
                        if (tB.this.eZI != null && !"data_intercept".equals(baVar.oJ())) {
                            tB.this.eZI.ZYk(baVar.oJ(), tB.this);
                        }
                        if (!oJ3) {
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    oJVar.oJ(2000, th2.getMessage(), th2);
                }
            }
        };
        if (this.HL) {
            runnable.run();
        } else {
            ExecutorService executorService2 = this.f12571tb;
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

    public boolean PiB() {
        return this.RZ;
    }

    public String QSm() {
        return kkU() + BTZ();
    }

    public WcQ RZ() {
        return this.IUZ;
    }

    public com.bytedance.sdk.component.Pfn.ZYk Ry() {
        return this.cY;
    }

    public byte[] WcQ() {
        return this.Ln;
    }

    public com.bytedance.sdk.component.Pfn.cFZ awB() {
        return this.QSm;
    }

    public Bitmap.Config dLZ() {
        return this.cFZ;
    }

    public int eZI() {
        return this.f12568oq;
    }

    public String kkU() {
        return this.tB;
    }

    public ba si() {
        return this.Id;
    }

    private tB(ZYk zYk) {
        this.Ry = new Handler(Looper.getMainLooper());
        this.RZ = true;
        this.Ln = null;
        this.ZYk = zYk.ex;
        this.Pfn = new oJ(zYk.oJ);
        this.BTZ = new WeakReference<>(zYk.ZYk);
        this.f12566ba = zYk.Pfn;
        this.cFZ = zYk.f12572ba;
        this.f12570so = zYk.cFZ;
        this.jFA = zYk.f12575so;
        this.dLZ = zYk.jFA;
        this.f12569si = zYk.kkU;
        this.eZI = zYk.dLZ;
        this.cY = oJ(zYk);
        if (!TextUtils.isEmpty(zYk.tB)) {
            ZYk(zYk.tB);
            oJ(zYk.tB);
        }
        this.WcQ = zYk.BTZ;
        this.awB = zYk.PiB;
        this.Id = zYk.eZI;
        this.kkU = zYk.f12574si;
        this.Xe = zYk.RZ;
        this.f12567jr = zYk.Ry;
        this.f12571tb = zYk.QSm;
        this.HL = zYk.f12573oq;
        this.IUZ = zYk.Id;
    }

    private com.bytedance.sdk.component.Pfn.ZYk oJ(ZYk zYk) {
        if (zYk.awB != null) {
            return zYk.awB;
        }
        if (!TextUtils.isEmpty(zYk.WcQ)) {
            return com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.oJ(new File(zYk.WcQ));
        }
        return com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.kkU();
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
        return this.f12567jr;
    }

    public int cFZ() {
        return this.Xe;
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public ImageView.ScaleType ex() {
        return this.f12566ba;
    }

    public String jFA() {
        return this.ex;
    }

    public eZI so() {
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public int tB() {
        return this.jFA;
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public int ZYk() {
        return this.f12570so;
    }

    @Override // com.bytedance.sdk.component.Pfn.jFA
    public String oJ() {
        return this.ZYk;
    }

    public void oJ(String str) {
        this.ex = str;
    }

    public void oJ(boolean z10) {
        this.RZ = z10;
    }

    public void oJ(byte[] bArr) {
        this.Ln = bArr;
    }

    public void oJ(int i10) {
        this.f12568oq = i10;
    }
}
