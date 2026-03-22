package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public final class KZ extends AsyncTask<String, Void, Bitmap[]> implements SM {
    public static byte[] A0A;
    public static String[] A0B = {"", "", "tk2ciTRcvMIsX7PNNAsbqXfz4cjsZNd3", "5z01THRYCfHu8Ay0wH5meUoLhFHMZyns", "VYXg8wObxMc7BeMRrzz5UEer", "1KBjMNFbEleLBxdQS2J3kw1LUfJ9GnIf", "PvEnCL5gthOso5MBRjJGXOGrZMhqPY73", "dw8jODS3DySi5ymezTFU6bMU1A3tjNXQ"};
    public int A00;
    public int A01;
    public InterfaceC1893Zo A02;
    public boolean A03;
    public final int A04;
    public final int A05;
    public final WeakReference<C1890Zl> A06;
    public final WeakReference<C2111dL> A07;
    public final WeakReference<ImageView> A08;
    public final WeakReference<ViewGroup> A09;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 84);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A0A = new byte[]{45, 47, 36, 47, 56, 35, 41};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final Bitmap[] A03(String... strArr) {
        if (AbstractC1788Vl.A02(this)) {
            return null;
        }
        if (A0B[2].charAt(8) != 'z') {
            A0B[2] = "Jzd8uX0XYQJZtrGuhrAJ2cBOXObB1Sdn";
            try {
                String str = strArr[0];
                Bitmap bitmap = null;
                C2111dL c2111dL = this.A07.get();
                String[] strArr2 = A0B;
                if (strArr2[6].charAt(7) != strArr2[5].charAt(7)) {
                    A0B[2] = "bv0UYUwFwYp94NQ105UqaFrunwxSHAuK";
                    if (c2111dL == null) {
                        return new Bitmap[]{null, null};
                    }
                    Bitmap A0O = new SF(c2111dL).A0O(str, this.A00, this.A01);
                    if (A0O != null && !this.A03) {
                        bitmap = XW.A01(c2111dL, A0O, this.A04, this.A05);
                    }
                    return new Bitmap[]{A0O, bitmap};
                }
                throw new RuntimeException();
            } catch (Throwable th2) {
                AbstractC1788Vl.A00(th2, this);
                String[] strArr3 = A0B;
                if (strArr3[7].charAt(9) != strArr3[3].charAt(9)) {
                    A0B[2] = "caPrFgLZt2WaPlUZLvOtKYt7S4BN2jGU";
                    return null;
                }
                return null;
            }
        }
        throw new RuntimeException();
    }

    static {
        A01();
    }

    public KZ(ViewGroup viewGroup, int i10, int i11, C2111dL c2111dL) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c2111dL);
        this.A06 = null;
        this.A08 = null;
        this.A09 = new WeakReference<>(viewGroup);
        this.A04 = i10;
        this.A05 = i11;
    }

    public KZ(ViewGroup viewGroup, C2111dL c2111dL) {
        this(viewGroup, 12, 16, c2111dL);
    }

    public KZ(ImageView imageView, C2111dL c2111dL) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c2111dL);
        this.A06 = null;
        this.A08 = new WeakReference<>(imageView);
        this.A09 = null;
        this.A04 = 0;
        this.A05 = 1;
    }

    public KZ(C1890Zl c1890Zl, C2111dL c2111dL) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c2111dL);
        this.A06 = new WeakReference<>(c1890Zl);
        this.A08 = null;
        this.A09 = null;
        this.A04 = 12;
        this.A05 = 16;
    }

    private final void A02(Bitmap[] bitmapArr) {
        C1890Zl c1890Zl;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            if (this.A08 != null) {
                ImageView imageView = this.A08.get();
                if (bitmapArr[1] != null && !this.A03 && this.A04 != 0 && imageView != null) {
                    imageView.setImageBitmap(bitmapArr[1]);
                    return;
                } else if (imageView != null) {
                    imageView.setImageBitmap(bitmapArr[0]);
                }
            }
            if (this.A06 != null && (c1890Zl = this.A06.get()) != null) {
                c1890Zl.setImage(bitmapArr[0], bitmapArr[1]);
            }
            if (this.A09 != null && this.A09.get() != null && bitmapArr[1] != null) {
                XP.A0Q(this.A09.get(), new BitmapDrawable(this.A07.get().getResources(), bitmapArr[1]));
            }
            if (this.A02 != null) {
                this.A02.ADT(new C1892Zn(bitmapArr[0]));
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }

    public final KZ A04() {
        this.A00 = -1;
        this.A01 = -1;
        return this;
    }

    public final KZ A05(int i10, int i11) {
        this.A00 = i10;
        this.A01 = i11;
        return this;
    }

    public final KZ A06(InterfaceC1893Zo interfaceC1893Zo) {
        this.A02 = interfaceC1893Zo;
        return this;
    }

    public final void A07(String str) {
        if (TextUtils.isEmpty(str)) {
            if (this.A02 != null) {
                this.A02.ADT(new C1892Zn(null));
                return;
            }
            return;
        }
        executeOnExecutor(XU.A06, str);
    }

    @Override // com.facebook.ads.redexgen.X.SM
    public final C2111dL A6e() {
        return this.A07.get();
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Bitmap[] doInBackground(String[] strArr) {
        if (AbstractC1788Vl.A02(this)) {
            return null;
        }
        try {
            return A03(strArr);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Bitmap[] bitmapArr) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            A02(bitmapArr);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
